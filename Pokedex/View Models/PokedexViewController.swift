//import Foundation
//
//struct pokemonData {
//	let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")! //change the url
//
//	   //create the session object
//	   let session = URLSession.shared
//
//	   //now create the URLRequest object using the url object
//	   let request = URLRequest(url: url)
//
//	   //create dataTask using the session object to send data to the server
//	   let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
//
//		   guard error == nil else {
//			   return
//		   }
//
//		   guard let data = data else {
//			   return
//		   }
//
//		  do {
//			 //create json object from data
//			 if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
//				print(json)
//			 }
//		  } catch let error {
//			print(error.localizedDescription)
//		  }
//	   })
//
//	   task.resume()
//}
