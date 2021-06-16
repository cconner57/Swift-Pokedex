import SwiftUI

struct MovieListView: View {
	var movies: Movies = readMovieJson()!
	
	var body: some View {
		VStack {
			ScrollView {
				LazyVStack(spacing: 25) {
					ForEach(movies, id: \.number) { movie in
						NavigationLink(destination: MovieDetailView(movie: movie)) {
							MovieItemView(title: movie.aTitle, image: movie.poster, releaseDate: movie.aReleaseDate, distributor: movie.aDistributor)
						}
					}
					
				}
				.padding(.vertical)
			}
		}
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text("Pokemon Movies")
					.font(.title2)
					.bold()
			}
		}
	}
}
