import SwiftUI

struct FormView: View {
	@State var firstName = ""
	@State var lastName = ""
	@State var email = ""
	@State var phone = ""
	@State var website = ""
	
    var body: some View {
		Form {
			Section("User") {
				TextField("First name", text: $firstName)
				TextField("Last name", text: $lastName)
			}
			Image(.apple)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 80, height: 80, alignment: .center)
				.border(Color.black)
				.clipped()
			Section("Contact") {
				TextField("Email", text: $email)
				TextField("Phone", text: $phone)
				TextField("Website", text: $website)
			}
			Section {
				Button(action: {
					print(URL.documentsDirectory.path(percentEncoded: false))
				}) {
					Text("Submit")
						.padding()
						.frame(height: 40)
						.frame(maxWidth: .infinity)
						.background(.blue)
						.foregroundStyle(.white)
						.cornerRadius(12)
				}
			}
		}.formStyle(.grouped)
    }
}

#Preview {
    FormView()
}
