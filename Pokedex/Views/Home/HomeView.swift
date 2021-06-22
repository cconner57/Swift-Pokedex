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
					HStack(alignment: .center, spacing: 10) {
						Image(systemName: "magnifyingglass")
							.font(.title2)
							.foregroundColor(colorScheme == .dark ? .white : .black)
						TextField("Search Pokemon, Move, Ability, etc.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
							.disableAutocorrection(true)
							.autocapitalization(.none)
							.font(.headline)
					}
					.padding()
					.background(colorScheme == .dark ? Color(red: 45/255, green: 45/255, blue: 45/255) : Color(red: 245/255, green: 245/255, blue: 245/255))
					.cornerRadius(30)
					.shadow(color: colorScheme == .dark ? .white.opacity(0.7) : .gray.opacity(0.7), radius: 10)
					.padding()
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
									.scaledToFit()
									.cornerRadius(15)
							}
							.padding()
						}
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
			.preferredColorScheme(.dark)
	}
}
