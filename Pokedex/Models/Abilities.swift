import Foundation

struct Ability: Codable {
	let name, effect: String
	let generation: Int
}

typealias Abilities = [Ability]
