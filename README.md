# TILIO E0 Cloud Xcode Gate

This repository is an isolated technical gate only.

Purpose:
- Verify that GitHub Actions macOS + Xcode can resolve and compile Google Mobile Ads through Swift Package Manager.
- Verify a no-local-Mac build path before any TILIO production source is introduced.

Scope restrictions:
- No TILIO production source code.
- No real AdMob App ID or ad unit ID.
- No ad requests.
- No signing, archiving, or App Store upload.
- Simulator compile only.

Expected gate:
`SwiftUI app -> XcodeGen -> Xcode project -> Google Mobile Ads SPM binary -> xcodebuild (iOS Simulator)`.

CI trigger marker: E0-8
