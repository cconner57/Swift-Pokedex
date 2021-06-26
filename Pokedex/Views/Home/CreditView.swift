import SwiftUI

struct CreditView: View {
    var body: some View {
		VStack(alignment: .center, spacing: 25) {
			VStack {
				Text("Email me at")
				Link("csconner@protonmail.com", destination: URL(string: "mailto:csconner@protonmail.com")!)
				Text("with any questions or conercerns")
			}
			.multilineTextAlignment(.center)
			VStack {
				Text("Data gathered from:")
				Link("pokemondb.net", destination: URL(string: "https://pokemondb.net")!)
				Link("bulbagarden.net", destination: URL(string: "https://bulbagarden.net")!)
			}
				.multilineTextAlignment(.center)
			VStack(alignment: .center, spacing: 5) {
				Text("Project Roadmap")
					.underline()
					.bold()
				Text("Pokemon Unite")
				Text("Pokedex Gen 2+")
				Text("Pokemon Snap")
			}
			
			VStack {
				Text("Some of my other projects")
				Link("Github Link", destination: URL(string: "https://github.com/cconner57")!)
			}
			
			VStack {
				Text("Special thanks to Allison_Wonderland \nfor reviewing and testing the app 😊")
			}
		}
    }
}
