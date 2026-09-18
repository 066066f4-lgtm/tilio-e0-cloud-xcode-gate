# E0-8 Cloud Xcode Gate Result

## Result

**PASS**

A GitHub-hosted macOS/Xcode environment successfully generated an iOS Xcode project, resolved the official Google Mobile Ads Swift Package and its UMP dependency, compiled the SwiftUI probe app, and linked the Google binary frameworks without requiring a locally owned Mac.

## Tested scope

- Repository: `066066f4-lgtm/tilio-e0-cloud-xcode-gate`
- Gate commit: `32ab193417a708102b660d00adcd2cf47a406aaa`
- GitHub Actions run: `35389361097`
- Job: `105743849496`
- Runner: macOS 26.6.2, ARM64
- Xcode: 26.6 (17F113)
- Swift toolchain: Apple Swift 6.3.3
- XcodeGen: 2.46.0
- Test deployment target: iOS 15.0
- Build destination: generic iOS Simulator
- Code signing: disabled for this compile-only gate

## Package resolution

Resolved successfully:

- Google Mobile Ads Swift Package: **13.10.0**
  - revision: `12b7af0f844723a86fd3c0089b02f64b1e495605`
- Google User Messaging Platform Swift Package: **3.1.0**
  - revision: `13b248eaa73b7826f0efb1bcf455e251d65ecb1b`

## Build evidence

The Xcode dependency graph included:

- `GoogleMobileAds`
- `GoogleMobileAdsTarget`
- `GoogleUserMessagingPlatform`
- `UserMessagingPlatformTarget`

The linker invocation included:

- `-framework GoogleMobileAds`
- `-framework UserMessagingPlatform`

Final result:

`** BUILD SUCCEEDED **`

The simulator app was built as a universal simulator binary for ARM64 and x86_64.

## Artifact

- Artifact name: `e0-8-cloud-xcode-evidence`
- Artifact ID: `10565004337`
- Artifact SHA-256 digest:
  `faacce42249ae0813149b0f73a35f632252102853c3d77affb55ba9d37eeea75`
- Artifact retention configured by the workflow: 14 days

## What this proves

This gate proves that the no-local-Mac development plan can use a GitHub-hosted macOS/Xcode build layer for an Xcode-only binary Swift Package such as Google Mobile Ads.

It also proves that the official Google Mobile Ads 13.10.0 package and UMP 3.1.0 dependency can be resolved and linked by the cloud Xcode build environment used in this run.

## What this does NOT prove

This compile-only gate does not yet prove:

- production code signing or provisioning
- installation on a physical iPad
- App Store archive / validation / upload
- real AdMob App ID configuration
- real ad requests or ad rendering
- ATT behavior
- UMP consent UI / production consent flow
- App Store review acceptance
- full TILIO integration

No TILIO production source code, real AdMob identifiers, or ad requests were used.
