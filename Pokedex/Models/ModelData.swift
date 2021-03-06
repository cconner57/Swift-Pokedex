import Foundation

func readPokedexJson() -> Pokedex? {
	guard let file = Bundle.main.path(forResource: "Pokedex", ofType: "json") else {
		print("Failed")
		return nil
	}
		do {
			let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
			let decoder = JSONDecoder()
			do {
				let PokedexModel = try decoder.decode(Pokedex.self, from: data)
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

func readMovieJson() -> Movies? {
	guard let file = Bundle.main.path(forResource: "Movies", ofType: "json") else {
		print("Failed")
		return nil
	}
		do {
			let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
			let decoder = JSONDecoder()
			do {
				let MovieModel = try decoder.decode(Movies.self, from: data)
				return MovieModel
			}catch{
				print(error)
				return nil
			}
		} catch {
			print(error)
			return nil
		}
}

func readTypeChartJson() -> TypeData? {
	guard let file = Bundle.main.path(forResource: "TypeChart", ofType: "json") else {
		return nil
	}
		do {
			let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
			let decoder = JSONDecoder()
			do {
				let TypeChartModel = try decoder.decode(TypeData.self, from: data)
				return TypeChartModel
			}catch{
				print(error)
				return nil
			}
		} catch {
			print(error)
			return nil
		}
}

func readLocationsJson() -> Locations? {
	guard let file = Bundle.main.path(forResource: "Locations", ofType: "json") else {
		return nil
	}
		do {
			let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
			let decoder = JSONDecoder()
			do {
				let LocationsModel = try decoder.decode(Locations.self, from: data)
				return LocationsModel
			}catch{
				print(error)
				return nil
			}
		} catch {
			print(error)
			return nil
		}
}

func readItemsJson() -> Items? {
	guard let file = Bundle.main.path(forResource: "Items", ofType: "json") else {
		return nil
	}
		do {
			let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
			let decoder = JSONDecoder()
			do {
				let ItemsModel = try decoder.decode(Items.self, from: data)
				return ItemsModel
			}catch{
				print(error)
				return nil
			}
		} catch {
			print(error)
			return nil
		}
}


func readAbilitiesJson() -> Abilities? {
	guard let file = Bundle.main.path(forResource: "Abilities", ofType: "json") else {
		return nil
	}
		do {
			let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
			let decoder = JSONDecoder()
			do {
				let AbilitiesModel = try decoder.decode(Abilities.self, from: data)
				return AbilitiesModel
			}catch{
				print(error)
				return nil
			}
		} catch {
			print(error)
			return nil
		}
}
