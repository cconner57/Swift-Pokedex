import SwiftUI

struct MovieDetailView: View {
	var movie: MovieItem
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack{
				Image(movie.poster)
					.resizable()
					.scaledToFit()
					.cornerRadius(10)
					.shadow(color: .black, radius: 10, x: 0.0, y: 5)
				VStack {
					Text(movie.aTitle)
						.font(.title2)
						.bold()
						.multilineTextAlignment(.center)
						.padding()
						.fixedSize(horizontal: false, vertical: true)
					Text(movie.summary)
						.font(.body)
						.padding(.horizontal)
						.fixedSize(horizontal: false, vertical: true)
					HStack {
						Text(movie.aReleaseDate)
							.bold()
						Spacer()
						Text(movie.aDistributor)
							.bold()
					}
					.font(.footnote)
					.padding()
					Divider()
						.background(Color.black)
					VStack(spacing: 20) {
						Text("Japanese release")
							.font(.title3)
							.underline()
						Text(movie.jTitle)
							.font(.headline)
						HStack {
							Text(movie.jReleaseDate)
							Spacer()
							Text("Dist by: \(movie.jDistributor)")
						}
						.font(.footnote)
						.padding(.horizontal)
					}
					.padding(.vertical)
				}
				.foregroundColor(.white)
				.background(
					LinearGradient(gradient: Gradient(colors: [Color("pokeLiteBlue"), Color("pokeBlue"), Color("pokeLiteBlue")]), startPoint: .top, endPoint: .bottom).opacity(0.9)
					)
				.cornerRadius(10)
				.clipped()
				.shadow(color: Color("pokeBlue"), radius: 10, x: 0.0, y: 3)
				.padding()
			}
		}
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text(movie.shortTitle)
					.font(.title3)
					.bold()
			}
		}
	}
}
