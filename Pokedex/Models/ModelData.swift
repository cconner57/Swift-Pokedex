import Foundation

func readJson() -> [PokemonItem]? {
	guard let file = Bundle.main.path(forResource: "Pokedex", ofType: "json") else {
		print("Failed")
		return nil
	}
		do {
			let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
			let decoder = JSONDecoder()
			do {
				let PokedexModel = try decoder.decode([PokemonItem].self, from: data)
				return PokedexModel
			}catch{
				print(error)
				return nil
			}
		} catch {
			print(error)
			return nil
		}
}
