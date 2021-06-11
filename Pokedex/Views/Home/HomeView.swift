import SwiftUI

extension UIColor {
	static let pokeGreen = UIColor(Color(red: 72/255, green: 208/255, blue: 176/255))
	static let pokeDarkGreen = UIColor(Color(red: 167/255, green: 184/255, blue: 31/255))
	static let pokeRed = UIColor(Color(red: 250/255, green: 101/255, blue: 85/255))
	static let pokeDarkRed = UIColor(Color(red: 192/255, green: 48/255, blue: 40/255))
	static let pokeBlue = UIColor(Color(red: 66/255, green: 155/255, blue: 237/255))
	static let pokeLiteBlue = UIColor(Color(red: 103/255, green: 144/255, blue: 239/255))
	static let pokeYellow = UIColor(Color(red: 246/255, green: 199/255, blue: 71/255))
	static let pokePurple = UIColor(Color(red: 124/255, green: 83/255, blue: 140/255))
	static let pokeLitePurple = UIColor(Color(red: 112/255, green: 56/255, blue: 248/255))
	static let pokeDarkPurple = UIColor(Color(red: 111/255, green: 88/255, blue: 152/255))
	static let pokeBrown = UIColor(Color(red: 177/255, green: 115/255, blue: 108/255))
	static let pokeLiteBrown = UIColor(Color(red: 224/255, green: 191/255, blue: 104/255))
	static let pokePink = UIColor(Color(red: 238/255, green: 153/255, blue: 171/255))
	static let pokeWhite = UIColor(Color(red: 167/255, green: 168/255, blue: 119/255))
	static let pokeMaroon = UIColor(Color(red: 159/255, green: 64/255, blue: 159/255))
}

struct HomeView: View {
	var body: some View {
		NavigationView {
			VStack {
				VStack (alignment: .leading, spacing: 10){
					Text("What Pokemon \nare you looking for?")
						.bold()
						.font(.title)
						.padding(.horizontal)
						.frame(width: 300, height: 70)
					HStack(alignment: .center, spacing: 10) {
						Image(systemName: "magnifyingglass")
							.font(.title2)
						TextField("Search Pokemon, Move, Ability, etc.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
							.disableAutocorrection(true)
							.autocapitalization(.none)
							.font(.headline)
					}
					.padding()
					.background(Color(red: 245/255, green: 245/255, blue: 245/255))
					.cornerRadius(30)
					.padding()
					LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 200))], content: {
						NavigationLink(destination: PokedexListView()) {
							MenuButtonView(title: "Pokedex", color: UIColor.pokeGreen)
						}
						NavigationLink(destination: MovieListView()) {
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
				.padding(.top)
				.background(
					Image("pokeball-nav")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 250)
						.offset(x: 120, y: -175)
				)
				.padding(.bottom)
				Divider()
				VStack {
					HStack {
						Text("Pokemon News")
							.font(.title)
						Spacer()
						Text("View All")
					}
					.padding()
					ScrollView {
						VStack {
							HStack(alignment: .top) {
								VStack(alignment: .leading){
									Text("This year’s Pokémon Go Fest is also a music festival")
										.bold()
										.frame(width: 200, height: 55)
									Text("May 27, 2021")
										.font(.subheadline)
								}
								.padding(.trailing)
								Image("news")
									.resizable()
									.aspectRatio(contentMode: .fit)
									.cornerRadius(15)
							}
							.padding(.horizontal)
							HStack(alignment: .top) {
								VStack(alignment: .leading){
									Text("This year’s Pokémon Go Fest is also a music festival")
										.bold()
										.frame(width: 200, height: 55)
									Text("May 27, 2021")
										.font(.subheadline)
								}
								.padding(.trailing)
								Image("news")
									.resizable()
									.aspectRatio(contentMode: .fit)
									.cornerRadius(15)
							}
							.padding()
						}
					}
				}
			}
			.navigationBarHidden(true)
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
