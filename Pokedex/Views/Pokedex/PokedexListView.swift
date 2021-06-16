import SwiftUI

struct PokedexListView: View {
	var pokemon: Pokedex = readPokedexJson()!
	
	@State private var listView = false
	
	@State private var showFavorite = false
	@State private var showType = FilterPokemonType.all
	@State private var showGens = FilterPokemonGen.all
	
	@StateObject var genSelected = PokedexObject()
	
	var body: some View {
		VStack {
			ZStack {
				ScrollView {
					if !listView {
						LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 185))]) {
							ForEach(pokemon, id: \.num) { pokemon in
								NavigationLink(destination: PokedexItemDetail(pokemon: pokemon)) {
									PokedexItemView(name: pokemon.name, number: pokemon.num, type: pokemon.type)
								}
							}
						}
						.animation(.default)
					} else {
						LazyVStack(alignment: .center, spacing: 20) {
							ForEach(pokemon, id: \.num) { pokemon in
								NavigationLink(destination: PokedexItemDetail(pokemon: pokemon)) {
									PokedexListItemView(name: pokemon.name, number: pokemon.num, type: pokemon.type)
								}
							}
						}
					}
				}
				.padding(.top)
				PokedexFilter(genSelected: genSelected, favorite: $showFavorite, type: $showType, gens: $showGens)
					.animation(.default)
			}
		}
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text("National Pokedex")
					.font(.title2)
					.bold()
			}
			ToolbarItem(placement: .navigationBarTrailing) {
				Button(action: {
					listView.toggle()
				}) {
					Image(systemName: listView ? "square.grid.2x2" : "list.bullet")
				}
			}
		}
	}
}
