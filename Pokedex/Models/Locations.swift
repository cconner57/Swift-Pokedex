import Foundation

struct Location: Codable {
	let region, town, image, slogan, connecting: String?
}

typealias Locations = [[[Location]]]
