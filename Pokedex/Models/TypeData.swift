import Foundation

struct TypeDataItem: Codable, Hashable {
	var type: String
	var strength, weakness, noEffect: [String]?
}

typealias TypeData = [[TypeDataItem]]
