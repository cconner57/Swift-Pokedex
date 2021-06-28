import SwiftUI

struct PokedexItemDetail: View {
	var pokemon: PokemonItem
	
	@State private var selectedMenu = 0
	
	var body: some View {
		
		VStack {
			VStack {
				HStack {
					Text(pokemon.name)
						.font(.largeTitle)
						.bold()
					Spacer()
					Text("#\(pokemon.num)")
						.font(.title2)
						.bold()
				}
				.padding(.bottom, 1)
				HStack {
					ForEach(pokemon.type, id: \.self) { type in
						Text(type)
							.font(.footnote)
							.bold()
							.padding(.all, 10)
							.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
							.cornerRadius(15)
							.clipShape(Capsule(), style: FillStyle())
					}
					Spacer()
					Text(pokemon.species)
						.font(.title3)
				}
				Image(pokemon.name.lowercased())
					.resizable()
					.frame(width: 250, height: 250)
			}
			.padding()
			.background(
				Image("pokeball-1")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 275)
					.offset(y: 50)
			)
			.background(Color(findColor(pokemon.type.first!)))
			.foregroundColor(.white)
			VStack {
				Picker(selection: $selectedMenu, label: Text("Picker"), content: {
					Text("About").tag(0)
					Text("Base Stats").tag(1)
					Text("Evolution").tag(2)
					Text("Moves").tag(3)
				})
				.pickerStyle(SegmentedPickerStyle())
				.padding()
				if selectedMenu == 0 {
					PokedexAbout(about: pokemon.about, height: pokemon.height, weight: pokemon.weight, gender: pokemon.gender!, eggGroup: pokemon.eggGroup, eggCycle: pokemon.eggCycle)
				} else if selectedMenu == 1 {
					PokedexBaseStats(baseStats: pokemon.baseState, name: pokemon.name)
				} else if selectedMenu == 2 {
					ScrollView(.vertical, showsIndicators: false) {
						VStack(alignment: .leading) {
							HStack {
								Text("Evolution Chain")
									.bold()
								Spacer()
							}
							if pokemon.evolution.first != nil {
								ForEach(pokemon.evolution, id: \.self) { evolve in
									PokedexEvolution(preEvolveImage: evolve.evolveFrom?.lowercased(), preEvolveName: evolve.evolveFrom, level: evolve.level, stone: evolve.stone, trade: evolve.trade, postEvovleImage: evolve.evolveTo?.lowercased(), postEvovleName: evolve.evolveTo)
									Divider()
								}
							} else {
								HStack {
									Spacer()
									Text("No evolutions")
									Spacer()
								}
								.padding()
							}
						}
					}
					.padding(.horizontal)
				} else {
					ComingSoonView()
//					PokedexMoves()
				}
			}
			.ignoresSafeArea(edges: .bottom)
		}
	}
}
