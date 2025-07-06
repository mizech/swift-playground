import SwiftUI

struct ImagesView: View {
    var body: some View {
		NavigationStack {
			VStack {
				Image(.lahaina)
					.resizable()
					.scaledToFit()
			}
		}
    }
}

#Preview {
    ImagesView()
}
