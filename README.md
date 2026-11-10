# CICT Org Fair

GitHub repository: TBD
Deployed Web App URL: TBD

A Flutter project for the CICT Organization Fair.

## Run locally

```bash
cd "C:\Users\renzr\Downloads\CC-207B_26-27_Activities\B\RENZ_RAMOS\UNIT_8__ASSIGMENT"
flutter pub get
flutter run
```

For the release build using a CMS config file:

```bash
flutter build web --release --dart-define-from-file=cms.json
```

Copy `cms.example.json` to `cms.json` and add your CMS values before running the app.
