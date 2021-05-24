import SwiftUI

extension UIColor {
	static let pokeGreen = UIColor(Color(red: 70/255, green: 215/255, blue: 171/255))
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
					Text("What Pokemon")
						.bold()
					Text("are you looking for?")
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
				LazyVGrid(columns: [GridItem(.fixed(170)), GridItem(.fixed(170))], content: {
					NavigationLink(destination: PokedexListView()) {
						MenuButtonView(title: "Pokedex", color: UIColor.pokeGreen)
					}.padding(.trailing, 5)
					NavigationLink(destination: MoviesListView()) {
						MenuButtonView(title: "Movies", color: UIColor.pokeRed)
					}.padding(.leading, 5)
					NavigationLink(destination: AbilitiesListView()) {
						MenuButtonView(title: "Abilities", color: UIColor.pokeBlue)
					}.padding(.trailing, 5)
					NavigationLink(destination: ItemsListView()) {
						MenuButtonView(title: "Items", color: UIColor.pokeYellow)
					}.padding(.leading, 5)
					NavigationLink(destination: LocationListView()) {
						MenuButtonView(title: "Location", color: UIColor.pokePurple)
					}.padding(.trailing, 5)
					NavigationLink(destination: TypeChartListView()) {
						MenuButtonView(title: "Type Charts", color: UIColor.pokeBrown)
					}.padding(.leading, 5)
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
