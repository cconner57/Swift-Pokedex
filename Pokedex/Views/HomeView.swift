import SwiftUI

extension UIColor {
	static let pokeGreen = UIColor(Color(red: 72/255, green: 208/255, blue: 176/255))
	static let pokeRed = UIColor(Color(red: 250/255, green: 101/255, blue: 85/255))
	static let pokeBlue = UIColor(Color(red: 66/255, green: 155/255, blue: 237/255))
	static let pokeYellow = UIColor(Color(red: 246/255, green: 199/255, blue: 71/255))
	static let pokePurple = UIColor(Color(red: 124/255, green: 83/255, blue: 140/255))
	static let pokeBrown = UIColor(Color(red: 177/255, green: 115/255, blue: 108/255))
}

struct HomeView: View {
	var body: some View {
		NavigationView {
			VStack (alignment: .leading){
				VStack(alignment: .leading) {
					Text("What Pokemon \nare you looking for?")
						.bold()
				}
				.padding(.horizontal)
				.font(.title)
				HStack(alignment: .center, spacing: 10) {
					Image(systemName: "magnifyingglass")
						.font(.title2)
					TextField("Search Pokemon, Move, Ability, etc.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
						.font(.headline)
				}
				.padding()
				.background(Color(red: 245/255, green: 245/255, blue: 245/255))
				.cornerRadius(30)
				.padding(.horizontal)
				LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 200))], content: {
					NavigationLink(destination: PokedexListView()) {
						MenuButtonView(title: "Pokedex", color: UIColor.pokeGreen)
					}
					NavigationLink(destination: MoviesListView()) {
						MenuButtonView(title: "Movies", color: UIColor.pokeRed)
					}
					NavigationLink(destination: AbilitiesListView()) {
						MenuButtonView(title: "Abilities", color: UIColor.pokeBlue)
					}
					NavigationLink(destination: ItemsListView()) {
						MenuButtonView(title: "Items", color: UIColor.pokeYellow)
					}
					NavigationLink(destination: LocationListView()) {
						MenuButtonView(title: "Location", color: UIColor.pokePurple)
					}
					NavigationLink(destination: TypeChartListView()) {
						MenuButtonView(title: "Type Charts", color: UIColor.pokeBrown)
					}
				})
			}
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
