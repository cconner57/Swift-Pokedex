import SwiftUI

struct PokedexItemView: View {
	var name: String
	var number: String
	var type1: String
	var type2: String?
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(name)
					.bold()
					.font(.subheadline)
				Spacer()
				Text(number)
					.bold()
					.font(.headline)
			}
			HStack {
				VStack {
					Text(type1)
						.bold()
						.font(.footnote)
						.padding(.all, 8)
						.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
						.clipShape(Capsule())
						
					if type2 != nil {
						Text(type2!)
							.bold()
							.font(.footnote)
							.padding(.all, 8)
							.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
							.clipShape(Capsule())
					}
				}
				.offset(x: -5.0)
				Image("\(name.lowercased())-sprite")
					.resizable()
			}
		}
		.padding()
		.background(
			Image("pokeball-1")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.offset(x: 50.0, y: 50.0)
		)
		.frame(width: 180, height: 150)
		.foregroundColor(.white)
		.background(Color(findColor(type1)))
		.cornerRadius(15)
		.shadow(color: Color(findColor(type1)), radius: 7, x: 0, y: 5)
		.padding(.bottom)
	}
}
