import Network
import SwiftUI

struct Person: Identifiable, Hashable {
	let id = UUID()
	var firstName: String
	var lastName: String
	var email: String
}

struct ContentView: View {
	var people = [Person(firstName: "Name_01", lastName: "Name_02", email: "email01@example.com"),
				  Person(firstName: "Name_02", lastName: "Name_02", email: "email02@example.com"),
				  Person(firstName: "Name_03", lastName: "Name_02", email: "email03@example.com"),
				  Person(firstName: "Name_04", lastName: "Name_02", email: "email04@example.com"),
				  Person(firstName: "Name_05", lastName: "Name_02", email: "email05@example.com")]
	
	var body: some View {
		List {
			ForEach(people, id: \.id) { person in
				Text(person.email)
			}
		}.listStyle(.plain)
	}
}

#Preview {
	ContentView()
}
