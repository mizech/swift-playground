import SwiftUI

@main
struct PlaygroundApp: App {
    var body: some Scene {
		let monitor = NetworkMonitor()
		
        WindowGroup {
            ContentView()
				.environmentObject(monitor)
        }
    }
}
