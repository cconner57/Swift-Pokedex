import Foundation

struct Item: Codable, Hashable {
	let name, image, category, effect: String
}

typealias Items = [Item]
