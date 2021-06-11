import SwiftUI

struct PokedexListView: View {
	var pokemon: [PokemonItem] = readPokedexJson()!
	
	@State private var showFavorite = false
	@State private var showType = FilterPokemonType.all
	@State private var showGens = FilterPokemonGen.all
	
	@StateObject var genSelected = PokedexObject()
	
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
					.animation(.default)
				}
				.padding(.top)
				PokedexFilter(genSelected: genSelected, favorite: $showFavorite, type: $showType, gens: $showGens)
					.animation(.default)
			}
		}
		.navigationBarTitle("Pokedex", displayMode: .inline)
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text("National Pokedex")
					.font(.title2)
					.bold()
			}
		}
	}
}
