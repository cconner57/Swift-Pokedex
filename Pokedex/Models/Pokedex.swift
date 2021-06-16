import Foundation

struct PokemonItem: Codable {
	let num, name: String
	let type: [String]
	let species, about, height, weight: String
	let gender: [String]?
	let eggGroup, eggCycle: String
	let baseState: BaseState
	let evolution: [Evolutions]
}

struct BaseState: Codable {
	let hp, attack, defense, spAttack, spDefense, speed, total: Int
}

struct Evolutions: Codable, Hashable {
	let evolveFrom, evolveTo, stone: String?
	let level: Int?
	let trade: Bool?
}

struct TestMoves: Codable {
	let level, move, type, power, accuracy: String
}

enum FilterPokemonType {
	case normal, fire, water, grass, electric, ice, fighting, poison, ground, flying, psychic, bug, rock, ghost, dark, dragon, steel, fairy, all
}

enum FilterPokemonGen {
	case gen1, gen2, gen3, gen4, gen5, gen6, gen7, gen8, all
}

typealias Pokedex = [PokemonItem]
