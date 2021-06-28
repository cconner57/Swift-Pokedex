import SwiftUI

struct SearchbarView: View {
	@Environment(\.colorScheme) var colorScheme
	
	@State private var searchText = ""
	
    var body: some View {
		HStack(alignment: .center, spacing: 10) {
			Image(systemName: "magnifyingglass")
				.font(.title2)
				.foregroundColor(colorScheme == .dark ? .white : .black)
			TextField("Search Pokemon, Items, Ability, etc.", text: $searchText)
				.disableAutocorrection(true)
				.autocapitalization(.none)
				.font(.headline)
		}
		.padding()
		.background(colorScheme == .dark ? Color(red: 45/255, green: 45/255, blue: 45/255) : Color(red: 245/255, green: 245/255, blue: 245/255))
		.cornerRadius(30)
		.shadow(color: colorScheme == .dark ? .white.opacity(0.7) : .gray.opacity(0.7), radius: 10)
		.padding()
    }
}
