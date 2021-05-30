import SwiftUI

struct PokedexListView: View {
	
	private let testData: [TestItem] = [
		TestItem(num: "#001", name: "Bulbasaur",  type1: "Grass", type2: "Poison"),
		TestItem(num: "#002", name: "Ivysaur",  type1: "Grass", type2: "Poison"),
		TestItem(num: "#003", name: "Venasaur",   type1: "Grass", type2: "Poison"),
		TestItem(num: "#004", name: "Charmander",  type1: "Fire"),
		TestItem(num: "#005", name: "Charmeleon",  type1: "Fire"),
		TestItem(num: "#006", name: "Charizard",   type1: "Fire", type2: "Flying"),
		TestItem(num: "#007", name: "Squirtle",   type1: "Water"),
		TestItem(num: "#008", name: "Wartortle",   type1: "Water"),
		TestItem(num: "#009", name: "Blastoise",  type1: "Water"),
		TestItem(num: "#010", name: "Caterpie",   type1: "Bug"),
		TestItem(num: "#011", name: "Metapod",  type1: "Bug"),
		TestItem(num: "#012", name: "Butterfree",   type1: "Bug", type2: "Flying"),
		TestItem(num: "#013", name: "Weedle", type1: "Bug", type2: "Poison"),
		TestItem(num: "#014", name: "Kakuna",   type1: "Bug", type2: "Poison"),
		TestItem(num: "#015", name: "Beedrill",   type1: "Bug", type2: "Poison"),
		TestItem(num: "#016", name: "Pidgey",  type1: "Normal", type2: "Flying"),
		TestItem(num: "#017", name: "Pidgeotto",   type1: "Normal", type2: "Flying"),
		TestItem(num: "#018", name: "Pidgeot",   type1: "Normal", type2: "Flying"),
		TestItem(num: "#019", name: "Rattata",   type1: "Normal"),
		TestItem(num: "#020", name: "Raticate",   type1: "Normal"),
		TestItem(num: "#021", name: "Spearow",   type1: "Normal"),
		TestItem(num: "#022", name: "Fearow",  type1: "Normal"),
		TestItem(num: "#023", name: "Ekans",   type1: "Poison"),
		TestItem(num: "#024", name: "Arbok",   type1: "Poison"),
		TestItem(num: "#025", name: "Pikachu",   type1: "Electric"),
		TestItem(num: "#026", name: "Raichu", type1: "Electric"),
		TestItem(num: "#027", name: "Sandshrew",  type1: "Ground"),
		TestItem(num: "#028", name: "Sandslash",  type1: "Ground"),
		TestItem(num: "#029", name: "Nidoran♀",   type1: "Poison"),
		TestItem(num: "#030", name: "Nidorina",   type1: "Poison"),
		TestItem(num: "#031", name: "Nidoqueen",   type1: "Poison", type2: "Ground"),
		TestItem(num: "#032", name: "Nidoran♂",   type1: "Poison"),
		TestItem(num: "#033", name: "Nidorino",   type1: "Poison"),
		TestItem(num: "#034", name: "Nidoking",  type1: "Poison", type2: "Ground"),
		TestItem(num: "#035", name: "Clefairy",   type1: "Fairy"),
		TestItem(num: "#036", name: "Clefable",   type1: "Fairy"),
		TestItem(num: "#037", name: "Vulpix",   type1: "Fire"),
		TestItem(num: "#038", name: "Ninetales", type1: "Fire"),
		TestItem(num: "#039", name: "Jigglypuff", type1: "Normal", type2: "Fairy"),
		TestItem(num: "#040", name: "Wigglytuff",   type1: "Normal", type2: "Fairy"),
		TestItem(num: "#041", name: "Zubat",  type1: "Poison", type2: "Flying"),
		TestItem(num: "#042", name: "Golbat",  type1: "Poison", type2: "Flying"),
		TestItem(num: "#043", name: "Oddish",  type1: "Grass", type2: "Poison"),
		TestItem(num: "#044", name: "Gloom",  type1: "Grass", type2: "Poison"),
		TestItem(num: "#045", name: "Vileplume",   type1: "Grass", type2: "Poison"),
		TestItem(num: "#046", name: "Paras",   type1: "Bug", type2: "Grass"),
		TestItem(num: "#047", name: "Parasect",   type1: "Bug", type2: "Grass"),
		TestItem(num: "#048", name: "Venonat",  type1: "Bug", type2: "Poison"),
		TestItem(num: "#049", name: "Venomoth", type1: "Bug", type2: "Poison"),
		TestItem(num: "#050", name: "Diglett",  type1: "Ground"),
		TestItem(num: "#051", name: "Dugtrio",  type1: "Ground"),
		TestItem(num: "#052", name: "Meowth",  type1: "Normal"),
		TestItem(num: "#053", name: "Persian",  type1: "Normal"),
		TestItem(num: "#054", name: "Psyduck",  type1: "Water"),
		TestItem(num: "#055", name: "Golduck",  type1: "Water"),
		TestItem(num: "#056", name: "Mankey",  type1: "Fighting"),
		TestItem(num: "#057", name: "Primeape",  type1: "Fighting"),
		TestItem(num: "#058", name: "Growlithe",  type1: "Fire"),
		TestItem(num: "#059", name: "Arcanine",  type1: "Fire"),
		TestItem(num: "#060", name: "Poliwag",  type1: "Water"),
		TestItem(num: "#061", name: "Poliwhirl",  type1: "Water"),
		TestItem(num: "#062", name: "Poliwrath",  type1: "Water", type2: "Fighting"),
		TestItem(num: "#063", name: "Abra",  type1: "Psychic"),
		TestItem(num: "#064", name: "Kadabra",  type1: "Psychic"),
		TestItem(num: "#065", name: "Alakazam",  type1: "Psychic"),
		TestItem(num: "#066", name: "Machop",  type1: "Fighting"),
		TestItem(num: "#067", name: "Machoke",  type1: "Fighting"),
		TestItem(num: "#068", name: "Machamp",  type1: "Fighting"),
		TestItem(num: "#069", name: "Bellsprout",  type1: "Grass", type2: "Poison"),
		TestItem(num: "#070", name: "Weepinbell",  type1: "Grass", type2: "Poison"),
		TestItem(num: "#071", name: "Victreebel",  type1: "Grass", type2: "Poison"),
		TestItem(num: "#072", name: "Tentacool",  type1: "Water",type2: "Poison"),
		TestItem(num: "#073", name: "Tentacruel",  type1: "Water", type2: "Poison"),
		TestItem(num: "#074", name: "Geodude",  type1: "Rock", type2: "Ground"),
		TestItem(num: "#075", name: "Graveler",  type1: "Rock", type2: "Ground"),
		TestItem(num: "#076", name: "Golem",  type1: "Rock", type2: "Ground"),
		TestItem(num: "#077", name: "Ponyta",  type1: "Fire"),
		TestItem(num: "#078", name: "Rapidash",  type1: "Fire"),
		TestItem(num: "#079", name: "Slowpoke",  type1: "Water", type2: "Psychic"),
		TestItem(num: "#080", name: "Slowbro",  type1: "Water", type2: "Psychic"),
		TestItem(num: "#081", name: "Magnemite",  type1: "Electric", type2: "Steel"),
		TestItem(num: "#082", name: "Magneton",  type1: "Electric", type2: "Steel"),
		TestItem(num: "#083", name: "Farfetch'd",  type1: "Normal", type2: "Flying"),
		TestItem(num: "#084", name: "Doduo",  type1: "Normal", type2: "Flying"),
		TestItem(num: "#085", name: "Dodrio",  type1: "Normal", type2: "Flying"),
		TestItem(num: "#086", name: "Seel",  type1: "Water"),
		TestItem(num: "#087", name: "Dewgong",  type1: "Water", type2: "Ice"),
		TestItem(num: "#088", name: "Grimer",  type1: "Poison"),
		TestItem(num: "#089", name: "Muk",  type1: "Poison"),
		TestItem(num: "#090", name: "Shellder",  type1: "Water"),
		TestItem(num: "#091", name: "Cloyster",  type1: "Water", type2: "Ice"),
		TestItem(num: "#092", name: "Gastly",  type1: "Ghost", type2: "Poison"),
		TestItem(num: "#093", name: "Haunter",  type1: "Ghost", type2: "Poison"),
		TestItem(num: "#094", name: "Gengar",  type1: "Ghost", type2: "Poison"),
		TestItem(num: "#095", name: "Onix",  type1: "Rock", type2: "Ground"),
		TestItem(num: "#096", name: "Drowzee",  type1: "Psychic"),
		TestItem(num: "#097", name: "Hypno",  type1: "Psychic"),
		TestItem(num: "#098", name: "Krabby",  type1: "Water"),
		TestItem(num: "#099", name: "Kingler",  type1: "Water"),
		TestItem(num: "#100", name: "Voltorb",  type1: "Electric"),
		TestItem(num: "#101", name: "Electrode",  type1: "Electric"),
		TestItem(num: "#102", name: "Exeggcute",  type1: "Grass", type2: "Psychic"),
		TestItem(num: "#103", name: "Exeggutor",  type1: "Grass", type2: "Psychic"),
		TestItem(num: "#104", name: "Cubone",  type1: "Ground"),
		TestItem(num: "#105", name: "Marowak",  type1: "Ground"),
		TestItem(num: "#106", name: "Hitmonlee",  type1: "Fighting"),
		TestItem(num: "#107", name: "Hitmonchan",  type1: "Fighting"),
		TestItem(num: "#108", name: "Lickitung",  type1: "Normal"),
		TestItem(num: "#109", name: "Koffing",  type1: "Poison"),
		TestItem(num: "#110", name: "Weezing",  type1: "Poison"),
		TestItem(num: "#111", name: "Rhyhorn",  type1: "Ground", type2: "Rock"),
		TestItem(num: "#112", name: "Rhydon",  type1: "Ground", type2: "Rock"),
		TestItem(num: "#113", name: "Chansey",  type1: "Normal"),
		TestItem(num: "#114", name: "Tangela",  type1: "Grass"),
		TestItem(num: "#115", name: "Kangaskhan",  type1: "Normal"),
		TestItem(num: "#116", name: "Horsea",  type1: "Water"),
		TestItem(num: "#117", name: "Seadra",  type1: "Water"),
		TestItem(num: "#118", name: "Goldeen",  type1: "Water"),
		TestItem(num: "#119", name: "Seaking",  type1: "Water"),
		TestItem(num: "#120", name: "Staryu",  type1: "Water"),
		TestItem(num: "#121", name: "Starmie",  type1: "Water", type2: "Psychic"),
		TestItem(num: "#122", name: "Mr.Mime",  type1: "Ice", type2: "Psychic"),
		TestItem(num: "#123", name: "Scyther",  type1: "Bug", type2: "Flying"),
		TestItem(num: "#124", name: "Jynx",  type1: "Ice", type2: "Psychic"),
		TestItem(num: "#125", name: "Electabuzz",  type1: "Electric"),
		TestItem(num: "#126", name: "Magmar",  type1: "Fire"),
		TestItem(num: "#127", name: "Pinsir",  type1: "Bug"),
		TestItem(num: "#128", name: "Tauros",  type1: "Normal"),
		TestItem(num: "#129", name: "Magikarp",  type1: "Water"),
		TestItem(num: "#130", name: "Gyarados",  type1: "Water", type2: "Flying"),
		TestItem(num: "#131", name: "Lapras",  type1: "Water", type2: "Ice"),
		TestItem(num: "#132", name: "Ditto",  type1: "Normal"),
		TestItem(num: "#133", name: "Eevee",  type1: "Normal"),
		TestItem(num: "#134", name: "Vaporeon",  type1: "Water"),
		TestItem(num: "#135", name: "Jolteon",  type1: "Electric"),
		TestItem(num: "#136", name: "Flareon",  type1: "Fire"),
		TestItem(num: "#137", name: "Porygon",  type1: "Normal"),
		TestItem(num: "#138", name: "Omanyte",  type1: "Rock", type2: "Water"),
		TestItem(num: "#139", name: "Omastar",  type1: "Rock", type2: "Water"),
		TestItem(num: "#140", name: "Kabuto",  type1: "Rock", type2: "Water"),
		TestItem(num: "#141", name: "Kabutops",  type1: "Rock", type2: "Water"),
		TestItem(num: "#142", name: "Aerodactyl",  type1: "Rock", type2: "Flying"),
		TestItem(num: "#143", name: "Snorlax",  type1: "Normal"),
		TestItem(num: "#144", name: "Articuno",  type1: "Ice", type2: "Flying"),
		TestItem(num: "#145", name: "Zapdos",  type1: "Electric", type2: "Flying"),
		TestItem(num: "#146", name: "Moltres",  type1: "Fire", type2: "Flying"),
		TestItem(num: "#147", name: "Dratini",  type1: "Dragon"),
		TestItem(num: "#148", name: "Dragonair",  type1: "Dragon"),
		TestItem(num: "#149", name: "Dragonite",  type1: "Dragon", type2: "Flying"),
		TestItem(num: "#150", name: "Mewtwo",  type1: "Psychic"),
		TestItem(num: "#151", name: "Mew",  type1: "Psychic"),
	]
	
	var body: some View {
		VStack {
			ZStack {
				ScrollView {
					LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 185))], content: {
						ForEach(testData, id: \.num) { pokemon in
							NavigationLink(destination: PokedexItemDetail(name: pokemon.name, number: pokemon.num, type1: pokemon.type1, type2: pokemon.type2, evolution: true)) {
								PokedexItemView(name: pokemon.name, number: pokemon.num, type1: pokemon.type1, type2: pokemon.type2)
							}
						}
					})
				}
				.padding(.top)
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
