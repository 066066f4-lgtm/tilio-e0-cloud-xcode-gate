# Third-Party / Tooling Notes

This repository is a non-distribution technical gate.

## XcodeGen
- Project: XcodeGen
- Repository: https://github.com/yonaskolb/XcodeGen
- License: MIT
- Use here: CI build-time project generation only. No XcodeGen source is vendored into this repository or the test app.

## Google Mobile Ads Swift Package
- Repository: https://github.com/googleads/swift-package-manager-google-mobile-ads
- Package wrapper license: Apache License 2.0
- Pinned gate version: 13.10.0
- The package downloads Google's prebuilt Google Mobile Ads SDK binary. Use of the SDK is subject to Google's applicable SDK / developer terms.
- No real AdMob identifiers or ad requests are used in this gate.

## GitHub Actions
- GitHub-hosted macOS runner is used only to verify compilation.
