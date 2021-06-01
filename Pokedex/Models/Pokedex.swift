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
