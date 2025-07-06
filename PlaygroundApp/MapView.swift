import MapKit
import SwiftUI

struct MapView: View {
	@State var position: MapCameraPosition = .region(
		MKCoordinateRegion(
			center: CLLocationCoordinate2D(
				latitude: 49.45005,
				longitude: 6.76432
			),
			span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
		)
	)
	
	var body: some View {
		ZStack {
			Color.red.grayscale(0.5)
		}
		
		VStack() {
			Map(position: $position) {
				Marker(
					"Erbringen",
					monogram: Text("L0"),
					coordinate: CLLocationCoordinate2D(latitude: 49.443446, longitude: 6.737988)
				)
				Marker(
					"Im Wittum 12",
					monogram: Text("L1"),
					coordinate: CLLocationCoordinate2D(latitude: 49.450042, longitude: 6.764320)
				)
				Marker(
					"Ortschaft",
					monogram: Text("L2"),
					coordinate: CLLocationCoordinate2D(latitude: 49.483878, longitude: 6.830500)
				)
			}.aspectRatio(1, contentMode: .fit)
				.clipShape(RoundedRectangle(cornerRadius: 12))
				.mapStyle(.imagery)
			Text("Aenean leo ligula").font(.largeTitle)
			Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. ")
			Spacer()
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
