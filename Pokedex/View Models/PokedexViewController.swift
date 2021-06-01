import SwiftUI

func findColor(_ type: String) -> UIColor {
	switch type {
	case "Grass":
		return UIColor.pokeGreen
	case "Bug":
		return UIColor.pokeDarkGreen
	case "Fire":
		return UIColor.pokeRed
	case "Normal":
		return UIColor.pokeWhite
	case "Water":
		return UIColor.pokeBlue
	case "Ice":
		return UIColor.pokeLiteBlue
	case "Electric":
		return UIColor.pokeYellow
	case "Poison":
		return UIColor.pokeMaroon
	case "Psychic":
		return UIColor.pokePurple
	case "Ghost":
		return UIColor.pokeDarkPurple
	case "Fairy":
		return UIColor.pokePink
	case "Dragon":
		return UIColor.pokeLitePurple
	case "Rock":
		return UIColor.pokeBrown
	case "Ground":
		return UIColor.pokeLiteBrown
	case "Fighting":
		return UIColor.pokeDarkRed
	default:
		return UIColor.pokeWhite
	}
}

func findStone(_ stone: String) -> String {
	switch stone {
	case "Dawn stone":
		return "dawn-stone"
	case "Dusk stone":
		return "dusk-stone"
	case "Fire stone":
		return "fire-stone"
	case "Ice stone":
		return "ice-stone"
	case "Leaf stone":
		return "leaf-stone"
	case "Moon stone":
		return "moon-stone"
	case "Sun stone":
		return "sun-stone"
	case "Thunder stone":
		return "thunder-stone"
	case "Water stone":
		return "water-stone"
	default:
		return "shiny-stone"
	}
}

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
