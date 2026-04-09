# AltheaCare Insurer Partner Intelligence Platform — Features Reference

> **What is this app?**
> The AltheaCare Insurer Partner app is a Flutter-based intelligence platform for insurance partners managing a health cluster of **10,000 insured lives** concentrated in Kasba, South Kolkata. It gives insurers a real-time command center to monitor population health, prevent claims proactively, detect fraud, triage emergencies, track care delivery, manage insured members, and analyse financial outcomes — all from a single, responsive interface that adapts between mobile, tablet, and desktop layouts.

---

## Table of Contents

1. [Architecture & Technology Stack](#1-architecture--technology-stack)
2. [Application Startup & Navigation Shell](#2-application-startup--navigation-shell)
3. [Onboarding](#3-onboarding)
4. [Authentication](#4-authentication)
5. [Dashboard](#5-dashboard)
6. [Care Events](#6-care-events)
7. [Emergency Triage](#7-emergency-triage)
8. [Risk Engine](#8-risk-engine)
9. [Claims Prevention](#9-claims-prevention)
10. [Network Readiness](#10-network-readiness)
11. [Population Health](#11-population-health)
12. [Safety Monitor](#12-safety-monitor)
13. [Medication Adherence](#13-medication-adherence)
14. [Fraud Detection](#14-fraud-detection)
15. [Live Alerts](#15-live-alerts)
16. [Insuree Management](#16-insuree-management)
17. [Payment & Invoicing](#17-payment--invoicing)
18. [Analytics Dashboard](#18-analytics-dashboard)
19. [Notifications](#19-notifications)
20. [Settings & Profile](#20-settings--profile)
21. [Help & Support](#21-help--support)
22. [Legal](#22-legal)
23. [Core Infrastructure](#23-core-infrastructure)
24. [Cross-Feature Data Flow](#24-cross-feature-data-flow)

---

## 1. Architecture & Technology Stack

### Architectural Pattern

The project follows **Clean Architecture** with three strict layers per feature:

| Layer | Folder | Responsibility |
|-------|--------|----------------|
| **Data** | `data/datasources/`, `data/models/` | Raw data retrieval (mock APIs with simulated delays), JSON serialisation via `json_serializable` |
| **Domain** | `domain/entities/` | Pure Dart business objects, immutable via `freezed` |
| **Presentation** | `presentation/providers/`, `presentation/screens/`, `presentation/widgets/` | Riverpod state management, UI rendering |

### State Management

All state is managed with **Riverpod** (`flutter_riverpod` + `riverpod_annotation`). Each feature exposes one or more `@riverpod`-annotated `AsyncNotifier` or `Notifier` classes. The generated `.g.dart` files are committed alongside source files. The root `ProviderScope` in `main.dart` overrides `sharedPreferencesProvider` so that it is available synchronously to the auth system.

### Routing

`GoRouter` powers all navigation. A central `routerProvider` (in `core/router/app_router.dart`) wraps all routes behind an auth redirect guard:

```
Onboarding → Login → ShellRoute (all main screens)
```

`ShellRoute` injects the common `ShellScreen` (app bar + responsive navigation) around each routed child.

### Data Models

Every entity uses `@freezed` for immutability and `copyWith` support. Data-layer models also implement `@JsonSerializable` for deserialisation. Each domain entity has a mirror data model that maps to/from JSON.

### Key Dependencies

| Package | Purpose |
|---------|---------|
| `flutter_riverpod` | State management |
| `go_router` | Declarative routing |
| `freezed` | Immutable data classes |
| `hive_flutter` | Local persistence |
| `shared_preferences` | Auth & onboarding flags |
| `flutter_secure_storage` | Token storage |
| `dio` | HTTP client |
| `graphql_flutter` | GraphQL support |
| `fhir` / `fhir_r4` | FHIR-compliant health data models |
| `fl_chart` | Charts (line, bar, pie) |
| `google_maps_flutter` | Coverage & GPS maps |
| `table_calendar` | Schedule calendars |
| `pdf` + `printing` | Invoice PDF generation |
| `qr_flutter` | QR code display |
| `signature` | Digital signature capture |
| `flutter_animate` | Animation utilities |
| `shimmer` | Loading skeleton UX |

---

## 2. Application Startup & Navigation Shell

### Entry Point — `lib/main.dart`

1. `WidgetsFlutterBinding.ensureInitialized()` prepares the Flutter engine.
2. `SharedPreferences.getInstance()` loads persisted preferences.
3. A `ProviderScope` wraps the root widget, overriding `sharedPreferencesProvider` with the live instance.
4. `InsurerPartnerApp` is a `ConsumerWidget` that watches `routerProvider` and `themeModeProvider` / `appThemeProvider` to build a `MaterialApp.router` with light/dark theme support and the configured `GoRouter`.

### Shell — `features/shell/`

The shell provides the persistent chrome around every main-section screen.

#### Models

- **`NavigationItem`** (`core/models/navigation_item.dart`): Immutable item describing one navigation destination (`id`, `label`, `icon`, `selectedIcon`, `route`, optional `children` for sub-menus).

#### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `navigationIndexProvider` | `Notifier<int>` | Tracks active nav rail / drawer index |
| `navigationItemsProvider` | `List<NavigationItem>` | Canonical list of all 13 nav items |
| `drawerStateProvider` | `Notifier<bool>` | Drawer open/close state |

#### Widgets

| Widget | Role |
|--------|------|
| `ShellScreen` | Detects breakpoint (`isDesktop`). On desktop renders `NavigationRailWidget` + content side-by-side. On mobile renders `AppBarWidget` + `NavigationDrawerWidget` via scaffold drawer. |
| `AppBarWidget` | Displays page title, hamburger menu on mobile, notification bell (`NotificationIconButton`), and user avatar. |
| `NavigationRailWidget` | Left rail on desktop with icon + label for each `NavigationItem`. Navigates via `context.go(route)`. |
| `NavigationDrawerWidget` | Slide-in drawer on mobile/tablet. Same list rendered as `ListTile` rows. |
| `UserAvatarWidget` | Shows current user initials or avatar image in the app bar. |

#### Data Flow

```
navigationItemsProvider → NavigationRailWidget / NavigationDrawerWidget
navigationIndexProvider → highlights the active item
GoRouter (routerProvider) → handles actual page transitions
ShellScreen → wraps routed child widget in responsive layout
```

---

## 3. Onboarding

**Route:** `/onboarding`

### Purpose

A one-time, four-page introduction shown to first-time users. Once completed, a flag is stored in `SharedPreferences` and the user is redirected to the login screen.

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `OnboardingScreen` | `ConsumerStatefulWidget` hosting a `PageView` with a `PageController`. Tracks `_currentPage`. |
| `OnboardingPageWidget` | Stateless card rendering an icon, bold title, and description paragraph for one page. |
| `AnimatedPageIndicator` (core widget) | Dot indicator that animates as the user swipes. |

### Onboarding Pages

| Page | Title | Key Message |
|------|-------|-------------|
| 1 | Real-Time Risk Monitoring | Cluster-based, real-time population health tracking |
| 2 | Verified Care Events | BLE + GPS biometric handshake for authentic care delivery |
| 3 | Instant Pre-Authorization | Emergency pre-auth in seconds from live ambulance/hospital data |
| 4 | Preventive Analytics | AI-powered risk predictions to reduce claims by 30–40% |

### State & Data Flow

```
OnboardingScreen
  ↓  "Get Started" on last page
onboardingNotifierProvider.completeOnboarding()
  ↓
authLocalDatasource.setOnboardingComplete()   (SharedPreferences key)
  ↓
onboardingProvider invalidated → router redirect fires
  ↓
GoRouter redirects to /login
```

---

## 4. Authentication

**Routes:** `/login`

### Purpose

Secure sign-in for insurer partner staff. Supports email/password login with future hooks for SSO. On success, stores credentials locally and routes to the dashboard.

### Domain

#### `UserEntity`

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Unique user identifier |
| `email` | `String` | Login email |
| `name` | `String` | Display name |
| `role` | `String` | Role string (admin, manager, analyst, etc.) |
| `organizationId` | `String?` | Organisation reference |
| `organizationName` | `String?` | Organisation display name |
| `phone` | `String?` | Contact number |
| `avatarUrl` | `String?` | Profile photo |
| `lastLoginAt` | `DateTime?` | Last successful login timestamp |
| `createdAt` | `DateTime` | Account creation date |

#### `AuthState` (sealed union via `freezed`)

| State | Meaning |
|-------|---------|
| `initial` | App just launched, not yet checked |
| `loading` | Login or logout in progress |
| `authenticated(UserEntity)` | Valid session, user object available |
| `unauthenticated` | No session |
| `error(String)` | Login failed with message |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `sharedPreferencesProvider` | `SharedPreferences` | Injected at root; used by auth datasource |
| `authLocalDatasourceProvider` | `AuthLocalDatasource` | Reads/writes tokens + user profile locally |
| `authRemoteDatasourceProvider` | `AuthRemoteDatasource` | Mock remote login call |
| `authRepositoryProvider` | `AuthRepository` | Combines local + remote datasources |
| `authProvider` | `Notifier<AuthState>` | Central auth state machine; exposes `login()` and `logout()` |
| `isAuthenticatedProvider` | `bool` | Convenience selector |
| `currentUserProvider` | `UserEntity?` | Convenience selector |
| `onboardingProvider` | `Future<bool>` | Has onboarding been completed? |
| `onboardingNotifierProvider` | `AsyncNotifier<void>` | `completeOnboarding()` action |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `LoginScreen` | Responsive form. On desktop ≥1024 px, centred card max 480 px wide. Email field, password field, "Remember me" checkbox, "Forgot Password?" text button, primary "Sign In" button, secondary "SSO Login" outlined button, demo credentials hint box on desktop/tablet. |
| `AuthHeader` | Reusable header widget showing the AltheaCare logo, "Welcome Back" title, and subtitle. |

### Data Flow

```
User fills email + password → _handleLogin()
  ↓
authProvider.notifier.login(email, password)
  ↓  AuthState.loading
authRepository.login()
  ↓
authRemoteDatasource (mock: validates non-empty, 6+ char password)
  → creates UserEntity with mock data
authLocalDatasource.saveUser(user) + saveToken(token)
  ↓  AuthState.authenticated(user)
GoRouter redirect fires → /dashboard
```

Error path:
```
authRepository throws → AuthState.error(message)
  → SnackBar shown for 3 seconds
  → State resets to AuthState.unauthenticated
```

---

## 5. Dashboard

**Route:** `/dashboard`

### Purpose

The operational nerve centre. Gives a at-a-glance view of cluster health: total vs active insured lives, risk distribution across the population, key prevention counter metrics, and the financial impact of the platform's interventions.

### Domain Entities

#### `ClusterStatsEntity`

| Field | Type | Description |
|-------|------|-------------|
| `totalLives` | `int` | Total insured population (10,000) |
| `activeLives` | `int` | Currently active insurees (~3,200) |
| `highRiskPatients` | `int` | Patients classified high risk (~850) |
| `ambulancesAvailable` | `int` | Available ambulances right now |
| `nursesOnDuty` | `int` | Nurses currently on active duty |
| `pharmaciesActive` | `int` | Partner pharmacies open |
| `averageResponseTime` | `double` | Average care-event response in minutes |

#### `RiskDistributionEntity`

| Field | Type | Description |
|-------|------|-------------|
| `riskLevel` | `String` | "Low Risk", "Moderate Risk", "High Risk", "Critical" |
| `count` | `int` | Number of patients in this tier |
| `percentage` | `double` | Percentage of population |

Distribution approximation: Low 62%, Moderate 27%, High 8.5%, Critical 2.5%.

#### `PreventionMetricEntity`

| Field | Type | Description |
|-------|------|-------------|
| `type` | `String` | Metric name (e.g., "Hospitalizations Averted") |
| `count` | `int` | Number of events in the period |
| `period` | `String` | "This Month" / "This Week" |
| `trend` | `double` | % change vs previous period (positive = improvement) |

Four standard metrics: Hospitalizations Averted, Medication Adherence Alerts, Fall Risk Interventions, Emergency Triage Responses.

#### `FinancialImpactEntity`

| Field | Type | Description |
|-------|------|-------------|
| `hospitalizationsAvoided` | `double` | Count of prevented hospitalizations |
| `averageClaimCost` | `double` | Average cost per hospitalization (₹1,50,000) |
| `totalSavings` | `double` | `hospitalizationsAvoided × averageClaimCost` |
| `platformRevenue` | `double` | `10,000 × ₹49/month` |
| `roi` | `double` | `(totalSavings / platformRevenue) × 100` |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `dashboardProvider` | `AsyncNotifier` | Orchestrates all four parallel data loads |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `DashboardScreen` | Scrollable screen. Calls `dashboardProvider`. Shows shimmer skeleton while loading. Lays out widgets in a responsive grid. |
| `StatCard` | Generic card with icon, label, value, and optional trend arrow. Used for each cluster stat (total lives, active lives, high-risk, ambulances, nurses, pharmacies, response time). |
| `RiskDistributionCard` | Pie/donut chart (`fl_chart`) showing four risk tiers with colour-coded legend. Powered by `List<RiskDistributionEntity>`. |
| `PreventionCounterCard` | Animated counter tiles for each `PreventionMetricEntity`. Trend arrow goes green/red based on sign. |
| `FinancialImpactCard` | Prominent card showing total savings (₹ formatted), ROI %, hospitalizations avoided, and revenue. |
| `ClusterMapCard` | Google Maps widget centred on Kasba, South Kolkata, showing the 3 km cluster radius boundary. |
| `MetricTile` | Compact tile used inside larger cards for sub-metrics. |

### Data Flow

```
DashboardScreen mounts → reads dashboardProvider
  ↓  AsyncLoading → shimmer UI
dashboardProvider triggers:
  DashboardDatasource.fetchClusterStats()        (1 s delay)
  DashboardDatasource.fetchRiskDistribution()    (0.8 s delay)
  DashboardDatasource.fetchPreventionMetrics()   (0.6 s delay)
  DashboardDatasource.fetchFinancialImpact()     (0.7 s delay)
  ↓  All resolve → AsyncData
StatCard, RiskDistributionCard, PreventionCounterCard, FinancialImpactCard render
ClusterMapCard renders independently with static lat/lng
```

---

## 6. Care Events

**Routes:** `/care-events`, `/care-events/:id`

### Purpose

Tracks every care delivery visit made by nurses, caregivers, or medical professionals to insured members. Each event is cryptographically verified using GPS co-ordinates, BLE (Bluetooth Low Energy) handshake, and timestamp checks to prevent ghost visits and fraudulent billing.

### Domain Entities

#### `CareEventEntity`

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Unique event ID |
| `patientId` / `patientName` | `String` | Insuree reference |
| `caregiverId` / `caregiverName` | `String` | Service provider |
| `eventType` | `CareEventType` | nurseVisit, medicationDelivery, diagnosticTest, physiotherapy, woundCare, vitalCheck |
| `description` | `String` | Free-text notes |
| `scheduledAt` / `completedAt` | `DateTime` | Scheduled vs actual timestamps |
| `verificationStatus` | `VerificationStatusEntity` | BLE + GPS + timestamp verification result |
| `latitude` / `longitude` | `double?` | GPS co-ordinates at service delivery |
| `duration` | `int` | Duration in minutes |
| `claimAmount` | `double` | Monetary value of the care event |
| `attachments` | `List<String>?` | Photo/document URLs |

#### `VerificationStatusEntity`

| Field | Type | Description |
|-------|------|-------------|
| `status` | `VerificationStatusType` | verified, partial, flagged, pending |
| `bleVerified` | `bool` | BLE handshake confirmed |
| `gpsVerified` | `bool` | Location matches expected zone |
| `timestampVerified` | `bool` | Timestamps within tolerance |
| `flagReason` | `String?` | Reason if flagged |

#### `AuditFlagEntity`

| Field | Type | Description |
|-------|------|-------------|
| `type` | `AuditFlagType` | gpsDiscrepancy, bleHandshakeMissing, duplicateClaim, shortDuration, timeAnomaly, manualOverride |
| `severity` | `AuditFlagSeverity` | low, medium, high, critical |
| `description` | `String` | Human-readable explanation |
| `requiresInvestigation` | `bool` | Whether to escalate to fraud pipeline |

#### `VerificationDetailEntity`

Details about each individual verification check performed during the event.

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `careEventsProvider` | `AsyncNotifier` | Fetches paginated list of care events; supports filter by type/status |
| `careEventDetailsProvider` | `AsyncNotifier` | Fetches a single event by ID including full verification detail |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `CareEventsScreen` | List screen. Chip filter bar at top for filtering by event type. Shows `CareEventCard` list with shimmer loading. |
| `CareEventDetailsScreen` | Detail view for a single care event. Shows patient info, event type, timeline, verification badge, GPS map, audit flags, and claim amount. |
| `AuditConsoleScreen` | Dedicated audit view listing all flagged events with severity badges, usable for compliance review. |
| `CareEventCard` | Summary tile: patient name, event type icon, scheduled time, claim amount, and coloured `VerificationBadge`. |
| `VerificationBadge` | Colour-coded chip (green=verified, yellow=partial, red=flagged, grey=pending). |
| `AuditFlagBadge` | Icon badge indicating presence and severity of audit flags on a care event card. |
| `EventTimeline` | Vertical timeline widget showing dispatched → arrived → completed with timestamps. |
| `VerificationDetailsCard` | Expandable card showing three check rows (BLE, GPS, Timestamp) each with ✓/✗/? icon. |
| `FilterChipWidget` | Horizontal scrollable row of filter chips for event-type filtering. |

### Data Flow

```
CareEventsScreen → careEventsProvider (AsyncLoading → shimmer)
  ↓
CareEventsDatasource.fetchCareEvents()
  → Returns List<CareEventModel> (mock data)
  → Mapped to List<CareEventEntity> in provider
  ↓
CareEventCard list rendered with VerificationBadge
User taps a card → context.go('/care-events/:id', extra: eventId)
  ↓
CareEventDetailsScreen → careEventDetailsProvider(id)
  → CareEventsDatasource.fetchCareEventById(id)
  ↓
EventTimeline, VerificationDetailsCard, AuditFlagBadge rendered
If requiresInvestigation → link to Fraud Detection feature
```

---

## 7. Emergency Triage

**Routes:** `/emergency-triage`, `/emergency-triage/:id`

### Purpose

Real-time emergency case management. Ambulance dispatches are tracked from the moment of dispatch through transport and hospital arrival. Insurers can view live patient vitals, approve pre-authorisation for emergency treatment costs in seconds, and monitor the status of all active emergency cases.

### Domain Entities

#### `EmergencyCaseEntity`

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Case ID |
| `patientId` / `patientName` / `patientAge` | — | Patient identifiers |
| `chiefComplaint` | `String` | Primary presenting symptom |
| `severity` | `EmergencySeverity` | critical, high, moderate, low |
| `status` | `EmergencyStatus` | dispatched → enRoute → onScene → transportingToHospital → atHospital → completed |
| `ambulanceId` / `paramedicName` | `String` | Responding unit |
| `vitals` | `PatientVitalsEntity` | Live vitals snapshot |
| `location` | `String` | Text address |
| `latitude` / `longitude` | `double?` | GPS position |
| `destinationHospital` | `String` | Receiving facility |
| `estimatedCost` | `double` | Estimated treatment cost |
| `preAuth` | `PreAuthEntity?` | Pre-authorisation decision |
| `medicalHistory` | `String?` | Relevant history from insurer records |
| `medications` | `List<String>?` | Current medication list |

#### `PatientVitalsEntity`

| Field | Type | Description |
|-------|------|-------------|
| `heartRate` | `int` | BPM |
| `bloodPressureSystolic` / `bloodPressureDiastolic` | `int` | mmHg |
| `oxygenSaturation` | `int` | SpO2 % |
| `temperature` | `double` | °C |
| `respiratoryRate` | `int` | breaths/min |
| `ecgData` | `String?` | ECG waveform data |
| `recordedAt` | `DateTime` | Vitals timestamp |

#### `PreAuthEntity`

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Pre-auth ID |
| `status` | `PreAuthStatus` | pending, approved, rejected, moreInfoRequired |
| `approvedAmount` | `double` | Authorised spend ceiling |
| `approvedBy` | `String` | Authorising user |
| `rejectionReason` | `String?` | Reason if rejected |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `emergencyTriageProvider` | `AsyncNotifier` | Fetches list of active and recent cases |
| `emergencyCaseDetailsProvider` | `AsyncNotifier` | Fetches single case with full vitals and pre-auth |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `EmergencyTriageScreen` | Filterable list of all emergency cases with severity badges. Critical cases highlighted at top. Pull-to-refresh support. |
| `EmergencyCaseDetailsScreen` | Full case view: vitals dashboard, status tracker, GPS map with ambulance position, pre-auth card, medical history, and action buttons. |
| `EmergencyCaseCard` | Summary tile with patient name, severity badge, status chip, complaint, and response time. |
| `SeverityBadge` | Colour-coded badge (red=critical, orange=high, yellow=moderate, green=low). |
| `VitalsDisplay` | Grid of vital-sign tiles (HR, BP, SpO2, Temp, RR) each colour-coded against normal ranges. |
| `PreAuthDialog` | Modal dialog triggered by "Approve Pre-Auth" button. Shows estimated cost, text field for override amount, approve/reject/more-info actions. |

### Data Flow

```
EmergencyTriageScreen → emergencyTriageProvider
  ↓
EmergencyTriageDatasource.fetchEmergencyCases()
  → Returns cases sorted by severity (critical first)
  ↓
EmergencyCaseCard list with SeverityBadge
Tap card → context.go('/emergency-triage/:id')
  ↓
EmergencyCaseDetailsScreen → emergencyCaseDetailsProvider(id)
  ↓
VitalsDisplay renders PatientVitalsEntity
PreAuthEntity status shown → "Approve" opens PreAuthDialog
PreAuthDialog.approve() → emergencyTriageProvider.approvePreAuth(id, amount)
  → Updates PreAuthEntity.status to approved
  → Feeds back to FinancialImpactEntity in Dashboard (cost tracking)
```

---

## 8. Risk Engine

**Routes:** `/risk-engine`, `/risk-engine/:id`

### Purpose

AI-powered patient risk stratification. Every insured member has a risk profile calculated from clinical factors, demographics, lifestyle markers, and environmental inputs. The engine surfaces who is most likely to be hospitalised and recommends targeted interventions to reduce that probability — directly reducing claims.

### Domain Entities

#### `RiskProfileEntity`

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Profile ID |
| `patientId` / `patientName` | `String` | Insuree reference |
| `patientAge` / `gender` | — | Demographic inputs |
| `riskScore` | `double` | 0–100 composite risk score |
| `riskLevel` | `RiskLevel` | low, moderate, high, critical |
| `riskFactors` | `List<RiskFactorEntity>` | Contributing risk factors |
| `recommendedInterventions` | `List<InterventionEntity>` | Ordered intervention recommendations |
| `hospitalizationProbability` | `double` | Predicted 12-month hospitalisation probability |
| `emergencyVisitProbability` | `double` | Predicted emergency visit probability |
| `estimatedAnnualCost` | `double` | Expected claims cost without intervention |
| `potentialSavings` | `double` | Savings achievable with all interventions |
| `primaryCondition` | `String?` | Main diagnosis |
| `comorbidities` | `List<String>?` | Additional conditions |

#### `RiskFactorEntity`

| Field | Type | Description |
|-------|------|-------------|
| `name` | `String` | Factor name |
| `category` | `RiskFactorCategory` | clinical, lifestyle, demographic, environmental |
| `impactScore` | `double` | Contribution to overall risk |
| `isModifiable` | `bool` | Whether intervention can address it |
| `currentValue` / `targetValue` | `String?` | Current measurement vs goal |

#### `InterventionEntity` (Risk Engine)

| Field | Type | Description |
|-------|------|-------------|
| `type` | `InterventionType` | medication, lifestyle, monitoring, referral |
| `priority` | `InterventionPriority` | critical, high, medium, low |
| `expectedImpact` | `double` | % risk reduction |
| `estimatedCost` | `int` | Cost in ₹ |
| `timeframe` | `String` | Expected delivery timeframe |
| `isImplemented` | `bool` | Already actioned? |

#### `ChronicDiseaseCohortEntity`

Aggregated view of all patients with a specific disease type.

| Field | Type | Description |
|-------|------|-------------|
| `diseaseType` | `DiseaseType` | diabetes, hypertension, cardiac, copd, ckd |
| `totalPatients` | `int` | Cohort size |
| `wellControlled` / `moderateControl` / `poorControl` | `int` | Control tier counts |
| `avgRiskScore` | `double` | Cohort average risk |
| `hospitalizationRate` | `double` | Hospitalisation rate % |
| `adherenceRate` | `double` | Medication adherence rate % |
| `riskTrend` | `List<TrendDataPoint>` | Historical risk score trend |
| `interventionsActive` | `int` | Active intervention count |
| `interventionSuccessRate` | `double` | % of interventions achieving outcome |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `riskEngineProvider` | `AsyncNotifier` | Loads all risk profiles, sortable by risk score |
| `patientRiskDetailsProvider` | `AsyncNotifier` | Single patient risk profile with full factors and interventions |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `RiskEngineScreen` | Sorted list of risk profiles (highest risk first). Summary stats at top: total high-risk count, average risk score, total potential savings. |
| `PatientRiskDetailsScreen` | Full patient risk breakdown: risk score gauge, factor breakdown chart, intervention recommendation list, predicted probabilities. |
| `ChronicDiseaseMonitoringScreen` | Cohort view. Shows each disease type's control tier distribution (well/moderate/poor) and trend charts. |
| `RiskProfileCard` | Summary tile: patient name, risk score badge, primary condition, hospitalisation probability, and estimated annual cost. |
| `RiskScoreGauge` | Circular progress gauge (0–100) colour-coded by risk level (green < 30, yellow 30–60, orange 60–80, red > 80). |
| `RiskFactorCard` | Expandable card listing modifiable vs non-modifiable factors with impact scores sorted by contribution. |
| `InterventionCard` | Card per recommendation with type icon, priority badge, expected impact %, cost, and "Mark Implemented" toggle. |
| `DiseaseCohortCard` | Summary card for one disease type with patient count, control distribution bar, and hospitalization rate. |

### Data Flow

```
RiskEngineScreen → riskEngineProvider
  ↓
RiskEngineDatasource.fetchRiskProfiles()
  → Returns List<RiskProfileModel> sorted by riskScore desc
  ↓
RiskProfileCard list rendered
Tap → context.go('/risk-engine/:profileId')
  ↓
PatientRiskDetailsScreen → patientRiskDetailsProvider(profileId)
  → RiskEngineDatasource.fetchPatientRiskDetails(id)
  ↓
RiskScoreGauge, RiskFactorCard list, InterventionCard list rendered
"Mark Implemented" tap → riskEngineProvider.markInterventionImplemented()
  → Recalculates potentialSavings
  → Dashboard FinancialImpactCard updates via shared provider dependency
```

---

## 9. Claims Prevention

**Route:** `/analytics/claims-prevention`

### Purpose

Quantifies and visualises how the platform's preventive interventions have reduced insurance claims. Shows cost avoidance data, ROI calculations, and the success rates of different intervention categories.

### Domain Entities

#### `PreventionMetricEntity` (Claims Prevention)

| Field | Type | Description |
|-------|------|-------------|
| `type` | `PreventionType` | hospitalization, emergencyVisit, medication, fall, chronicComplications |
| `count` | `int` | Events prevented |
| `averageCostAvoided` | `double` | Average cost per prevention |
| `totalCostAvoided` | `double` | Total financial impact |
| `period` | `DateTime` | Reporting period |
| `successRate` | `double` | % success rate |

#### `CostAvoidanceEntity`

| Field | Type | Description |
|-------|------|-------------|
| `period` | `String` | Quarter label |
| `predictedClaims` | `double` | Claims expected without intervention |
| `actualClaims` | `double` | Claims actually filed |
| `avoidedClaims` | `double` | Difference |
| `platformCost` | `double` | Cost of running platform |
| `netSavings` | `double` | `avoidedClaims - platformCost` |
| `roi` | `double` | Return on investment % |
| `interventionsPerformed` | `int` | Total interventions during period |
| `patientsImpacted` | `int` | Unique patients reached |

#### `InterventionImpactEntity`

Per-category breakdown of intervention effectiveness.

| Field | Type | Description |
|-------|------|-------------|
| `category` | `InterventionCategory` | nursing, medication, monitoring, emergency, lifestyle |
| `totalInterventions` | `int` | Count |
| `successfulOutcomes` | `int` | Positive outcomes |
| `successRate` | `double` | % |
| `avgCostPerIntervention` | `double` | Cost efficiency |
| `totalSavings` | `double` | Total savings across category |
| `roi` | `double` | Category ROI |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `claimsPreventionProvider` | `AsyncNotifier` | Loads all claims-prevention analytics data |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `ClaimsPreventionScreen` | Overview screen with prevention counter, cost chart, ROI calculator, and intervention success breakdown. |
| `PreventionCounterWidget` | Animated numeric display for total events prevented in the current period. |
| `CostComparisonChart` | Grouped bar chart (`fl_chart`) comparing predicted vs actual claims per quarter. |
| `ROICalculatorCard` | Interactive card allowing the user to adjust intervention intensity slider and see projected ROI change. |
| `InterventionSuccessCard` | Progress bar list showing success rate per intervention category. |

### Data Flow

```
ClaimsPreventionScreen → claimsPreventionProvider
  ↓
ClaimsPreventionDatasource.fetchPreventionMetrics()
ClaimsPreventionDatasource.fetchCostAvoidance()
ClaimsPreventionDatasource.fetchInterventionImpact()
  ↓
PreventionCounterWidget ← PreventionMetricEntity list
CostComparisonChart ← CostAvoidanceEntity list
InterventionSuccessCard ← InterventionImpactEntity list
ROICalculatorCard ← CostAvoidanceEntity.roi
```

---

## 10. Network Readiness

**Route:** `/analytics/network-readiness`

### Purpose

Assesses whether the partner provider network has the capacity to serve the insured population. Tracks ambulances, nurses, caregivers, pharmacies, and diagnostic labs across the Kasba cluster zone, identifying bottlenecks before they impact care quality.

### Domain Entities

#### `NetworkAssetEntity`

| Field | Type | Description |
|-------|------|-------------|
| `type` | `AssetType` | ambulance, nurse, caregiver, pharmacy, diagnosticLab |
| `status` | `AssetStatus` | active, busy, offline, maintenance |
| `latitude` / `longitude` | `double?` | Live GPS position |
| `activeAssignments` | `int?` | Current tasks |
| `completedToday` | `int?` | Today's completed assignments |
| `utilizationRate` | `double?` | % of capacity used |

#### `CoverageZoneEntity`

| Field | Type | Description |
|-------|------|-------------|
| `zoneName` | `String` | Named area within cluster |
| `centerLatitude` / `centerLongitude` | `double` | Zone centre |
| `radiusKm` | `double` | Coverage radius |
| `populationCovered` | `int` | Insured lives in zone |
| `activeAssets` | `int` | Assets serving zone |
| `coverageScore` | `double` | 0–1 adequacy score |
| `avgResponseTimeMinutes` | `int` | Average response time |
| `hasAdequateCoverage` | `bool` | Is coverage sufficient? |

#### `ServiceCapacityEntity`

| Field | Type | Description |
|-------|------|-------------|
| `serviceType` | `ServiceType` | nurseVisit, medicineDelivery, diagnosticTest, ambulanceService, physiotherapy |
| `dailyCapacity` | `int` | Maximum daily capacity |
| `currentUtilization` | `int` | Today's usage |
| `availableSlots` | `int` | Remaining capacity |
| `utilizationPercentage` | `double` | % used |
| `demandForecast` | `int` | Predicted tomorrow demand |
| `isBottleneck` | `bool` | At risk of exceeding capacity |

#### `ResourceUtilizationEntity`

Hourly utilisation data for each resource type.

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `networkReadinessProvider` | `AsyncNotifier` | Loads all network assets, coverage zones, service capacities, and utilisation data |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `NetworkReadinessScreen` | Tabbed screen: Map view, Asset list, Capacity view. |
| `CoverageMapWidget` | Google Maps displaying coloured polygons per coverage zone; green=adequate, red=gap. Asset pins show each ambulance, nurse, pharmacy, etc. |
| `NetworkAssetCard` | Card per asset: type icon, name, status badge, location, utilisation %, today's completions. |
| `ServiceCapacityCard` | Linear progress bar per service type showing current utilisation vs capacity. Bottleneck highlighted in red. |
| `ResourceUtilizationChart` | 24-hour line chart (`fl_chart`) showing hourly utilisation peaks for each resource type. |

### Data Flow

```
NetworkReadinessScreen → networkReadinessProvider
  ↓
NetworkReadinessDatasource.fetchNetworkAssets()        → CoverageMapWidget (asset pins)
NetworkReadinessDatasource.fetchCoverageZones()        → CoverageMapWidget (zone polygons)
NetworkReadinessDatasource.fetchServiceCapacities()    → ServiceCapacityCard list
NetworkReadinessDatasource.fetchResourceUtilization()  → ResourceUtilizationChart
Bottleneck detected → ServiceCapacityCard flagged red
                   → Live Alerts feature triggered (risk alert)
```

---

## 11. Population Health

**Route:** `/population-health`

### Purpose

Macro-level analysis of the insured population's health profile. Shows disease prevalence, health trends over time, risk segmentation by cohort, and medication adherence rates by disease group — giving insurers the intelligence to design proactive wellness programmes.

### Domain Entities

#### `DiseasePrevalenceEntity`

| Field | Type | Description |
|-------|------|-------------|
| `category` | `DiseaseCategory` | diabetes, hypertension, cardiac, respiratory, kidney, mobility |
| `totalCases` | `int` | Number of diagnosed cases |
| `newCasesThisQuarter` | `int` | Recent incidence |
| `prevalenceRate` | `double` | % of insured population |
| `changeFromLastQuarter` | `double` | Quarter-on-quarter change |
| `criticalCases` | `int` | Severe cases |
| `mostAffectedZone` | `String` | Geographic hotspot |
| `costImpact` | `double` | Annual cost attributed to this disease |

#### `HealthTrendEntity`

| Field | Type | Description |
|-------|------|-------------|
| `metricName` | `String` | KPI name |
| `direction` | `TrendDirection` | improving, stable, declining |
| `currentValue` | `double` | Latest metric value |
| `changePercentage` | `double` | Change vs prior period |
| `quarterlyData` | `List<TrendDataPoint>` | Historical quarterly values |
| `insight` | `String` | AI-generated narrative insight |

#### `RiskSegmentationEntity`

| Field | Type | Description |
|-------|------|-------------|
| `segmentName` | `String` | Segment label |
| `population` | `int` | Segment size |
| `riskLevel` | `String` | Risk tier |
| `avgRiskScore` | `double` | Segment average risk |
| `estimatedAnnualCost` | `double` | Projected claims |
| `potentialSavings` | `double` | Achievable savings |
| `activeInterventions` | `int` | Interventions in play |
| `topConditions` | `List<String>` | Top diagnoses in segment |
| `recommendedAction` | `String` | Strategic recommendation |

#### `AdherenceCohortEntity`

| Field | Type | Description |
|-------|------|-------------|
| `cohortName` | `String` | Disease cohort name |
| `totalPatients` | `int` | Cohort population |
| `excellentAdherence` / `goodAdherence` / `fairAdherence` / `poorAdherence` | `int` | Count per tier |
| `avgAdherenceRate` | `double` | Overall adherence % |
| `hospitalizationRate` | `double` | Hospitalisation correlation |
| `costPerPatient` | `double` | Average cost per patient |
| `interventionsActive` | `List<String>` | Running interventions |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `populationHealthProvider` | `AsyncNotifier` | Loads all four population health data domains |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `PopulationHealthScreen` | Scrollable dashboard with four section cards. |
| `DiseasePrevalenceHeatmap` | Grid/heatmap visualisation showing disease prevalence by category. Each cell coloured by prevalence rate. |
| `HealthTrendChart` | Multi-line chart (`fl_chart`) showing quarterly trends for selected KPIs. Direction arrow beside each metric. |
| `RiskSegmentationChart` | Stacked bar chart showing population split by risk segment and cost impact. |
| `AdherenceCohortCard` | Card per disease cohort showing adherence tier stacked bar and cost-per-patient comparison. |

### Data Flow

```
PopulationHealthScreen → populationHealthProvider
  ↓
PopulationHealthDatasource fetches four datasets in parallel
  ↓
DiseasePrevalenceHeatmap ← List<DiseasePrevalenceEntity>
HealthTrendChart ← List<HealthTrendEntity>
RiskSegmentationChart ← List<RiskSegmentationEntity>
AdherenceCohortCard ← List<AdherenceCohortEntity>

Cross-feature: DiseasePrevalenceEntity.mostAffectedZone
  → feeds NetworkReadiness CoverageZone analysis
RiskSegmentationEntity
  → mirrors RiskEngine's RiskProfileEntity groupings
AdherenceCohortEntity
  → mirrors MedicationAdherence feature at population level
```

---

## 12. Safety Monitor

**Route:** `/safety-monitor`

### Purpose

Dedicated safety surveillance for high-risk vulnerable cohorts: elderly patients (fall risk), pregnant mothers and infants (maternal/infant safety), accident-recovery patients, and terminal illness patients. Proactively surfaces safety alerts and tracks scheduled preventive actions.

### Domain Entities

#### `CohortEntity`

| Field | Type | Description |
|-------|------|-------------|
| `cohortType` | `CohortType` | elderly, pregnancy, infantToddler, accidentRecovery, terminalIllness |
| `totalPatients` | `int` | Patients in cohort |
| `lowRisk` / `moderateRisk` / `highRisk` / `criticalRisk` | `int` | Risk tier counts |
| `activeAlerts` | `int` | Unresolved alerts |
| `incidentsThisMonth` / `incidentsLastMonth` | `int` | Incident comparison |
| `incidentChangePercentage` | `double` | Month-on-month change |
| `topRiskFactors` | `List<String>` | Common risk factors |
| `costImpact` | `double` | Financial impact |

#### `SafetyAlertEntity`

| Field | Type | Description |
|-------|------|-------------|
| `alertType` | `AlertType` | fallRisk, abnormalVitals, mobilityDeclining, missedMedication, inactivity, maternalComplication, infantDistress, painEscalation, recoverySetback, caregiverAlert |
| `severity` | `AlertSeverity` | low, medium, high, critical |
| `cohortType` | `CohortType` | Which cohort this patient belongs to |
| `patientName` / `patientId` | `String` | Patient reference |
| `alertMessage` | `String` | Human-readable alert |
| `detectedReason` | `String` | Technical detection cause |
| `requiresImmediateAction` | `bool` | Urgency flag |
| `recommendedAction` | `String` | Suggested response |
| `assignedCaregiver` | `String?` | Responder |
| `actionTaken` | `bool?` | Resolved? |

#### `RiskAssessmentEntity`

Patient-level risk assessment with individual `RiskFactor` items (factor name, score, description).

#### `PreventiveActionEntity`

| Field | Type | Description |
|-------|------|-------------|
| `actionType` | `ActionType` | homeSafetyInspection, caregiverVisit, physiotherapy, wearableCalibration, medicationReview, nutritionCounseling, prenatalCheckup, infantMonitoring, painManagement, mentalHealthSupport |
| `cohortType` | `CohortType` | Relevant cohort |
| `status` | `ActionStatus` | pending, scheduled, inProgress, completed |
| `scheduledFor` | `DateTime` | Appointment time |
| `assignedTo` | `String?` | Assigned care worker |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `safetyMonitorProvider` | `AsyncNotifier` | Loads cohort overviews, safety alerts, risk assessments, and preventive actions |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `SafetyMonitorScreen` | Tabbed screen: Cohort Overview, Active Alerts, Preventive Actions. |
| `CohortOverviewCard` | One card per cohort type. Shows patient count, risk tier donut chart, incident trend, and alert count badge. |
| `SafetyAlertCard` | Per-alert card with severity badge, alert type icon, patient name, message, cohort tag, and "Mark Action Taken" button. |
| `RiskDistributionChart` | Stacked bar chart showing cohort risk tier distribution. |
| `PreventiveActionsList` | Filtered list of scheduled/pending preventive actions. `ListTile` per action with status chip and calendar date. |

### Data Flow

```
SafetyMonitorScreen → safetyMonitorProvider
  ↓
SafetyMonitorDatasource.fetchCohorts()          → CohortOverviewCard list
SafetyMonitorDatasource.fetchSafetyAlerts()     → SafetyAlertCard list (critical first)
SafetyMonitorDatasource.fetchPreventiveActions() → PreventiveActionsList
  ↓
Alert.requiresImmediateAction = true
  → Also surfaces in LiveAlerts feature (AlertCategory.safety)
  → Also surfaces in Dashboard PreventionMetricEntity (Fall Risk Interventions)
Action completed → safetyMonitorProvider.markActionComplete()
  → PreventiveAction.status = completed
  → SafetyAlert.actionTaken = true
```

---

## 13. Medication Adherence

**Route:** `/population-health/medication`

### Purpose

Individual-level medication compliance tracking. Monitors whether insured patients with chronic conditions are taking their medications on schedule. Proactively identifies non-adherent patients and orchestrates interventions (reminders, counselling, pill box delivery, caregiver support) before missed doses escalate into a hospitalisation.

### Domain Entities

#### `PatientAdherenceEntity`

| Field | Type | Description |
|-------|------|-------------|
| `patientName` | `String` | Patient name |
| `condition` | `String` | Primary diagnosis |
| `totalMedications` / `activeMedications` | `int` | Medication count |
| `adherenceRate` | `double` | Overall adherence % |
| `adherenceLevel` | `AdherenceLevel` | excellent, good, fair, poor |
| `dosesScheduled` / `dosesTaken` / `dosesMissed` / `dosesDelayed` | `int` | Dose breakdown |
| `consecutiveMissedDoses` | `int` | Consecutive miss streak (triggers intervention) |
| `requiresIntervention` | `bool` | Flag for action needed |
| `riskFactors` | `List<String>` | Adherence barriers |

#### `MedicationEntity`

| Field | Type | Description |
|-------|------|-------------|
| `name` / `genericName` | `String` | Drug names |
| `type` | `MedicationType` | tablet, capsule, syrup, injection, inhaler, drops |
| `dosage` | `String` | Dose amount |
| `frequency` | `Frequency` | onceDaily, twiceDaily, threeTimesDaily, fourTimesDaily, asNeeded, weekly |
| `timings` | `List<String>` | Specific dose times |
| `prescribedBy` | `String` | Prescribing physician |

#### `AdherenceRecordEntity`

Per-dose record of whether medication was taken.

| Field | Type | Description |
|-------|------|-------------|
| `scheduledTime` | `DateTime` | When dose was due |
| `actualTime` | `DateTime?` | When dose was actually taken |
| `status` | `AdherenceStatus` | taken, missed, delayed, skipped |
| `reason` | `String?` | Reason for miss/skip |
| `verifiedByCaregiver` | `bool?` | Caregiver confirmed |

#### `InterventionEntity` (Medication Adherence)

| Field | Type | Description |
|-------|------|-------------|
| `type` | `InterventionType` | reminder, counseling, simplification, pillbox, caregiverSupport, financialAssistance |
| `status` | `InterventionStatus` | recommended, scheduled, inProgress, completed |
| `expectedOutcome` | `String` | Target improvement |
| `outcome` | `String?` | Actual result (on completion) |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `medicationAdherenceProvider` | `AsyncNotifier` | Loads patient adherence list; supports filter by adherence level |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `MedicationAdherenceScreen` | Filter bar (excellent/good/fair/poor) + patient adherence card list + summary stats (overall population adherence rate). |
| `PatientAdherenceCard` | Card per patient: name, condition, adherence % bar, level badge, consecutive miss count, and "Intervene" button if `requiresIntervention = true`. |
| `MedicationScheduleCard` | Expandable daily schedule for one patient. Each dose slot coloured: green=taken, red=missed, yellow=delayed, grey=upcoming. |
| `AdherenceTrendChart` | Line chart showing a patient's weekly adherence % over the last 12 weeks. |
| `InterventionActionCard` | Card per recommended intervention: type icon, description, expected outcome, status, and "Schedule" button. |

### Data Flow

```
MedicationAdherenceScreen → medicationAdherenceProvider
  ↓
MedicationAdherenceDatasource.fetchPatientAdherence()
  → Returns List<PatientAdherenceEntity> sorted by adherenceRate asc
  ↓
PatientAdherenceCard list rendered
consecutiveMissedDoses ≥ 3 → requiresIntervention = true
  → PatientAdherenceCard shows "Intervene" button
  → Also feeds SafetyMonitor (missedMedication alert)
  → Also feeds LiveAlerts (AlertCategory.medication)
"Intervene" → medicationAdherenceProvider.createIntervention(patientId, type)
  → Schedules InterventionEntity
  → Dashboard PreventionMetricEntity (Medication Adherence Alerts) incremented
```

---

## 14. Fraud Detection

**Route:** `/fraud-detection`

### Purpose

Multi-layer fraud detection combining anomaly detection, pattern recognition, and investigative case management to protect the insurer from fraudulent care-event claims, billing inflation, duplicate submissions, and provider collusion.

### Domain Entities

#### `FraudAlertEntity`

| Field | Type | Description |
|-------|------|-------------|
| `fraudType` | `FraudType` | duplicateClaim, inflatedBilling, serviceMismatch, identityFraud, providerCollusion, unnecessaryServices, billingManipulation, locationAnomaly |
| `severity` | `FraudAlertSeverity` | low, medium, high, critical |
| `status` | `AlertStatus` | pending, investigating, confirmed, dismissed |
| `claimId` | `String` | Linked claim |
| `patientName` / `providerName` | `String` | Parties involved |
| `claimAmount` | `double` | Amount under scrutiny |
| `fraudProbability` | `double` | ML confidence score (0–1) |
| `riskScore` | `int` | Composite risk score |
| `detectionReason` | `String` | Primary detection trigger |
| `anomalies` | `List<String>` | All detected anomalies |

#### `FraudPatternEntity`

Captures recurring fraud signatures detected at population level.

| Field | Type | Description |
|-------|------|-------------|
| `patternType` | `PatternType` | billing, timing, geographic, provider, patient |
| `occurrences` | `int` | How many times this pattern has been seen |
| `detectionRate` | `double` | Detection success rate |
| `falsePositiveRate` | `double` | False positive rate |
| `estimatedLoss` | `double` | Total financial exposure |
| `preventedLoss` | `double` | Amount saved |
| `affectedProviders` | `List<String>` | Implicated providers |

#### `InvestigationCaseEntity`

| Field | Type | Description |
|-------|------|-------------|
| `caseNumber` | `String` | Reference number |
| `status` | `CaseStatus` | open, investigating, evidenceGathering, underReview, closed |
| `priority` | `CasePriority` | low, medium, high, urgent |
| `outcome` | `CaseOutcome` | confirmed, notFraud, partialFraud, pending |
| `primarySuspect` / `suspectType` | `String` | Who is under investigation |
| `totalAmountInvolved` | `double` | Total claim value |
| `recoveredAmount` | `double` | Amount recovered |
| `evidenceCollected` | `List<String>` | Evidence items |
| `investigator` | `String` | Assigned investigator |

#### `ClaimVerificationEntity`

| Field | Type | Description |
|-------|------|-------------|
| `status` | `VerificationStatus` | pending, inProgress, verified, rejected, needsMoreInfo |
| `checksCompleted` / `checksPending` | `List<VerificationCheck>` | documentVerification, serviceValidation, priceValidation, providerValidation, patientValidation, medicalNecessity |
| `verificationScore` | `double` | 0–100 verification score |
| `redFlags` | `List<String>` | Detected issues |
| `verifiedDocuments` | `List<String>` | Confirmed documents |
| `recommendation` | `String?` | Approve/reject recommendation |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `fraudDetectionProvider` | `AsyncNotifier` | Loads fraud alerts, patterns, investigation cases, and pending claim verifications |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `FraudDetectionScreen` | Tabbed: Active Alerts, Patterns, Investigations, Claim Verification. |
| `FraudAlertCard` | Per-alert card: fraud type badge, severity chip, patient/provider, claim amount, fraud probability bar, anomaly list, and "Investigate" / "Dismiss" actions. |
| `FraudPatternChart` | Bar chart showing pattern occurrence frequency and prevented loss per pattern type. |
| `InvestigationCaseCard` | Case card: case number, status pill, priority badge, suspect, amounts involved/recovered, evidence count, and "Open Case" action. |
| `ClaimVerificationCard` | Verification checklist card: each check item shown with ✓/✗ icon and verification score progress bar. |

### Data Flow

```
FraudDetectionScreen → fraudDetectionProvider
  ↓
FraudDetectionDatasource fetches four datasets
  ↓
FraudAlertCard list (high/critical severity first)
  ↓
CareEvent with AuditFlag.requiresInvestigation = true
  → Auto-creates FraudAlertEntity
  → Feeds into FraudDetectionScreen
"Investigate" → fraudDetectionProvider.openInvestigation(alertId)
  → Creates InvestigationCaseEntity
  → Sets FraudAlertEntity.status = investigating
Confirmed case → recoveredAmount updated
  → Dashboard FinancialImpactEntity.totalSavings increases
Pattern detected → FraudPatternEntity.isActive = true
  → LiveAlerts: FraudAlertEntity in live feed
```

---

## 15. Live Alerts

**Route:** `/live-alerts`

### Purpose

A real-time cross-feature alert aggregator. All urgent signals from Emergency Triage, Safety Monitor, Fraud Detection, Medication Adherence, and Risk Engine surface here in a single, filterable, time-ordered feed. Operators acknowledge, escalate, or resolve alerts without leaving this screen.

### Domain Entities

#### `LiveAlertEntity`

| Field | Type | Description |
|-------|------|-------------|
| `category` | `AlertCategory` | emergency, safety, fraud, medication, riskEscalation, systemAlert |
| `priority` | `AlertPriority` | low, medium, high, critical, emergency |
| `status` | `AlertStatus` | active, acknowledged, inProgress, resolved, dismissed |
| `title` / `description` | `String` | Alert content |
| `source` | `String` | Feature that raised the alert |
| `triggeredAt` / `acknowledgedAt` / `resolvedAt` | `DateTime?` | Lifecycle timestamps |
| `patientId` / `patientName` | `String?` | Affected patient (if applicable) |
| `providerId` / `providerName` | `String?` | Affected provider (if applicable) |
| `location` | `String?` | Geographic context |
| `tags` | `List<String>` | Searchable tags |
| `metadata` | `Map<String, dynamic>` | Feature-specific extra data |
| `requiresImmediateAction` | `bool?` | Highest-urgency flag |
| `escalationLevel` | `int?` | 1–3 escalation level |

#### `AlertFilterEntity`

Filter criteria for the live alerts feed.

| Field | Type | Description |
|-------|------|-------------|
| `categories` | `List<AlertCategory>?` | Filter by category |
| `priorities` | `List<AlertPriority>?` | Filter by priority |
| `statuses` | `List<AlertStatus>?` | Filter by status |
| `startDate` / `endDate` | `DateTime?` | Date range filter |
| `searchQuery` | `String?` | Free-text search |
| `requiresImmediateAction` | `bool?` | Show only immediate-action items |

#### `AlertActionEntity`

Records the action taken on an alert (acknowledge, escalate, resolve).

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `liveAlertsProvider` | `AsyncNotifier` | Loads paginated alerts, applies filters; supports real-time refresh |
| `alertFilterProvider` | State for current `AlertFilterEntity` applied to the feed |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `LiveAlertsScreen` | Main feed screen. Stats panel at top. Filter panel toggle. Scrollable alert cards sorted by priority then time. |
| `AlertStatsPanel` | Summary tiles: total active, immediate-action count, acknowledged, resolved today. |
| `AlertFilterPanel` | Slide-in filter panel with category chips, priority selectors, status chips, date range pickers, and search field. |
| `LiveAlertCard` | Per-alert card: category icon + colour, priority badge, title, description, source tag, time-ago label, and quick action buttons (Acknowledge / Mark In Progress / Resolve / Dismiss). |
| `AlertTimelineView` | Chronological compact view (alternative to card view) showing alert dots on a timeline axis. |

### Data Flow

```
LiveAlertsScreen → liveAlertsProvider
  ↓
LiveAlertsDatasource.fetchAlerts(filter: AlertFilterEntity)
  → Aggregates alerts from all feature-level datasources
  → Applies category, priority, status, date, search filters
  → Returns sorted List<LiveAlertEntity>
  ↓
AlertStatsPanel shows counts
LiveAlertCard list rendered (emergency/critical priority first)
"Acknowledge" → liveAlertsProvider.acknowledgeAlert(id)
  → status = acknowledged
  → Notification badge count on AppBar decrements
"Resolve" → liveAlertsProvider.resolveAlert(id, actionTaken)
  → status = resolved
  → Feeds resolution back to originating feature:
       emergency → EmergencyCaseEntity status update
       fraud → FraudAlertEntity status update
       safety → SafetyAlertEntity.actionTaken = true
```

---

## 16. Insuree Management

**Routes:** `/insuree-management`, `/add-insuree`, `/insuree-details`

### Purpose

The member registry. Lists all 10,000 insured lives with their subscription status, policy details, expiry dates, and payment history. Allows adding new insurees, editing records, bulk-actioning subscriptions, and tracking auto-renewal status.

### Domain Entities

#### `InsureeEntity`

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Internal ID |
| `policyNumber` | `String` | Insurance policy number |
| `fullName` | `String` | Member name |
| `email` / `phoneNumber` | `String` | Contact details |
| `dateOfBirth` / `age` / `gender` | — | Demographics |
| `address` | `String` | Registered address |
| `status` | `InsureeStatus` | active, expiringSoon, expired, pendingPayment, removed, deceased |
| `subscriptionStartDate` / `subscriptionEndDate` | `DateTime` | Policy period |
| `isAutoRenew` | `bool` | Auto-renewal flag |
| `monthlyFee` | `double` | ₹49/month per insuree |
| `medicalHistory` / `notes` | `String?` | Health notes |
| `lastPaymentDate` / `nextPaymentDue` | `DateTime?` | Payment schedule |
| `daysUntilExpiry` | `int?` | Days to subscription end |

#### `SubscriptionEntity`

| Field | Type | Description |
|-------|------|-------------|
| `status` | `SubscriptionStatus` | active, expiring, expired, cancelled |
| `totalMonthsPaid` | `int` | Lifetime payments |
| `totalAmountPaid` | `double` | Cumulative payments |
| `autoRenew` | `bool` | Auto-renewal on/off |
| `cancellationReason` | `String?` | If cancelled |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `insureeProvider` | `AsyncNotifier` | Full list of insurees with search, filter, sort |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `InsureeManagementScreen` | Searchable, filterable list of all insurees. Status filter chips. Sort options (name, expiry, status). Bulk-select mode. |
| `AddInsureeScreen` | Multi-step form to register a new insuree: personal details, contact, medical notes, subscription type. |
| `InsureeDetailsScreen` | Full member profile: personal info, subscription card, payment history, health notes, and action buttons (renew, suspend, remove). |
| `InsureeCard` | Summary tile: member name, policy number, status badge, expiry date, auto-renew chip. |
| `SubscriptionStatusBadge` | Colour-coded badge (green=active, amber=expiring, red=expired/pending, grey=removed). |
| `BulkActionBar` | Appears on multi-select: "Renew Selected", "Send Reminder", "Export" actions. |

### Data Flow

```
InsureeManagementScreen → insureeProvider
  ↓
InsureeDatasource.fetchInsurees(filters, sort, searchQuery)
  → Paginated list of InsureeModel → mapped to InsureeEntity
  ↓
InsureeCard list rendered with SubscriptionStatusBadge
Tap → context.go('/insuree-details', extra: InsureeEntity)
  ↓
InsureeDetailsScreen shows full profile
"Renew" → insureeProvider.renewSubscription(insureeId)
  → Creates new SubscriptionEntity
  → Routes to /payment with insureeId
  → PaymentEntity linked back to InsureeEntity
"Add Insuree" → /add-insuree
  → AddInsureeScreen form submit
  → insureeProvider.addInsuree(newInsuree)
  → List refreshed
daysUntilExpiry ≤ 30 → status = expiringSoon
  → LiveAlerts: systemAlert generated
  → Notifications: claimsAlert created
```

---

## 17. Payment & Invoicing

**Routes:** `/payment`, `/payment-history`, `/invoice`

### Purpose

Handles subscription fee collection for the insured lives. The insurer partner pays ₹49/month per insured member. This feature supports multi-insuree batch payments, payment method selection (UPI, credit/debit card, net banking, wallet), generates PDF invoices, and maintains a full payment history.

### Domain Entities

#### `PaymentEntity`

| Field | Type | Description |
|-------|------|-------------|
| `transactionId` | `String` | Payment gateway transaction ID |
| `insureeIds` | `List<String>` | Insurees covered by this payment |
| `numberOfInsurees` | `int` | Count |
| `amountPerInsuree` | `double` | ₹49.00 |
| `totalAmount` | `double` | Before tax |
| `taxAmount` | `double` | GST |
| `grandTotal` | `double` | Total charged |
| `paymentMethod` | `PaymentMethod` | creditCard, debitCard, upi, netBanking, wallet |
| `status` | `PaymentStatus` | pending, processing, completed, failed, refunded |
| `completedAt` | `DateTime?` | Completion timestamp |
| `failureReason` | `String?` | Error message if failed |
| `receiptUrl` | `String?` | Receipt URL |

#### `InvoiceEntity`

| Field | Type | Description |
|-------|------|-------------|
| `invoiceNumber` | `String` | Sequential invoice number |
| `invoiceDate` / `dueDate` | `DateTime` | Invoice timeline |
| `billedTo` / `billedToAddress` | `String` | Insurer partner details |
| `items` | `List<InvoiceItemEntity>` | Line items (insuree subscription lines) |
| `subtotal` / `taxAmount` / `taxPercentage` / `total` | `double` | Financials |
| `isPaid` / `paidOn` | `bool` / `DateTime?` | Payment status |

#### `InvoiceItemEntity`

| Field | Type | Description |
|-------|------|-------------|
| `description` | `String` | e.g., "Subscription - John Doe (Jan 2025)" |
| `quantity` | `int` | Number of months |
| `unitPrice` | `double` | ₹49 |
| `amount` | `double` | `quantity × unitPrice` |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `paymentProvider` | `AsyncNotifier` | Processes payment, retrieves payment history |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `PaymentScreen` | Checkout screen. Receives `Map<String, dynamic>` extra with list of insureeIds. Shows payment summary, method selection, and "Pay Now" button. |
| `PaymentHistoryScreen` | Scrollable list of past `PaymentEntity` records with status badges, amounts, and "View Invoice" links. |
| `InvoiceScreen` | Full invoice view rendered in-app. "Download PDF" button uses `pdf` + `printing` to generate and share a PDF invoice. |
| `PaymentSummaryCard` | Shows number of insurees, amount per insuree, subtotal, tax, and grand total with breakdown. |
| `PaymentMethodCard` | Selectable card per payment method (UPI/card/net banking/wallet) with icon and radio selection. |

### Data Flow

```
InsureeManagementScreen "Renew" or "Pay Now"
  → context.go('/payment', extra: {insureeIds: [...], count: N})
  ↓
PaymentScreen receives extra → calculates PaymentEntity values
User selects PaymentMethod → paymentProvider.processPayment(entity)
  ↓
PaymentDatasource.processPayment() (mock gateway)
  → PaymentStatus.processing → PaymentStatus.completed
  ↓
InvoiceEntity auto-generated for completed payment
  → context.go('/invoice', extra: InvoiceEntity)
InvoiceScreen.downloadPDF()
  → pdf package generates formatted PDF
  → printing.shareDocument(pdf) opens device share sheet
PaymentHistoryScreen → paymentProvider.fetchPaymentHistory()
  → List<PaymentEntity> with links to InvoiceScreen
```

---

## 18. Analytics Dashboard

**Route:** `/analytics`

### Purpose

Platform usage analytics for the insurer partner organisation. Tracks how staff interact with the platform: logins, page views, alerts acknowledged, claims reviewed, fraud investigations, and reports generated. Provides activity charts and most-visited-pages breakdowns.

### Domain Entities

#### `AnalyticsStatsEntity`

| Field | Type | Description |
|-------|------|-------------|
| `totalLogins` | `int` | Total login events |
| `totalPageViews` | `int` | Page view count |
| `totalAlertsAcknowledged` | `int` | Alerts actioned |
| `totalClaimsReviewed` | `int` | Claims reviewed |
| `totalFraudInvestigations` | `int` | Investigations opened |
| `totalReportsGenerated` | `int` | Reports/PDFs exported |
| `avgSessionDuration` | `double` | Average session in minutes |
| `totalSearches` | `int` | Search queries |
| `featureUsage` | `Map<String, int>` | Per-feature view counts |
| `dailyActivity` | `Map<String, int>` | Activity by day-of-week |
| `mostVisitedPages` | `List<String>` | Top pages by visit count |

#### `UserActivityEntity`

Per-event activity log.

| Field | Type | Description |
|-------|------|-------------|
| `activityType` | `ActivityType` | login, pageView, alertAcknowledged, claimReviewed, fraudInvestigated, reportGenerated, settingsChanged, searchPerformed |
| `description` | `String` | Human-readable event description |
| `timestamp` | `DateTime` | Event time |
| `targetId` / `targetType` | `String?` | Linked entity (claim ID, alert ID, etc.) |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `analyticsProvider` | `AsyncNotifier` | Loads platform usage stats and activity log |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `AnalyticsDashboardScreen` | Overview of usage metrics with charts. |
| `StatsCard` | Numeric stat cards: logins, page views, alerts acknowledged, fraud investigations, session duration. |
| `ActivityChart` | Bar chart showing daily/weekly activity distribution. Secondary line chart for session duration trend. |

### Data Flow

```
AnalyticsDashboardScreen → analyticsProvider
  ↓
AnalyticsDatasource.fetchAnalyticsStats()
AnalyticsDatasource.fetchUserActivities()
  ↓
StatsCard grid ← AnalyticsStatsEntity
ActivityChart ← Map<String, int> dailyActivity
UserActivity log ← List<UserActivityEntity>
```

---

## 19. Notifications

**Routes:** `/notifications`, `/notification-preferences`

### Purpose

In-app notification centre for all system-generated events (emergencies, fraud alerts, safety alerts, medication alerts, risk escalations, system messages). Users can view, read, and archive notifications, and configure granular preferences for which alerts reach them and through which channels.

### Domain Entities

#### `NotificationEntity`

| Field | Type | Description |
|-------|------|-------------|
| `type` | `NotificationType` | emergency, fraud, safety, medication, risk, system, claims, network |
| `title` | `String` | Notification headline |
| `body` | `String` | Notification body text |
| `timestamp` | `DateTime` | When triggered |
| `status` | `NotificationStatus` | unread, read, archived |
| `actionUrl` | `String?` | Deep-link route to relevant screen |
| `data` | `Map<String, dynamic>?` | Contextual data payload |

#### `NotificationPreferenceEntity`

Comprehensive per-user preference object:
- **Channels:** email, push, SMS, in-app
- **Alert types:** emergency, fraud, safety, medication, risk, system, claims, network
- **Summaries:** daily, weekly, monthly digest opt-ins
- **Quiet hours:** configurable start/end times
- **Advanced:** sound, vibration, LED, priority level, muted keywords, muted providers

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `notificationsProvider` | `AsyncNotifier` | Fetches notification list; marks read/archived |
| `notificationPreferencesProvider` | `AsyncNotifier` | Loads and saves user preferences |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `NotificationsScreen` | Grouped notification feed (Today, Earlier). Unread count badge. Swipe-to-archive gestures. |
| `NotificationPreferencesScreen` | Settings page with toggle groups for channels, alert types, digest settings, quiet hours time pickers, and advanced options. |
| `NotificationCard` | Per-notification tile: type icon, colour-coded left border, title, body excerpt, time-ago label, unread dot. |
| `NotificationToggle` (widget) | `SwitchListTile` wrapper with icon, label, and description for each preference toggle. |
| `NotificationIconButton` (core widget) | App bar bell icon with unread-count badge dot; navigates to `/notifications`. |

### Data Flow

```
NotificationIconButton in AppBar shows unread count
  ↓
Tap → context.go('/notifications')
NotificationsScreen → notificationsProvider
  ↓
NotificationsDatasource.fetchNotifications()
  → List<NotificationEntity> sorted by timestamp desc
  ↓
NotificationCard list rendered (unread highlighted)
Tap notification → context.go(notification.actionUrl)
  → Deep-links to relevant feature screen
Mark read → notificationsProvider.markAsRead(id)
Mark archived → notificationsProvider.archiveNotification(id)
  → Badge count decrements
Preferences: NotificationPreferencesScreen
  → notificationPreferencesProvider.updatePreferences(entity)
  → Saved via NotificationsDatasource (SharedPreferences / remote)
```

---

## 20. Settings & Profile

**Routes:** `/settings`, `/profile`

### Purpose

User profile management and application preferences. Allows the insurer partner staff member to update their profile, configure display preferences (dark mode, compact view, date/time formats), manage notification settings, and access linked feature areas (help, legal, payment history).

### Domain Entities

#### `UserProfileEntity`

| Field | Type | Description |
|-------|------|-------------|
| `email` | `String` | Account email |
| `fullName` | `String` | Display name |
| `phoneNumber` | `String?` | Contact phone |
| `department` | `String?` | Organisational department |
| `role` | `UserRole` | admin, manager, analyst, operator, viewer |
| `joinedDate` | `DateTime` | Account creation |
| `bio` / `location` / `timezone` / `language` | `String?` | Profile details |

#### `UserPreferencesEntity`

| Field | Type | Description |
|-------|------|-------------|
| `darkMode` | `bool` | Theme selection |
| `accentColor` | `String` | UI accent colour |
| `compactView` | `bool` | Dense list view |
| `showAvatars` | `bool` | Show user avatars |
| `itemsPerPage` | `int` | Pagination size |
| `dateFormat` / `timeFormat` | `String` | Formatting preferences |
| `currency` | `String` | Currency symbol |
| `autoRefresh` | `bool` | Auto-refresh data |
| `refreshInterval` | `int` | Refresh interval in seconds |

#### `NotificationSettingsEntity`

Settings-module version of notification preferences (linked to the Notifications feature entity).

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `settingsProvider` | `AsyncNotifier` | Loads and persists user profile, preferences, and notification settings |
| `themeModeProvider` (core) | `Notifier<ThemeMode>` | Drives `MaterialApp.router` theme; synced with `UserPreferencesEntity.darkMode` |
| `appThemeProvider` (core) | Computed theme object | Returns `AppTheme` with light/dark `ThemeData` |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `SettingsScreen` | Grouped settings screen: Profile section (navigates to `/profile`), Preferences section, Notifications section, Account section (logout), Legal links, Help link. |
| `ProfileScreen` | Editable profile form: avatar, name, email (read-only), phone, department, bio, timezone, language. Save button. |
| `SettingsSection` | Labelled section container grouping related settings items. |
| `PreferenceTile` | `SwitchListTile` or `ListTile` with icon, label, trailing control (switch/chevron). |
| `ProfileAvatar` | Circular avatar widget showing initials or image with edit-photo overlay. |

### Data Flow

```
SettingsScreen → settingsProvider
  ↓
SettingsDatasource.fetchUserProfile()
SettingsDatasource.fetchUserPreferences()
SettingsDatasource.fetchNotificationSettings()
  ↓
SettingsSection rendered per domain
Toggle darkMode → settingsProvider.updatePreferences(preferences.copyWith(darkMode: !darkMode))
  → themeModeProvider.setTheme(ThemeMode.dark | ThemeMode.light)
  → MaterialApp.router re-builds with new ThemeData
ProfileScreen "Save" → settingsProvider.updateProfile(updatedProfile)
  → authProvider currentUser refreshed (name/avatar shown in AppBar)
"Logout" → authProvider.notifier.logout()
  → AuthState.unauthenticated → GoRouter redirects to /login
```

---

## 21. Help & Support

**Routes:** `/help-support`, `/faq`, `/contact-support`, `/article-detail`

### Purpose

Self-service help centre with categorised articles, a searchable FAQ library, and a support ticket submission form for direct contact with AltheaCare support.

### Domain Entities

#### `HelpArticleEntity`

| Field | Type | Description |
|-------|------|-------------|
| `category` | `ArticleCategory` | gettingStarted, features, bestPractices, troubleshooting, tutorials, integration |
| `title` / `summary` / `content` | `String` | Article text (markdown) |
| `tags` | `List<String>` | Searchable tags |
| `readTime` | `int` | Estimated read time in minutes |
| `views` | `int` | View count |

#### `FAQEntity`

| Field | Type | Description |
|-------|------|-------------|
| `category` | `FAQCategory` | general, alerts, fraud, claims, patients, technical |
| `question` / `answer` | `String` | Q&A pair |
| `helpfulCount` / `notHelpfulCount` | `int` | Helpfulness rating |

#### `SupportTicketEntity`

| Field | Type | Description |
|-------|------|-------------|
| `ticketNumber` | `String` | Reference number |
| `category` | `TicketCategory` | technical, billing, feature, bug, question, other |
| `priority` | `TicketPriority` | low, medium, high, urgent |
| `status` | `TicketStatus` | open, inProgress, waitingForResponse, resolved, closed |
| `subject` / `description` | `String` | Ticket content |
| `attachments` | `List<String>?` | Attached files |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `helpSupportProvider` | `AsyncNotifier` | Loads articles and FAQs; submits support tickets |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `HelpSupportScreen` | Home screen: search bar, category cards, featured articles, FAQ shortcut, contact button. |
| `FAQScreen` | Searchable accordion FAQ list. Category filter chips. Tapping expands answer with helpful/unhelpful feedback buttons. |
| `ArticleDetailScreen` | Full article rendered with `flutter_markdown`. Tags, read time, last-updated date. |
| `ContactSupportScreen` | Support ticket form: category dropdown, priority selector, subject, description, attachment upload. Submit creates `SupportTicketEntity`. |
| `HelpArticleCard` | Card: article title, category badge, summary, read time chip. Navigates to `ArticleDetailScreen` via `extra: HelpArticleEntity`. |
| `FAQCard` | Expandable tile for one FAQ with helpfulness rating row below the answer. |
| `SupportCategoryCard` | Category grid card (icon + label) used on the help home screen. |

### Data Flow

```
HelpSupportScreen → helpSupportProvider
  ↓
HelpSupportDatasource.fetchHelpArticles()
HelpSupportDatasource.fetchFAQs()
  ↓
HelpArticleCard list (featured)
Category card taps → FAQScreen with category pre-filter
Article card tap → context.go('/article-detail', extra: HelpArticleEntity)
ContactSupportScreen.submitTicket()
  → helpSupportProvider.submitTicket(ticket)
  → HelpSupportDatasource.createSupportTicket(model)
  → Success → confirmation dialog with ticket number
```

---

## 22. Legal

**Routes:** `/legal/privacy`, `/legal/terms`, `/legal/about`

### Purpose

Displays legal documents (privacy policy, terms of service) and the app's About page including team information, technology stack, and support contacts.

### Domain Entities

#### `LegalDocumentEntity`

| Field | Type | Description |
|-------|------|-------------|
| `title` | `String` | Document title |
| `content` | `String` | Full markdown content |
| `lastUpdated` | `DateTime` | Version date |
| `version` | `String` | Document version |
| `sections` | `List<LegalSectionEntity>?` | Structured sections |

#### `LegalSectionEntity`

Each section has a `title`, `content`, and optional `bulletPoints`.

#### `AppInfoEntity`

| Field | Type | Description |
|-------|------|-------------|
| `appName` / `version` / `buildNumber` | `String` | App identifiers |
| `companyName` / `companyWebsite` | `String` | AltheaCare details |
| `supportEmail` / `supportPhone` | `String` | Support contacts |
| `features` | `List<String>` | Feature summary list |
| `team` | `List<TeamMemberEntity>` | Team members with roles |
| `technologies` | `List<TechnologyEntity>` | Tech stack list |

### Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `legalProvider` | `AsyncNotifier` | Loads legal documents and app info |

### Screens & Widgets

| Component | Description |
|-----------|-------------|
| `PrivacyPolicyScreen` | Renders privacy policy sections using `LegalSection` widgets. |
| `TermsOfServiceScreen` | Renders terms of service sections. |
| `AboutScreen` | App info card, feature list, team member cards, technology list, version info, support contacts. |
| `LegalSection` | Widget rendering one `LegalSectionEntity`: heading, body text, optional bullet list. |

---

## 23. Core Infrastructure

### `core/constants/`

| File | Content |
|------|---------|
| `app_colors.dart` | `AppColors` class: `primarySteelBlue`, `success`, `emergencyAmber`, `info`, `darkText*`, `lightText*`, etc. |
| `app_constants.dart` | `AppConstants`: app name, version, `clusterLocation = 'Kasba, South Kolkata'`, `totalInsuredLives = 10000`, `monthlyFeePerInsuree = 49.0`, `averageClaimCost = 150000.0`, timeouts, animation durations. |
| `app_text_styles.dart` | Text style presets for consistent typography. |

### `core/theme/`

| File | Content |
|------|---------|
| `app_theme.dart` | `AppTheme` class with `lightTheme` and `darkTheme` `ThemeData` objects using Material 3. Uses `BalooBhaijaan2` font family and `AppColors` tokens. |
| `theme_provider.dart` | `themeModeProvider` (`Notifier<ThemeMode>`) and `appThemeProvider`. Both watch `settingsProvider` to sync theme with user preferences. |

### `core/models/`

| Model | Purpose |
|-------|---------|
| `NavigationItem` | Immutable navigation item used by shell navigation providers (see §2). |

### `core/utils/`

| File | Purpose |
|------|---------|
| `logger.dart` | Structured `Logger` class with `Logger.info()`, `Logger.error()` etc. All datasources and providers log through this. |
| `extensions.dart` | Dart/Flutter extension methods: `String.isValidEmail`, `BuildContext.showSnackBar()`, `BuildContext.isDesktop` (width ≥ 1024). |
| `app_info_provider.dart` | `@riverpod` provider that reads `PackageInfo` via `package_info_plus` for version/build number. |

### `core/widgets/`

| Widget | Purpose |
|--------|---------|
| `CustomButton` | Flexible button with `variant` (filled/outlined/text) and `size` (small/medium/large) parameters. Supports icon left/right. |
| `CustomTextField` | Form text field with label, hint, prefix icon, optional password toggle, validator slot. |
| `LoadingOverlay` | Overlay widget that shows a blurred loading spinner with message when `isLoading = true`. |
| `ShimmerLoading` | Skeleton loading placeholder using `shimmer` package. Used across all list screens. |
| `NotificationIconButton` | Bell icon with unread-count badge for use in app bar. |
| `AnimatedPageIndicator` | Animated page dot indicator for onboarding. |
| `AppDrawer` | Base drawer widget extended by `NavigationDrawerWidget`. |

---

## 24. Cross-Feature Data Flow

This section maps the key data flows that connect multiple features together.

### 1. Risk Escalation Pipeline

```
RiskEngine (RiskProfileEntity.riskScore > threshold)
  ↓
LiveAlerts (AlertCategory.riskEscalation, AlertPriority.high|critical)
  ↓
Notifications (NotificationType.risk)
  ↓
Dashboard (ClusterStatsEntity.highRiskPatients counter updates)
```

### 2. Care Event → Fraud Pipeline

```
CareEvent completed with AuditFlag (gpsDiscrepancy | bleHandshakeMissing | duplicateClaim)
  ↓  AuditFlagEntity.requiresInvestigation = true
FraudDetection (FraudAlertEntity auto-created with fraudProbability from anomaly analysis)
  ↓
LiveAlerts (AlertCategory.fraud)
  ↓  if confirmed
FinancialImpact (Dashboard totalSavings += recoveredAmount)
```

### 3. Medication Non-Adherence → Safety & Alerts Pipeline

```
MedicationAdherence (consecutiveMissedDoses ≥ 3)
  ↓  PatientAdherenceEntity.requiresIntervention = true
SafetyMonitor (SafetyAlertEntity of type missedMedication)
  ↓
LiveAlerts (AlertCategory.medication, AlertPriority.high)
  ↓
Notifications (NotificationType.medication)
  ↓
Dashboard (PreventionMetricEntity "Medication Adherence Alerts" count++)
```

### 4. Emergency Triage → Pre-Auth → Financial Impact

```
EmergencyCase dispatched (EmergencyCaseEntity.status = dispatched)
  ↓
LiveAlerts (AlertCategory.emergency, AlertPriority.emergency)
  ↓
Insurer reviews PatientVitalsEntity in EmergencyCaseDetailsScreen
  ↓  "Approve Pre-Auth"
PreAuthEntity.status = approved, approvedAmount set
  ↓
Dashboard FinancialImpactEntity.estimatedCost aggregation
  → hospitalizationsAvoided counter (if pre-auth leads to non-hospitalisation)
```

### 5. Insuree Expiry → Payment → Subscription Renewal

```
InsureeEntity.daysUntilExpiry ≤ 30
  ↓  status = expiringSoon
Notifications (NotificationType.claims — "Subscription expiring soon")
  ↓
LiveAlerts (AlertCategory.systemAlert)
  ↓
InsureeManagementScreen "Renew" CTA
  ↓
PaymentScreen → PaymentEntity processed
  → InvoiceEntity generated
  → InsureeEntity.subscriptionEndDate extended
  → SubscriptionEntity.status = active
```

### 6. Safety Monitor → Preventive Action → Network Readiness

```
SafetyMonitor (CohortEntity.activeAlerts > threshold)
  ↓
PreventiveActionEntity created (e.g., physiotherapy, caregiverVisit)
  ↓
NetworkReadiness (ServiceCapacityEntity.currentUtilization++)
  → If isBottleneck → NetworkReadiness alert
  → Dashboard nursesOnDuty / ambulancesAvailable refreshed
```

### 7. Dashboard → Feature Deep Links

The Dashboard surface acts as a quick navigation hub. Tapping any `StatCard`, `RiskDistributionCard`, or `PreventionCounterCard` deep-links to the relevant feature:

| Dashboard Element | Deep Link |
|-------------------|-----------|
| High-risk patient count | `/risk-engine` |
| Ambulances available | `/analytics/network-readiness` |
| Hospitalizations Averted | `/analytics/claims-prevention` |
| Medication Adherence Alerts | `/population-health/medication` |
| Fall Risk Interventions | `/safety-monitor` |
| Emergency Triage Responses | `/emergency-triage` |

---

*This document covers the complete feature set of the AltheaCare Insurer Partner Intelligence Platform as implemented in the Flutter codebase. All data shown in the mock datasources is randomly generated within realistic bounds to simulate a live 10,000-life cluster operating in Kasba, South Kolkata.*
