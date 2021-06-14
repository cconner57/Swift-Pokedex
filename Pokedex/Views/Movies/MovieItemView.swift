import SwiftUI

struct MovieItemView: View {
	var title: String
	var image: String
	var releaseDate: String
	var distributor: String
	
	var body: some View {
		HStack {
			Image(image)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 125, height: 170)
			VStack(spacing: 30) {
				Text(title)
					.font(.subheadline)
					.bold()
				Text(releaseDate)
					.font(.headline)
					.bold()
				Text("Created By: \(distributor)")
					.font(.footnote)
					.bold()
			}
			.foregroundColor(.white)
			.multilineTextAlignment(.center)
			.frame(width: 180, height: 140)
			.padding()
		}
		.background(Color.blue)
		.cornerRadius(10)
		.shadow(color: .gray, radius: 5)
		.padding(.horizontal)
	}
}
