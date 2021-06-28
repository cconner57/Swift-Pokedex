import SwiftUI

struct PokemonType {
	var name: String
}

struct PokemonGen: Identifiable {
	let id = UUID()
	var gen: String
	var pokemon: [String]
}

struct PokedexFilterModal: View {
	var pokemonTypes = ["normal", "fire", "water", "grass", "electric", "ice", "fighting", "poison", "ground", "flying", "psychic", "bug", "rock", "ghost", "dark", "dragon", "steel", "fairy", "All"]
	
	var starterPokemon = [
		PokemonGen(gen: "Generation I", pokemon: ["bulbasaur", "charmander", "squirtle"]),
		PokemonGen(gen: "Generation II", pokemon: ["chikorita", "cyndaquil", "totodile"]),
		PokemonGen(gen: "Generation III", pokemon: ["treecko", "torchic", "mudkip"]),
		PokemonGen(gen: "Generation IV", pokemon: ["turtwig", "chimchar", "piplup"]),
		PokemonGen(gen: "Generation V", pokemon: ["snivy", "tepig", "oshawott"]),
		PokemonGen(gen: "Generation VI", pokemon: ["chespin", "fennekin", "froakie"]),
		PokemonGen(gen: "Generation VII", pokemon: ["rowlet", "litten", "popplio"]),
		PokemonGen(gen: "Generation VIII", pokemon: ["grookey", "scorbunny", "sobble"])
	]
	
	
	@ObservedObject var genSelected: PokedexObject
	@Binding var filterButtonPressed: Bool
	@Binding var optionSelected: String
	
	func optionTitle (option: String) -> String {
		switch option {
		case "gens": return "Generation"
		case "types": return "Types"
		default: return "Search"
		}
	}
	
	@State var height: [Double]
	@State private var offset = CGSize.zero
	
	var body: some View {
		GeometryReader(content: { geometry in
			VStack {
				Rectangle()
					.fill(Color.gray)
					.frame(width: 220, height: 5)
					.cornerRadius(10)
					.padding(.top)
					.gesture(DragGesture()
								.onChanged({ gesture in
									self.offset = gesture.translation
								})
								.onEnded { _ in
									if self.offset.height < 10 || self.offset.height > 100 {
										filterButtonPressed = false
										optionSelected = ""
									} else {
										self.offset = .zero
									}
								}
					)
				Text(optionTitle(option: optionSelected))
					.font(.title)
					.padding(.bottom)
				if optionSelected == "types" {
					LazyVGrid(columns: [GridItem(.adaptive(minimum: 80, maximum: 120))], content: {
						ForEach(pokemonTypes, id: \.self) { type in
							PokemonTypeItem(type: type)
							//Fix shadow error
							//								.shadow(color: genSelected.generationID == gen.id ? Color.blue : Color.gray, radius: 10, x: 0, y: genSelected.generationID == gen.id ? 0 : 5)
								.onTapGesture {
									genSelected.pokemonTypes = type
									print(genSelected.pokemonTypes)
									filterButtonPressed = false
									optionSelected = ""
								}
						}
					})
					.padding(.horizontal)
				} else if optionSelected == "gens" {
					LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 175))], content: {
						ForEach(starterPokemon) { gen in
							PokedexGenItem(title: gen.gen, pokemon: gen.pokemon)
								//Fix shadow error
								.shadow(color: genSelected.generationID == gen.id ? Color.blue : Color.gray, radius: 10, x: 0, y: genSelected.generationID == gen.id ? 0 : 5)
								.onTapGesture {
									genSelected.generationID = gen.id
									filterButtonPressed = false
									optionSelected = ""
								}
						}
					})
				} else {
					HStack(alignment: .center, spacing: 10) {
						Image(systemName: "magnifyingglass")
							.font(.title2)
						TextField("Search Pokemon, Move, Ability, etc.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
							.disableAutocorrection(true)
							.autocapitalization(.none)
							.font(.headline)
					}
					.padding()
					.background(Color(red: 245/255, green: 245/255, blue: 245/255))
					.cornerRadius(30)
					.padding(.horizontal)
					//Fix shadow error
					//								.shadow(color: genSelected.generationID == gen.id ? Color.blue : Color.gray, radius: 10, x: 0, y: genSelected.generationID == gen.id ? 0 : 5)
					//								.onTapGesture {
					//									genSelected.generationID = gen.id
					//									filterButtonPressed = false
					//									optionSelected = ""
					//								}
				}
				Spacer()
			}
			.background(Color.white)
			.cornerRadius(20)
			.frame(maxWidth: geometry.size.width, maxHeight: geometry.size.height * CGFloat(height[0]))
			.offset(x: 0, y: geometry.size.height * CGFloat(height[1]) + offset.height)
			.animation(.default)
		})
		.animation(Animation.easeInOut(duration: 0.65))
		.ignoresSafeArea(edges: .bottom)
	}
}

struct PokemonTypeItem: View {
	var type: String
	
	var body: some View {
		HStack {
			if type == "All" {
				Image("pokedexIcon1")
					.resizable()
					.scaledToFit()
					.clipShape(Circle())
			} else {
				Image(type)
					.resizable()
					.scaledToFit()
			}
		}
		.overlay(
					RoundedRectangle(cornerRadius: 30)
						.stroke(Color.gray, lineWidth: 1)
				)
		.frame(width: 55, height: 55, alignment: .leading)
		.shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
		.padding(.bottom)
	}
}

struct PokedexGenItem: View {
	var title: String
	var pokemon: [String]
	
	var body: some View {
		VStack {
			Text(title)
				.bold()
			HStack {
				Image(pokemon[0])
					.resizable()
					.scaledToFit()
				Image(pokemon[1])
					.resizable()
					.scaledToFit()
				Image(pokemon[2])
					.resizable()
					.scaledToFit()
			}
		}
		
		.background(
			Image("pokeball")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 50, height: 100)
				.offset(x: 55)
		)
		.padding()
		.frame(width: 160, height: 92, alignment: .center)
		.background(Color.white)
		.cornerRadius(10)
		.padding(.bottom)
	}
}
