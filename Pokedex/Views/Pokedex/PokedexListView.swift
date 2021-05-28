import SwiftUI

struct PokedexListView: View {
	var body: some View {
		VStack {
			ZStack {
				ScrollView {
					LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 185))], content: {
						NavigationLink(destination: PokedexItemDetail(title: "Bulbasaur", number: "#001", image: "bulbasaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)) {
							PokedexItemView(title: "Bulbasaur", number: "#001", image: "bulbasaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Ivysaur", number: "#002", image: "ivysaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)) {
							PokedexItemView(title: "Ivysaur", number: "#002", image: "ivysaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Venasaur", number: "#003", image: "venasaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)) {
							PokedexItemView(title: "Venasaur", number: "#003", image: "venasaur", type1: "Grass", type2: "Poison", color: UIColor.pokeGreen)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Charmander", number: "#004", image: "charmander", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)) {
							PokedexItemView(title: "Charmander", number: "#004", image: "charmander", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Charmeleon", number: "#005", image: "charmeleon", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)) {
							PokedexItemView(title: "Charmeleon", number: "#005", image: "charmeleon", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Charizard", number: "#006", image: "charizard", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)) {
							PokedexItemView(title: "Charizard", number: "#006", image: "charizard", type1: "Fire", type2: "Flying", color: UIColor.pokeRed)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Squirtle", number: "#007", image: "squirtle", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)) {
							PokedexItemView(title: "Squirtle", number: "#007", image: "squirtle", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Wartortle", number: "#008", image: "wartortle", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)) {
							PokedexItemView(title: "Wartortle", number: "#008", image: "wartortle", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Blastoise", number: "#009", image: "blastoise", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)) {
							PokedexItemView(title: "Blastoise", number: "#009", image: "blastoise", type1: "Water", type2: "Flying", color: UIColor.pokeBlue)
						}
						NavigationLink(destination: PokedexItemDetail(title: "Caterpie", number: "#010", image: "caterpie", type1: "Bug", type2: "Flying", color: UIColor.pokeGreen)) {
							PokedexItemView(title: "Caterpie", number: "#010", image: "caterpie", type1: "Bug", type2: "Flying", color: UIColor.pokeGreen)
						}
					})
				}
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Image(systemName: "slider.horizontal.3")
						.font(.title2)
						.padding()
						.foregroundColor(.white)
						.background(Color.blue)
						.clipShape(Circle())
					
				})
				.offset(x: 125.0, y: 325)
				.shadow(color: Color.gray, radius: 8, x: 0, y: 3)
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
