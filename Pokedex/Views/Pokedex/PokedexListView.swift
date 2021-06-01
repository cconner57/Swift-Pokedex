import SwiftUI

struct PokedexListView: View {
	
	var pokemon: [PokemonItem] = readJson()!
	
	var body: some View {
		VStack {
			ZStack {
				ScrollView {
					LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 185))], content: {
						ForEach(pokemon, id: \.num) { pokemon in
							NavigationLink(destination: PokedexItemDetail(pokemon: pokemon)) {
								PokedexItemView(name: pokemon.name, number: pokemon.num, type: pokemon.type)
							}
						}
					})
				}
				.padding(.top)
				PokedexFilter()
					.animation(.default)
			}
		}
		.navigationBarTitle("Pokedex", displayMode: .inline)
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text("Pokemon")
					.font(.title)
					.bold()
			}
		}
	}
}
