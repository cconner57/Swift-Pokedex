import SwiftUI

struct PokedexEvolution: View {
	var image1: String?
	var name1: String?
	var lvl: String?
	var image2: String?
	var name2: String?
	
	var body: some View {
		
		HStack {
			VStack {
				Image(image1!)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 80)
				Text(name1!)
					.font(.title3)
			}
			.background(
				Image("pokeball-1")
					.resizable()
					.aspectRatio(contentMode: .fit)
			)
			Spacer()
			VStack {
				Image(systemName: "arrow.right")
					.foregroundColor(.gray)
					.font(.largeTitle)
					.padding(.bottom)
				Text("Lvl \(lvl!)")
					.bold()
			}
			Spacer()
			VStack {
				Image(image2!)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 80)
				Text(name2!)
					.font(.title3)
			}
			.background(
				Image("pokeball-1")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 300)
			)
		}
		.padding()
		
	}
}
