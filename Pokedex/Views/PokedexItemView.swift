import SwiftUI

struct PokedexItemView: View {
	var title: String
	var number: String
	var image: String
	var type1: String
	var type2: String
	var color: UIColor
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(title)
					.font(.subheadline)
					.bold()
				Spacer()
				Text(number)
					.font(.headline)
					.bold()
			}
			HStack {
				VStack {
					Text(type1)
						.font(.footnote)
						.padding(.all, 10)
						.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
						.cornerRadius(15)
						.clipShape(Capsule(), style: FillStyle())
					Text(type2)
						.font(.footnote)
						.padding(.all, 10)
						.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
						.cornerRadius(15)
						.clipShape(Capsule(), style: FillStyle())
					
				}
				.offset(x: -5.0)
				Image(image)
					.resizable()
					.aspectRatio(contentMode: .fill)
					.offset(x: 10.0, y: 10.0)
			}
		}
		.padding()
		.background(
			Image("pokeball-2")
				.resizable()
				.frame(width: 140, height: 140)
				.aspectRatio(contentMode: .fill)
				.offset(x: 50.0, y: 50.0)
		)
		.frame(width: 180, height: 150)
		.foregroundColor(.white)
		.background(Color(color))
		.cornerRadius(15)
		.shadow(color: Color(color), radius: 7, x: 0, y: 5)
		.padding(.bottom)
	}
}
