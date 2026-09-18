import SwiftUI
import GoogleMobileAds

@main
struct TILIOE0CloudGateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("E0-8 Cloud Xcode Gate")
                .font(.title.bold())

            Text("GoogleMobileAds module: linked")
                .font(.headline)
        }
        .padding()
    }

    private var compileTimeLinkProbe: MobileAds {
        MobileAds.shared
    }
}
