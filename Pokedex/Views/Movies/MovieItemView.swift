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
			.foregroundColor(.primary)
			.multilineTextAlignment(.center)
			.frame(width: 190, height: 140)
			.padding()
			.background(
				Image("pokeball")
					.resizable()
					.aspectRatio(contentMode: .fill)
					.offset(x: 55)
			)
		}
		.background(Color(red: 245/255, green: 245/255, blue: 245/255, opacity: 0.9))
		.cornerRadius(10)
		.shadow(color: Color("pokeBlue"), radius: 3)
		.padding(.horizontal)
	}
}
