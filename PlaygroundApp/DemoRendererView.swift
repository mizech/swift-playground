import SwiftUI

@MainActor
struct DemoRendererView: View {
    var body: some View {
		VStack {
			Text("This is a headline.")
				.font(.largeTitle)
			Text("This should wrap the view.")
		}.padding()
    }
}

#Preview {
    DemoRendererView()
}
