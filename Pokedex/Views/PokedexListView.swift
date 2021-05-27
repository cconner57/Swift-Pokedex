import SwiftUI

struct PokedexListView: View {
	var body: some View {
		VStack {
			ScrollView {
				LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 185))], content: {
					Group {
						PokedexItemView(title: "Bulbasaur", number: "#001", image: "bulbasaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)
						PokedexItemView(title: "Ivysaur", number: "#002", image: "ivysaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)
						PokedexItemView(title: "Venasaur", number: "#003", image: "venasaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)
						PokedexItemView(title: "Charmander", number: "#004", image: "charmander", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)
						PokedexItemView(title: "Charmeleon", number: "#005", image: "charmeleon", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)
						PokedexItemView(title: "Charizard", number: "#006", image: "charizard", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)
						PokedexItemView(title: "Squirtle", number: "#007", image: "squirtle", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)
						PokedexItemView(title: "Wartortle", number: "#008", image: "wartortle", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)
						PokedexItemView(title: "Blastoise", number: "#009", image: "blastoise", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)
						PokedexItemView(title: "Caterpie", number: "#010", image: "caterpie", type1: "Bug", type2: "Flying", color: UIColor.pokeGreen)
					}
				})
			}
		}
		.navigationBarTitle("Pokedex", displayMode: .automatic)
	}
}
