import SwiftUI

struct ItemView: View {
	var item: Item
	
	var body: some View {
		VStack {
			HStack {
				Text(item.name)
					.font(.headline)
					.fontWeight(.heavy)
				Spacer()
				Text(item.category)
					.font(.caption)
					.padding(.all, 8)
					.background(Color.white)
					.clipShape(Capsule())
					.shadow(radius: 1)
					.foregroundColor(.black)
			}
			.padding(.horizontal)
			HStack {
				if item.image == "" {
					Image(systemName: "questionmark.circle")
						.font(.title)
						.frame(width: 40, height: 40)
						.shadow(color: .white, radius: 3)
						.padding(.trailing)
				} else {
					Image(item.image)
						.resizable()
						.scaledToFit()
						.frame(width: 40, height: 40)
						.shadow(color: .white, radius: 3)
						.padding(.trailing)
				}
				Text(item.effect)
					.font(.footnote)
					.fontWeight(.semibold)
					.bold()
					.frame(width: 230)
			}
		}
		.background(
			Image("pokeball-1")
				.resizable()
				.scaledToFill()
				.frame(width: 80, height: 140)
				.offset(x: 150)
		)
		.frame(width: 320)
		.padding()
		.foregroundColor(.white)
		.background(Color(findColor(item.category)))
		.cornerRadius(10)
		.shadow(radius: 5)
		.padding(.vertical)
	}
}

