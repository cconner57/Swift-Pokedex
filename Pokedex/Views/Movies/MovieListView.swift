import SwiftUI

struct MovieListView: View {
	var movies: [MovieItem] = readMovieJson()!
	
	var body: some View {
		VStack {
			ScrollView {
				LazyVStack {
					ForEach(movies, id: \.number) { movie in
						NavigationLink(destination: MovieDetailView(movie: movie)) {
							MovieItemView(title: movie.aTitle, image: movie.poster, releaseDate: movie.aReleaseDate, distributor: movie.aDistributor)
						}
					}
				}
			}
		}.navigationBarTitle("Pokemon Movies", displayMode: .inline)
	}
}
