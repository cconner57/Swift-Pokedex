import SwiftUI

struct PokedexListItemView: View {
	var name: String
	var number: String
	var type: [String]
	
	var body: some View {
		HStack(spacing: 5) {
				Image("\(name.lowercased())-sprite")
					.resizable()
					.scaledToFit()
					.padding(.leading)
				HStack {
					HStack(spacing: 10) {
						Text("#\(number)")
							.bold()
						Text(name)
							.bold()
					}
					.font(.headline)
					Spacer()
					VStack {
						ForEach(type, id: \.self) { type in
							Text(type)
								.bold()
								.font(.footnote)
								.padding(.all, 8)
								.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
								.clipShape(Capsule())
						}
					}
					.padding(.trailing)
				}
				.font(.headline)
		}
		.background(
			Image("pokeball-1")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.offset(x: -150.0, y: -20.0)
		)
		.frame(width: 350, height: 90)
		.foregroundColor(.white)
		.background(Color(findColor(type[0])))
		.cornerRadius(15)
		.shadow(color: Color(findColor(type[0])), radius: 7, x: 0, y: 5)
	}
}
