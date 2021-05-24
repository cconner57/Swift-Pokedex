import SwiftUI

struct PokedexListView: View {
    var body: some View {
		VStack {
			LazyVGrid(columns: [GridItem(.fixed(180)), GridItem(.fixed(180))], content: {
				PokedexItemView(title: "Bulbasaur", color: UIColor.pokeGreen)
				PokedexItemView(title: "Ivysaur", color: UIColor.pokeGreen)
			})
		}
		.navigationBarTitle("Pokedex", displayMode: .automatic)
	}
}
