import SwiftUI

struct MovieDetailView: View {
	var movie: MovieItem
	
    var body: some View {
        Text("Hello, Movie Detail!")
			.navigationTitle(movie.shortTitle)
    }
}
