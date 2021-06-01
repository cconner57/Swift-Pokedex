import SwiftUI

struct PokedexEvolution: View {
	var preEvolveImage: String?
	var preEvolveName: String?
	var level: Int?
	var stone: String?
	var trade: Bool?
	var postEvovleImage: String?
	var postEvovleName: String?
	
	var body: some View {
		
		HStack {
			VStack {
				Image(preEvolveImage!)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 80)
				Text(preEvolveName!)
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
					.padding(.bottom, 6)
				if trade != nil {
					Text("Trade")
						.bold()
				} else if stone != nil {
					Image(findStone(stone!))
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 40)
					Text(stone!)
						.bold()
						.font(.caption)
				} else {
					Text("Lvl \(level!)")
						.bold()
				}
			}
			Spacer()
			VStack {
				Image(postEvovleImage!)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 80)
				Text(postEvovleName!)
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
