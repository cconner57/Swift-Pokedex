import Foundation

struct  MovieItem: Codable {
	let number: Double
	let poster, aTitle, shortTitle, aReleaseDate, aDistributor, jTitle, jReleaseDate, jDistributor, summary: String
	let color: [String]?
}

typealias Movies = [MovieItem]
