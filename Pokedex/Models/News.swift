import Foundation

struct NewsData: Codable {
	let articles: [NewsStory]
}

struct NewsStory: Codable {
	let link: String
	let published: String
	let source: NewsSource
	let title: String
}

struct NewsSource: Codable {
	let href: String
	let title: String
}
