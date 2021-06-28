import SwiftUI

class PokedexObject: ObservableObject {
//	@Published var favPokemon:
	@Published var pokemonTypes = "All"
	@Published var generationID: UUID?
	@Published var pokemonSearch: String?
	
}

func findColor(_ type: String) -> UIColor {
	switch type {
	case "Grass", "Berries":
		return UIColor(named: "pokeGreen")!
	case "Bug":
		return UIColor(named: "pokeDarkGreen")!
	case "Fire", "Battle Items":
		return UIColor(named: "pokeRed")!
	case "Normal":
		return UIColor(named: "pokeWhite")!
	case "Water", "Pokeballs":
		return UIColor(named: "pokeBlue")!
	case "Ice":
		return UIColor(named: "pokeLiteBlue")!
	case "Electric", "General Items":
		return UIColor(named: "pokeYellow")!
	case "Poison":
		return UIColor(named: "pokeMaroon")!
	case "Psychic", "Hold Items":
		return UIColor(named: "pokePurple")!
	case "Ghost":
		return UIColor(named: "pokeDarkPurple")!
	case "Fairy":
		return UIColor(named: "pokePink")!
	case "Dragon":
		return UIColor(named: "pokeLitePurple")!
	case "Rock", "Machine Items":
		return UIColor(named: "pokeBrown")!
	case "Ground":
		return UIColor(named: "pokeLiteBrown")!
	case "Fighting":
		return UIColor(named: "pokeDarkRed")!
	default:
		return UIColor(named: "pokeWhite")!
	}
}

func findStone(_ stone: String) -> String {
	switch stone {
	case "Dawn stone":
		return "dawn-stone"
	case "Dusk stone":
		return "dusk-stone"
	case "Fire stone":
		return "fire-stone"
	case "Ice stone":
		return "ice-stone"
	case "Leaf stone":
		return "leaf-stone"
	case "Moon stone":
		return "moon-stone"
	case "Sun stone":
		return "sun-stone"
	case "Thunder stone":
		return "thunder-stone"
	case "Water stone":
		return "water-stone"
	default:
		return "shiny-stone"
	}
}
