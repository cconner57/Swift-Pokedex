import Foundation

struct PokedexData: Codable {
	var results: [PokemonItem]

}

struct PokemonItem: Hashable, Codable {
	var num: String
	var name: String
	var type: [String]
//	var species: String
//	var image: String
//	var about: String
//	var height: String
//	var weight: String
//	var gender: [String]
//	var eggGroup: String
//	var eggCycle: String
//	var baseState: BaseStats
//	var evolution: [Evolutions]?
}

//struct BaseStats: Hashable, Codable {
//	var hp: Int
//	var attack: Int
//	var defense: Int
//	var spAttack: Int
//	var spDefense: Int
//	var speed: Int
//}
//
//struct Evolutions: Hashable, Codable {
//	var level: Int?
//	var stone: String?
//	var form: String?
//}

struct TestItem: Codable {
	var num: String
	var name: String
	var type1: String
	var type2: String?
}

struct TestMoves: Codable {
	var level: String
	var move: String
	var type: String
	var power: String
	var accuracy: String
}
