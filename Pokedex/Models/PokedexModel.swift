import Foundation


struct PokedexData: Codable {
	let results: [PokemonItem]

}

struct PokemonItem: Codable {
	let num: String
	let name: String
	let type: [String]
	let species: String
	let image: String
	let about: String
	let height: String
	let weight: String
	let gender: [String]
	let eggGroup: String
	let eggCycle: String
	let baseState: BaseStats
	let evolution: [Evolutions]?
}

struct BaseStats: Codable {
	let hp: Int
	let attack: Int
	let defense: Int
	let spAttack: Int
	let spDefense: Int
	let speed: Int
}

struct Evolutions: Codable {
	let level: Int?
	let stone: String?
	let form: String?
}
