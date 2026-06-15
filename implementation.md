# CardScan AI — Product Requirements Document (PRD)
**Version:** 1.0.0  
**Status:** Draft → POC Phase  
**Last Updated:** June 2026  
**Author:** Product Team  
**Classification:** Internal — Confidential

---

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [Problem Statement](#2-problem-statement)
3. [Goals & Success Metrics](#3-goals--success-metrics)
4. [Target Users & Personas](#4-target-users--personas)
5. [Product Scope](#5-product-scope)
6. [System Architecture Overview](#6-system-architecture-overview)
7. [Core Features & Functional Requirements](#7-core-features--functional-requirements)
8. [OCR Engine & AI Pipeline](#8-ocr-engine--ai-pipeline)
9. [Dynamic Database Schema](#9-dynamic-database-schema)
10. [Card Type Definitions](#10-card-type-definitions)
11. [UI/UX Requirements](#11-uiux-requirements)
12. [Offline-First Architecture](#12-offline-first-architecture)
13. [Non-Functional Requirements](#13-non-functional-requirements)
14. [Tech Stack](#14-tech-stack)
15. [POC Deliverables & Milestones](#15-poc-deliverables--milestones)
16. [Scalability Roadmap](#16-scalability-roadmap)
17. [Risk Register](#17-risk-register)
18. [Open Questions](#18-open-questions)

---

## 1. Executive Summary

**CardScan AI** is a masterclass-grade, offline-first Flutter mobile application that uses on-device OCR (Optical Character Recognition) combined with an intelligent AI parsing layer to extract structured data from any physical card — business cards, visiting cards, wedding invitation cards, Aadhaar cards, PAN cards, driving licences, and more.

The app is built as a **POC (Proof of Concept) with production-grade architecture**, meaning every decision made during the POC phase must not block future scaling. The system dynamically learns new fields over time, auto-enriching its own database schema as it encounters card types and fields it hasn't seen before.

**Core Differentiator:** Unlike standard OCR apps that expect fixed card formats, CardScan AI treats every card as a unique document, intelligently classifies the card type, then maps extracted text to a structured, evolving schema — all 100% offline.

---

## 2. Problem Statement

### Current Pain Points

| Pain Point | Impact |
|---|---|
| Manual data entry from physical cards | Time-consuming, error-prone |
| Existing OCR apps assume fixed card formats | Fails on non-standard or Indian cards (Aadhaar, vernacular text) |
| Cloud-based OCR tools require internet connectivity | Unavailable in low-connectivity environments |
| No intelligent field classification | Raw text dump, no structure |
| Static schemas break when new card types arrive | Rigid, hard to maintain |
| Front + back scanning not supported in most apps | Misses critical information |

### The Opportunity

India has a massive and diverse physical card ecosystem — from standard corporate business cards to handcrafted wedding invitations to government-issued identity documents. No single app handles all of these intelligently, offline, and with a dynamic schema. This is the gap CardScan AI fills.

---

## 3. Goals & Success Metrics

### Primary Goals

- **G1:** Successfully extract structured data from any card with ≥ 90% field accuracy
- **G2:** Complete end-to-end card scan + data extraction in under 8 seconds on a mid-range Android device
- **G3:** Work fully offline with zero dependency on any cloud service
- **G4:** Support front + back scanning with automatic data merging
- **G5:** Dynamically grow the database schema based on new card fields encountered

### Success Metrics (POC Phase)

| Metric | Target |
|---|---|
| OCR text extraction accuracy | ≥ 95% on clean cards |
| Field classification accuracy | ≥ 88% across all card types |
| End-to-end scan time (P90) | ≤ 8 seconds |
| App crash rate | < 0.5% |
| Dynamic field detection rate | ≥ 75% of novel fields auto-tagged |
| User satisfaction (internal testers) | ≥ 4.2 / 5.0 |

---

## 4. Target Users & Personas

### Persona 1 — The Sales Professional
**Rahul, 31, B2B Sales Executive, Tier-1 City**
- Collects 10–20 business cards at every event
- Wants to instantly save contacts without typing
- Needs professional data like company, designation, LinkedIn
- Pain: Card details get lost, manual entry is slow

### Persona 2 — The Event Organizer
**Priya, 28, Wedding Planner, Tier-2 City**
- Scans wedding invitation cards to build guest databases
- Needs address, family name, date, venue
- Works in venues with poor connectivity
- Pain: No app understands wedding card formats

### Persona 3 — The Government Officer / NGO Worker
**Suresh, 45, Field Officer, Rural India**
- Needs to register beneficiaries using Aadhaar cards
- Works in areas with zero internet
- Needs name, DOB, address, Aadhaar number
- Pain: Manual data entry causes errors in beneficiary records

### Persona 4 — The Developer (Internal)
**You — the builder**
- Needs a scalable, clean architecture
- Wants to add new card types without breaking existing code
- Needs the POC to be production-extensible from day one

---

## 5. Product Scope

### In Scope — POC

- Flutter mobile app (Android primary, iOS secondary)
- Camera capture: front side + back side of card
- On-device OCR using ML Kit / Tesseract
- AI-based field classification (on-device NLP model)
- Dynamic database schema (SQLite + Drift ORM)
- Card type auto-detection: Business, Visiting, Wedding, Aadhaar
- Contact export (vCard / JSON)
- Basic search and card list view
- Manual field editing after scan

### Out of Scope — POC (Future Phases)

- Cloud sync / backup
- Multi-language OCR beyond English + Hindi (Phase 2)
- CRM integration (Salesforce, HubSpot)
- Team sharing / collaboration
- NFC card reading
- AR overlays on cards

---

## 6. System Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                        Flutter UI Layer                         │
│  Camera Screen → Preview → Field Editor → Card Detail View     │
└─────────────────────────┬───────────────────────────────────────┘
                          │
┌─────────────────────────▼───────────────────────────────────────┐
│                    Core Processing Pipeline                      │
│                                                                  │
│  [Image Capture] → [Image Preprocessing] → [OCR Engine]        │
│        │                                        │               │
│  [Front Frame]                         [Raw Text Blocks]        │
│  [Back Frame]                                   │               │
│        │                          [Card Type Classifier]        │
│        │                                   │                    │
│        │                     [Field Extraction Engine]          │
│        │                                   │                    │
│        └──────────────────►[Data Merger (Front+Back)]          │
│                                            │                    │
│                            [Confidence Scorer]                  │
│                                            │                    │
│                         [Dynamic Schema Updater]               │
└─────────────────────────┬───────────────────────────────────────┘
                          │
┌─────────────────────────▼───────────────────────────────────────┐
│                    Offline Data Layer                            │
│                                                                  │
│         SQLite (via Drift ORM)  +  Hive (fast cache)           │
│                                                                  │
│   ┌──────────┐  ┌──────────┐  ┌───────────┐  ┌────────────┐  │
│   │  cards   │  │  fields  │  │field_defs │  │  scan_logs │  │
│   └──────────┘  └──────────┘  └───────────┘  └────────────┘  │
└─────────────────────────────────────────────────────────────────┘
```

### Architecture Principles

1. **Offline-First**: Every feature must work without any internet connection
2. **Pipeline-Based**: Each processing step is a self-contained, testable unit
3. **Plugin-Based Card Types**: New card types added via configuration, not code changes
4. **Schema-Agnostic Storage**: Dynamic key-value field storage alongside typed core fields
5. **Clean Architecture**: Domain / Data / Presentation layers strictly separated

---

## 7. Core Features & Functional Requirements

### FR-01: Dual-Side Card Scanning

| ID | Requirement | Priority |
|---|---|---|
| FR-01.1 | User can capture front side of card using camera | P0 |
| FR-01.2 | User can capture back side of card using camera | P0 |
| FR-01.3 | Both images stored locally before processing | P0 |
| FR-01.4 | User can retake either side independently | P0 |
| FR-01.5 | Scan can proceed with only front side (back is optional) | P1 |
| FR-01.6 | Real-time camera guide overlay (card boundary detection) | P1 |

### FR-02: OCR Text Extraction

| ID | Requirement | Priority |
|---|---|---|
| FR-02.1 | Extract all text from front image | P0 |
| FR-02.2 | Extract all text from back image | P0 |
| FR-02.3 | Preserve spatial layout (bounding boxes per text block) | P0 |
| FR-02.4 | Support English text | P0 |
| FR-02.5 | Support Hindi / Devanagari text (Aadhaar cards) | P1 |
| FR-02.6 | Handle rotated / skewed card images via preprocessing | P1 |
| FR-02.7 | Handle low-light / blurry images with graceful fallback | P2 |

### FR-03: Card Type Classification

| ID | Requirement | Priority |
|---|---|---|
| FR-03.1 | Auto-detect card type (Business / Visiting / Wedding / Aadhaar / Unknown) | P0 |
| FR-03.2 | Show detected card type to user with option to override | P0 |
| FR-03.3 | Classification based on visual layout + keyword signals | P0 |
| FR-03.4 | Confidence score per classification | P1 |

### FR-04: Intelligent Field Extraction

| ID | Requirement | Priority |
|---|---|---|
| FR-04.1 | Extract Name (full name, normalized) | P0 |
| FR-04.2 | Extract Phone numbers (all formats, multiple) | P0 |
| FR-04.3 | Extract Email addresses | P0 |
| FR-04.4 | Extract Company / Organisation name | P0 |
| FR-04.5 | Extract Designation / Job Title | P0 |
| FR-04.6 | Extract Website / URL | P0 |
| FR-04.7 | Extract Physical Address (multi-line) | P0 |
| FR-04.8 | Extract Aadhaar Number (masked and full) | P0 |
| FR-04.9 | Extract Date of Birth | P1 |
| FR-04.10 | Extract Gender | P1 |
| FR-04.11 | Extract Wedding date, venue, couple names | P1 |
| FR-04.12 | Extract Social media handles (LinkedIn, Instagram, etc.) | P1 |
| FR-04.13 | Extract QR code / barcode data if present | P2 |
| FR-04.14 | Extract any unknown/novel fields with auto-tagging | P1 |

### FR-05: Dynamic Schema Management

| ID | Requirement | Priority |
|---|---|---|
| FR-05.1 | Core fields defined at app install time | P0 |
| FR-05.2 | Unknown fields stored as dynamic key-value pairs | P0 |
| FR-05.3 | When a new field appears 3+ times, auto-promote to named field | P1 |
| FR-05.4 | Admin view showing all dynamic fields seen (dev mode) | P2 |
| FR-05.5 | User can manually label any extracted text block as a field | P1 |

### FR-06: Data Review & Editing

| ID | Requirement | Priority |
|---|---|---|
| FR-06.1 | After scan, show extracted fields in editable form | P0 |
| FR-06.2 | Show confidence score per field (colour coded) | P1 |
| FR-06.3 | Highlight low-confidence fields for user review | P1 |
| FR-06.4 | Allow user to tap any extracted field to edit | P0 |
| FR-06.5 | Allow adding manually typed fields | P1 |

### FR-07: Card Management

| ID | Requirement | Priority |
|---|---|---|
| FR-07.1 | Save scanned card to local database | P0 |
| FR-07.2 | View all saved cards in a list/grid | P0 |
| FR-07.3 | Search cards by any field | P0 |
| FR-07.4 | Filter cards by card type | P1 |
| FR-07.5 | Delete a card | P0 |
| FR-07.6 | Export card as vCard (.vcf) | P1 |
| FR-07.7 | Export card as JSON | P2 |
| FR-07.8 | Thumbnail of scanned card shown in list | P1 |

---

## 8. OCR Engine & AI Pipeline

### 8.1 Image Preprocessing Pipeline

Before OCR, every image goes through a standardized preprocessing pipeline:

```
Raw Camera Image
      │
      ▼
[1] Resize to max 2048px (preserve aspect ratio)
      │
      ▼
[2] Auto-rotation (EXIF correction)
      │
      ▼
[3] Perspective Correction (card boundary detection using edge detection)
      │
      ▼
[4] Contrast Enhancement (CLAHE algorithm)
      │
      ▼
[5] Noise Reduction (Gaussian blur for clean edges)
      │
      ▼
[6] Binarization (Adaptive threshold — handles shadows)
      │
      ▼
Preprocessed Image → OCR Engine
```

**Library:** `image` package + `opencv_dart` (if available) or custom isolate-based processing.

### 8.2 OCR Engine Selection

| Engine | Accuracy | Speed | Offline | Hindi Support | Verdict |
|---|---|---|---|---|---|
| **Google ML Kit Text Recognition v2** | ★★★★★ | ★★★★★ | ✅ | ✅ (Latin + Devanagari) | **Primary** |
| Tesseract (via `flutter_tesseract_ocr`) | ★★★☆☆ | ★★★☆☆ | ✅ | ✅ | Fallback |
| Google ML Kit (fallback mode) | ★★★★☆ | ★★★★☆ | ✅ | ✅ | Secondary |

**Decision:** Google ML Kit Text Recognition v2 as primary. Tesseract as a fallback when ML Kit confidence is below threshold.

### 8.3 Card Type Classifier

**Approach:** Rule-based classifier with keyword heuristics + layout signals.

```dart
// Pseudo-logic
CardType classifyCard(List<TextBlock> blocks) {
  final text = blocks.map((b) => b.text.toLowerCase()).join(' ');

  if (containsAadhaarPattern(text))      return CardType.aadhaar;
  if (containsWeddingKeywords(text))     return CardType.wedding;
  if (containsDesignationKeywords(text)) return CardType.business;
  if (containsPersonalContact(text))     return CardType.visiting;
  return CardType.unknown;
}
```

**Classifier signals:**

| Card Type | Keywords / Patterns |
|---|---|
| Aadhaar | "aadhaar", "uid", 12-digit number pattern, "government of india", Devanagari script |
| Business | Designation words (CEO, Manager, Engineer), company suffixes (Pvt Ltd, LLC, Inc) |
| Wedding | "shubh vivah", "wedding", "cordially invite", "barat", groom/bride names format |
| Visiting | Personal name + phone + area (no clear company) |
| PAN Card | "permanent account number", 10-char alphanumeric |

### 8.4 Field Extraction Engine

**Per-card-type extractors, each implementing a common interface:**

```dart
abstract class CardFieldExtractor {
  CardType get supportedType;
  Future<ExtractedCard> extract(List<TextBlock> blocks, CardType type);
}
```

**Extraction strategies per field type:**

| Field | Strategy |
|---|---|
| Phone | Regex: handles `+91`, `(022)`, spaces, dashes; extract all matches |
| Email | RFC 5322 compliant regex |
| URL | Protocol-aware regex; also matches `www.` without protocol |
| Aadhaar No. | 12-digit pattern with optional spaces every 4 digits |
| Name | Positional heuristic: largest font block on front side (ML Kit provides font size hints) + NLP disambiguation |
| Company | Known suffix list + proximity to designation field |
| Designation | Keyword dictionary (500+ designations) |
| Address | Multi-line heuristic: pin code anchor, state name list |
| DOB | Multiple date format regex: DD/MM/YYYY, DD-MM-YY, "Born:", etc. |

### 8.5 Front + Back Data Merger

After extracting from both sides independently:

```
Front Extracted Fields  +  Back Extracted Fields
           │                         │
           └──────────┬──────────────┘
                      ▼
           [Conflict Resolution]
           - If same field found on both sides:
             → Keep higher confidence value
           - If complementary fields:
             → Merge into single record
           - Address often on back:
             → Append to front's partial address
                      │
                      ▼
              Final Merged Card Record
```

### 8.6 Confidence Scoring

Every extracted field gets a confidence score `0.0 → 1.0`:

| Score | Colour | Meaning |
|---|---|---|
| 0.85 – 1.0 | 🟢 Green | High confidence, auto-accepted |
| 0.60 – 0.84 | 🟡 Yellow | Medium confidence, shown to user for review |
| 0.00 – 0.59 | 🔴 Red | Low confidence, user must confirm |

---

## 9. Dynamic Database Schema

### 9.1 Philosophy

The database has two layers:
- **Core Schema**: Fixed, typed columns for well-known fields (name, phone, email, etc.)
- **Dynamic Schema**: A flexible EAV (Entity-Attribute-Value) table for unknown or novel fields

### 9.2 Core Tables

```sql
-- Card master record
CREATE TABLE cards (
  id            TEXT PRIMARY KEY,       -- UUID
  card_type     TEXT NOT NULL,          -- 'business' | 'visiting' | 'wedding' | 'aadhaar' | 'unknown'
  scan_date     INTEGER NOT NULL,       -- Unix timestamp
  front_image   TEXT,                   -- Local file path
  back_image    TEXT,                   -- Local file path
  raw_text_front TEXT,                  -- Raw OCR dump (front)
  raw_text_back  TEXT,                  -- Raw OCR dump (back)
  overall_confidence REAL,             -- 0.0 to 1.0
  is_favourite  INTEGER DEFAULT 0,
  tags          TEXT,                   -- JSON array of tags
  created_at    INTEGER NOT NULL,
  updated_at    INTEGER NOT NULL
);

-- Standard extracted fields
CREATE TABLE card_fields_core (
  id            TEXT PRIMARY KEY,
  card_id       TEXT NOT NULL REFERENCES cards(id) ON DELETE CASCADE,
  full_name     TEXT,
  first_name    TEXT,
  last_name     TEXT,
  company       TEXT,
  designation   TEXT,
  email_primary TEXT,
  email_secondary TEXT,
  phone_primary TEXT,
  phone_secondary TEXT,
  phone_whatsapp TEXT,
  website       TEXT,
  address_line1 TEXT,
  address_line2 TEXT,
  city          TEXT,
  state         TEXT,
  pincode       TEXT,
  country       TEXT DEFAULT 'India',
  aadhaar_number TEXT,
  pan_number    TEXT,
  dob           TEXT,
  gender        TEXT,
  linkedin_url  TEXT,
  twitter_handle TEXT,
  instagram_handle TEXT,
  wedding_date  TEXT,
  wedding_venue TEXT,
  groom_name    TEXT,
  bride_name    TEXT,
  qr_code_data  TEXT,
  notes         TEXT
);

-- Dynamic / novel fields (EAV pattern)
CREATE TABLE card_fields_dynamic (
  id            TEXT PRIMARY KEY,
  card_id       TEXT NOT NULL REFERENCES cards(id) ON DELETE CASCADE,
  field_key     TEXT NOT NULL,          -- auto-tagged label or user-provided
  field_value   TEXT NOT NULL,
  confidence    REAL,
  source        TEXT,                   -- 'front' | 'back'
  is_user_labelled INTEGER DEFAULT 0,
  created_at    INTEGER NOT NULL
);

-- Field definition registry (tracks emerging fields)
CREATE TABLE field_definitions (
  id            TEXT PRIMARY KEY,
  field_key     TEXT UNIQUE NOT NULL,
  display_name  TEXT,
  occurrence_count INTEGER DEFAULT 1,  -- auto-increments each new card
  promoted_to_core INTEGER DEFAULT 0,  -- 1 = added to core schema
  first_seen    INTEGER,
  last_seen     INTEGER
);

-- Scan session logs
CREATE TABLE scan_logs (
  id            TEXT PRIMARY KEY,
  card_id       TEXT REFERENCES cards(id),
  ocr_engine    TEXT,
  preprocessing_duration_ms INTEGER,
  ocr_duration_ms INTEGER,
  extraction_duration_ms INTEGER,
  total_duration_ms INTEGER,
  error_message TEXT,
  created_at    INTEGER NOT NULL
);
```

### 9.3 Dynamic Schema Evolution Logic

```
New Card Scanned
      │
      ▼
Extraction Engine produces fields
      │
      ▼
For each field:
  ├── Is it a CORE field? → Save to card_fields_core
  └── Is it UNKNOWN?
        │
        ├── Save to card_fields_dynamic
        │
        ├── Upsert in field_definitions
        │     (increment occurrence_count)
        │
        └── IF occurrence_count >= 3:
              → Flag as "promotion candidate"
              → Show in Dev Dashboard
              → (Future: auto-add column via migration)
```

---

## 10. Card Type Definitions

### 10.1 Business Card

**Fields to extract:**
- Person Name, Designation, Company Name
- Phone(s), Email(s), Website
- Address, Social Media, QR Code

**Special signals:**
- Company logo present
- Multiple phone numbers (office + mobile)
- Professional designations

### 10.2 Visiting Card (Personal)

**Fields to extract:**
- Person Name
- Phone, WhatsApp number
- Residential area/locality

**Special signals:**
- No company name
- Often single phone number
- Simpler layout

### 10.3 Wedding Invitation Card

**Fields to extract:**
- Bride & Groom names
- Wedding date(s) — mehndi, sangeet, wedding, reception
- Venue name + address
- Host family names (parents)
- RSVP contact

**Special signals:**
- Multiple event dates
- Religious/cultural ceremony names
- Decorative fonts (lower OCR confidence expected)

### 10.4 Aadhaar Card

**Fields to extract:**
- Full Name (English + Hindi)
- Date of Birth
- Gender
- Aadhaar Number (12-digit)
- Address (full)
- QR Code data (embedded)

**Special signals:**
- "Government of India" header
- Aadhaar logo
- Bilingual text (English + Hindi)
- VID number (optional)

### 10.5 PAN Card *(Phase 2)*

**Fields to extract:**
- Full Name
- Father's Name
- Date of Birth
- PAN Number (10-char alphanumeric)

### 10.6 Unknown / Generic Card

- Extract all text blocks
- Apply NLP-based best-guess field tagging
- Store everything in dynamic fields
- Ask user to categorise

---

## 11. UI/UX Requirements

### 11.1 Navigation Structure

```
App Launch
    │
    ├── Onboarding (first launch only, 3 screens)
    │
    └── Home Screen
          ├── Recent Cards List
          ├── [+ Scan Card] FAB (primary action)
          └── Search Bar
                │
          ┌─────▼──────────────────────────────┐
          │           Scan Flow                  │
          │  Step 1: Capture Front               │
          │  Step 2: Capture Back (skippable)    │
          │  Step 3: Processing (progress UI)    │
          │  Step 4: Review & Edit Fields        │
          │  Step 5: Save → Card Detail View     │
          └────────────────────────────────────-─┘
```

### 11.2 Camera Screen Requirements

- Full-screen camera preview
- Animated card outline guide (green boundary box)
- Auto-capture when card is stable and well-positioned (optional, can be manual)
- Flash toggle
- "Front / Back" label clearly shown
- Gallery import button (for existing photos)

### 11.3 Processing Screen

- Real-time progress: Preprocessing → OCR → Classifying → Extracting
- Animated scanning effect (line sweep)
- Estimated time remaining
- Cancel option

### 11.4 Review Screen

- Segmented view: [Front Fields] [Back Fields] [Merged]
- Fields shown in priority order (Name → Phone → Email → Company → ...)
- Confidence indicator per field (colour dot)
- Tap field to edit inline
- "Add Field" button at bottom
- Save / Discard buttons

### 11.5 Card List View

- Card thumbnail + primary name + company + phone
- Colour-coded badge per card type
- Swipe-to-delete with undo toast
- Pull-to-search
- Sort: Date scanned / Name / Company / Card type

### 11.6 Card Detail View

- Full scanned images (pinch to zoom)
- All fields in sections
- Quick actions: Call, WhatsApp, Email, Share, Export

### 11.7 Design System

| Token | Value |
|---|---|
| Primary Font | Inter / Poppins |
| Primary Color | `#1A73E8` (professional blue) |
| Success | `#34A853` |
| Warning | `#FBBC04` |
| Error | `#EA4335` |
| Background | `#F8F9FA` |
| Surface | `#FFFFFF` |
| Border radius | 12px (cards), 8px (inputs) |
| Elevation | Material 3 elevation tokens |

---

## 12. Offline-First Architecture

### 12.1 Principles

- **Zero network dependency**: App must be fully functional with airplane mode ON
- **Local-first data**: All data written to SQLite before any UI update
- **No silent failures**: If any step fails, user sees a clear, actionable error message
- **Image storage**: Compressed images stored in app's private directory (`getApplicationDocumentsDirectory()`)

### 12.2 Storage Strategy

| Data Type | Storage | Reason |
|---|---|---|
| Structured card data | SQLite (Drift ORM) | Queryable, relational |
| App settings / preferences | Hive | Fast key-value, no schema needed |
| Scanned images | App Documents Directory | Private, no cloud |
| OCR model files | Bundled in APK / downloaded once | ML Kit handles this |
| Field definitions cache | Hive | Fast reads for classifier |

### 12.3 Data Security

- No data ever leaves the device (POC phase)
- Aadhaar number stored with field-level encryption (`flutter_secure_storage`)
- Images not accessible to other apps (private directory)
- Option to lock app with biometric / PIN (Phase 2)

---

## 13. Non-Functional Requirements

### Performance

| Metric | Target |
|---|---|
| OCR processing time | < 4 seconds per side |
| App cold start | < 2 seconds |
| Card list load (100 cards) | < 300ms |
| Search response | < 150ms |
| Image compression before storage | Max 800KB per image |

### Compatibility

| Platform | Minimum Version |
|---|---|
| Android | API 24 (Android 7.0) |
| iOS | iOS 13.0 |
| Flutter SDK | 3.19+ (Dart 3.x) |

### Reliability

- Crash-free rate: ≥ 99.5%
- Data integrity: No card record partially saved (transactions)
- Scan pipeline: Partial results saved if extraction partially fails

### Accessibility

- All buttons minimum 48×48 dp touch target
- Screen reader support (Semantics labels in Flutter)
- High-contrast mode support
- Font size respects system settings

---

## 14. Tech Stack

### Flutter Packages

| Category | Package | Version | Reason |
|---|---|---|---|
| OCR | `google_mlkit_text_recognition` | ^0.13 | Best offline OCR, Devanagari support |
| OCR Fallback | `flutter_tesseract_ocr` | ^0.4 | Backup engine |
| Database | `drift` | ^2.18 | Type-safe SQLite ORM |
| Fast Cache | `hive_flutter` | ^1.1 | Key-value store |
| Camera | `camera` | ^0.10 | Official camera plugin |
| Image Processing | `image` | ^4.1 | Preprocessing pipeline |
| Image Picker | `image_picker` | ^1.1 | Gallery import |
| State Management | `riverpod` | ^2.5 | Scalable, testable |
| Navigation | `go_router` | ^13.0 | Deep links ready |
| Secure Storage | `flutter_secure_storage` | ^9.0 | Aadhaar / sensitive data |
| Encryption | `encrypt` | ^5.0 | Field-level encryption |
| vCard Export | `enough_mail` / custom | — | vCard generation |
| UUID | `uuid` | ^4.4 | Record IDs |
| Logging | `logger` | ^2.3 | Structured logs |
| DI | `riverpod` providers | — | Built into Riverpod |

### Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── extensions/
│   └── utils/
├── data/
│   ├── database/          # Drift tables, DAOs
│   ├── models/            # Data models
│   └── repositories/
├── domain/
│   ├── entities/          # Business entities
│   ├── repositories/      # Interfaces
│   └── usecases/
├── features/
│   ├── scan/              # Camera + OCR pipeline
│   │   ├── camera_screen.dart
│   │   ├── processing_screen.dart
│   │   ├── review_screen.dart
│   │   ├── ocr/
│   │   │   ├── ml_kit_ocr.dart
│   │   │   ├── tesseract_ocr.dart
│   │   │   └── ocr_interface.dart
│   │   ├── preprocessing/
│   │   │   └── image_preprocessor.dart
│   │   ├── classification/
│   │   │   └── card_type_classifier.dart
│   │   └── extraction/
│   │       ├── base_extractor.dart
│   │       ├── business_card_extractor.dart
│   │       ├── aadhaar_extractor.dart
│   │       ├── wedding_card_extractor.dart
│   │       └── dynamic_field_extractor.dart
│   ├── cards/             # Card list, detail, search
│   └── settings/
├── presentation/
│   ├── theme/
│   ├── widgets/
│   └── providers/
└── main.dart
```

---

## 15. POC Deliverables & Milestones

### Phase 0 — Setup (Week 1)

- [ ] Flutter project scaffold with clean architecture
- [ ] Drift database setup (core tables)
- [ ] Riverpod state management wired
- [ ] Basic navigation with go_router
- [ ] Design system / theme implemented

### Phase 1 — OCR Pipeline (Week 2)

- [ ] Camera screen (front + back capture)
- [ ] Image preprocessing pipeline
- [ ] ML Kit OCR integration
- [ ] Raw text extraction working on test cards
- [ ] Processing screen with progress UI

### Phase 2 — Extraction Engine (Week 3)

- [ ] Card type classifier
- [ ] Business card extractor
- [ ] Aadhaar extractor
- [ ] Wedding card extractor
- [ ] Dynamic field extractor
- [ ] Front + back merger
- [ ] Confidence scoring

### Phase 3 — Data Layer (Week 4)

- [ ] Save to SQLite
- [ ] Dynamic field auto-promotion logic
- [ ] Card list view
- [ ] Card detail view
- [ ] Search functionality

### Phase 4 — Polish & Demo (Week 5)

- [ ] Review & edit screen
- [ ] Export as vCard
- [ ] Error handling throughout pipeline
- [ ] Performance profiling & optimisation
- [ ] 20-card internal test set validation
- [ ] Demo recording

---

## 16. Scalability Roadmap

### Phase 2 (Post-POC)

- Multi-language OCR: Tamil, Telugu, Gujarati, Marathi
- iCloud / Google Drive backup (opt-in)
- CSV / Excel bulk export
- Tags and folder organisation
- Duplicate card detection

### Phase 3 — Growth

- Cloud sync across devices
- Team workspaces (shared card banks)
- CRM connectors: HubSpot, Salesforce, Zoho
- AI-powered contact enrichment (LinkedIn match)
- Batch scanning (multiple cards per session)

### Phase 4 — Platform

- Web dashboard (Flutter Web or React)
- REST API for enterprise integrations
- White-label SDK for B2B clients
- Analytics dashboard (card scan trends, field accuracy)

### Architecture Scalability Notes

- **Database**: Drift (SQLite) → can be swapped to a remote Postgres adapter with minimal changes (same Drift API)
- **OCR Engine**: Interface-based design means engines are swappable without touching business logic
- **Card Types**: Plugin-based; add new card type by creating one new extractor class
- **Schema**: EAV dynamic fields allow unlimited field types without migration pain

---

## 17. Risk Register

| Risk | Probability | Impact | Mitigation |
|---|---|---|---|
| Low OCR accuracy on decorative wedding fonts | High | High | Fall back to full raw text; user manually assigns fields |
| ML Kit model size increases app size significantly | Medium | Medium | Use on-demand model download (ML Kit supports this) |
| Hindi OCR accuracy below threshold | Medium | High | Add Tesseract with Hindi trained data as fallback |
| Aadhaar number privacy concerns | Low | Critical | Store encrypted, never log, add app lock in Phase 2 |
| Camera permissions denied on first launch | Low | Medium | Clear permission rationale screen before requesting |
| Card edge detection fails on patterned backgrounds | High | Medium | Always show manual capture option; guide user to plain background |
| Dynamic schema migrations causing data loss | Low | Critical | Never delete columns; only add; strict migration versioning |
| Performance degradation on low-end devices | Medium | High | Profile on Galaxy A-series; lazy processing in background isolates |

---

## 18. Open Questions

| # | Question | Owner | Due |
|---|---|---|---|
| Q1 | Should we bundle the Tesseract Hindi training data in the APK (adds ~15MB) or download on demand? | Engineering | Week 1 |
| Q2 | What is the minimum acceptable OCR accuracy on a wedding card before we fall back to manual entry? | Product | Week 2 |
| Q3 | Do we need biometric lock for the POC or defer to Phase 2? | Product | Week 1 |
| Q4 | Should dynamic field promotion (3+ occurrences) be automatic or require user confirmation? | Product | Week 3 |
| Q5 | What is the target device for demo — Flagship, Mid-range, or Low-end? | Product | Week 1 |
| Q6 | Do we include PAN card extraction in POC or keep it for Phase 2? | Product | Week 1 |

---

## Appendix A — Sample Field Extraction Test Cases

### Business Card Test Case

**Input OCR Text:**
```
RAHUL SHARMA
Chief Technology Officer
TechNova Solutions Pvt. Ltd.
📱 +91 98765 43210
📧 rahul.sharma@technova.in
🌐 www.technova.in
WeWork, BKC, Mumbai - 400051
```

**Expected Output:**
```json
{
  "card_type": "business",
  "full_name": "Rahul Sharma",
  "designation": "Chief Technology Officer",
  "company": "TechNova Solutions Pvt. Ltd.",
  "phone_primary": "+919876543210",
  "email_primary": "rahul.sharma@technova.in",
  "website": "www.technova.in",
  "address_line1": "WeWork, BKC",
  "city": "Mumbai",
  "pincode": "400051"
}
```

### Aadhaar Card Test Case

**Input OCR Text (front):**
```
भारत सरकार
Government of India
SURESH KUMAR
सुरेश कुमार
DOB: 15/08/1985
Male / पुरुष
1234 5678 9012
```

**Expected Output:**
```json
{
  "card_type": "aadhaar",
  "full_name": "Suresh Kumar",
  "dob": "1985-08-15",
  "gender": "Male",
  "aadhaar_number": "ENCRYPTED:xxxxxxxxxxxx"
}
```

---

## Appendix B — Regex Reference

```dart
// Phone numbers (Indian formats)
final phoneRegex = RegExp(
  r'(?:(?:\+|0{0,2})91[\s\-]?)?[6-9]\d{9}|(?:\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{4}',
);

// Email
final emailRegex = RegExp(
  r'[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}',
);

// URL
final urlRegex = RegExp(
  r'(?:https?://)?(?:www\.)?[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}(?:/[^\s]*)?',
);

// Aadhaar
final aadhaarRegex = RegExp(r'\b[2-9]\d{3}\s?\d{4}\s?\d{4}\b');

// PAN
final panRegex = RegExp(r'[A-Z]{5}[0-9]{4}[A-Z]{1}');

// Indian PIN Code
final pincodeRegex = RegExp(r'\b[1-9][0-9]{5}\b');

// Date of Birth (multiple formats)
final dobRegex = RegExp(
  r'(?:DOB|D\.O\.B|Born|Birth)[\s:]*(\d{2}[\/\-]\d{2}[\/\-]\d{2,4})',
  caseSensitive: false,
);
```

---

*This document is a living PRD. All sections should be updated as the POC progresses and new learnings emerge. Version this document alongside the codebase.*

---

**Document End — CardScan AI PRD v1.0.0**
