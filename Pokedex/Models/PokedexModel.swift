import Foundation


struct Pokedex: Codable {
	var results: [PokemonItem]
}

struct PokemonItem: Codable {
	var name: String
}
