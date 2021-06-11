import Foundation

struct PokemonData: Codable {
	var results: [PokemonItem]
}

struct PokemonItem: Codable {
	var num: String
	var name: String
	var type: [String]
	var species: String
	var about: String
	var height: String
	var weight: String
	var gender: [String]?
	var eggGroup: String
	var eggCycle: String
	var baseState: BaseState
	var evolution: [Evolutions]
}

struct BaseState: Codable {
	var hp: Int
	var attack: Int
	var defense: Int
	var spAttack: Int
	var spDefense: Int
	var speed: Int
	var total: Int
}

struct Evolutions: Codable, Hashable {
	var evolveFrom: String?
	var level: Int?
	var stone: String?
	var trade: Bool?
	var evolveTo: String?
}

struct TestMoves: Codable {
	var level: String
	var move: String
	var type: String
	var power: String
	var accuracy: String
}

enum FilterPokemonType {
	case normal, fire, water, grass, electric, ice, fighting, poison, ground, flying, psychic, bug, rock, ghost, dark, dragon, steel, fairy, all
}

enum FilterPokemonGen {
	case gen1, gen2, gen3, gen4, gen5, gen6, gen7, gen8, all
}
