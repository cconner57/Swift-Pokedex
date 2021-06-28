import SwiftUI

struct HomeView: View {
	@Environment(\.colorScheme) var colorScheme
	//	@State private var homeSearch: String
	@State private var showCredit = false
	
	var body: some View {
		NavigationView {
			VStack {
				VStack (alignment: .leading, spacing: 10){
					Text("What Pokemon \nare you looking for?")
						.bold()
						.font(.title)
						.padding(.horizontal)
						.frame(width: 300, height: 70)
//					SearchbarView()
					HStack {
						Spacer()
						Image("search-placeholder")
							.resizable()
							.scaledToFit()
							.padding()
							.frame(height: 150)
						Spacer()
					}
					LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 200))], content: {
						NavigationLink(destination: PokedexListView()) {
							MenuButtonView(title: "Pokedex", color: UIColor(named: "pokeGreen")!)
						}
						NavigationLink(destination: MovieListView()) {
							MenuButtonView(title: "Movies", color: UIColor(named: "pokeRed")!)
						}
						NavigationLink(destination: AbilitiesListView()) {
							MenuButtonView(title: "Abilities", color: UIColor(named: "pokeBlue")!)
						}
						NavigationLink(destination: ItemsListView()) {
							MenuButtonView(title: "Items", color: UIColor(named: "pokeYellow")!)
						}
						NavigationLink(destination: LocationListView()) {
							MenuButtonView(title: "Location", color: UIColor(named: "pokePurple")!)
						}
						NavigationLink(destination: TypeChartListView()) {
							MenuButtonView(title: "Type Charts", color: UIColor(named: "pokeBrown")!)
						}
					})
				}
				.padding(.top)
				.background(
					Image(colorScheme == .dark ? "pokeball" : "pokeball-nav")
						.resizable()
						.scaledToFit()
						.frame(width: 250)
						.offset(x: 120, y: -175)
						.onLongPressGesture {
							showCredit.toggle()
						}
				)
				.padding(.bottom)
				Divider()
					.background(colorScheme == .dark ? Color.white : Color.gray)
				VStack {
					HStack {
						Text("Pokemon News")
							.font(.title)
						Spacer()
						//						Text("View All")
					}
					.padding(.top)
					.padding(.horizontal)
					ScrollView {
						//						VStack {
						//							NewsItemView(title: "This year’s Pokémon Go Fest is also a music festival", date: "May 27, 2021")
						//								.padding(.bottom)
						//							NewsItemView(title: "This year’s Pokémon Go Fest is also a music festival", date: "May 27, 2021")
						//						}
						Spacer()
						ComingSoonView()
							.padding(.top)
					}
				}
				.sheet(isPresented: $showCredit, content: {CreditView()})
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
