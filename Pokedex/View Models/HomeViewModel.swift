import Foundation
//import SwiftUI
//import Combine

class HomeViewModel: ObservableObject {
//	@Published var newsData = getNewsData
	
	
	
//	func getNewsData(completion: @escaping (NewsData) -> ()) {
//		let urlString = "https://google-news.p.rapidapi.com/v1/search?q=Pokemon&country=US&lang=en"
//
//		if let url = URL(string:urlString) {
//			var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10.0)
//			request.httpMethod = "GET"
//			request.allHTTPHeaderFields = [
//				"x-rapidapi-key": "c407f37388msheeb9c29450c05a5p18140djsnebee1b8a3e0e",
//				"x-rapidapi-host": "google-news.p.rapidapi.com"
//			]
//			URLSession.shared.dataTask(with: request) { (data, _, error) in
//				if let data = data {
//					let decoder = JSONDecoder()
//					do {
//						let json: NewsData = try decoder.decode(NewsData.self, from: data)
//						completion(json)
//					} catch let error {
//						print(error.localizedDescription)
//					}
//				}
//				if error == nil {
//					do {
//						let decoder = JSONDecoder()
//						let result = try decoder.decode(NewsData.self, from: data!)
//						print(result)
//						DispatchQueue.main.async {
//							self.news = result
//						}
//					}
//					catch {
//						print(error)
//					}
//				}
//			}.resume()
//		}
//	}
}
