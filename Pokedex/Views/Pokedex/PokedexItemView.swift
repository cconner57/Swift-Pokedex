import SwiftUI

struct PokedexItemView: View {
	var name: String
	var number: String
	var type: [String]
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(name)
					.bold()
					.font(.subheadline)
				Spacer()
				Text("#\(number)")
					.bold()
					.font(.headline)
			}
			HStack {
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
				.offset(x: 60.0, y: 45.0)
		)
		.frame(width: 180, height: 150)
		.foregroundColor(.white)
		.background(Color(findColor(type[0])))
		.cornerRadius(15)
		.shadow(color: Color(findColor(type[0])), radius: 7, x: 0, y: 5)
		.padding(.bottom)
	}
}
