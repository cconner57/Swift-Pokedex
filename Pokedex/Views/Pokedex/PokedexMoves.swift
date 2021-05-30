import SwiftUI

struct PokedexMoves: View {
	private let testMoves: [TestMoves] = [
		TestMoves(level: "1", move: "Growl", type: "Normal", power: "-", accuracy: "100"),
		TestMoves(level: "1", move: "Tackle", type: "Normal", power: "40", accuracy: "100"),
		TestMoves(level: "7", move: "Leech Seed", type: "Grass", power: "-", accuracy: "90"),
		TestMoves(level: "13", move: "Vine Whip", type: "Grass", power: "45", accuracy: "100"),
		TestMoves(level: "20", move: "Poison Powder", type: "Poison", power: "-", accuracy: "75"),
		TestMoves(level: "27", move: "Razor Leaf", type: "Grass", power: "55", accuracy: "95"),
		TestMoves(level: "34", move: "Growth", type: "Normal", power: "-", accuracy: "-"),
		TestMoves(level: "41", move: "Sleep Powder", type: "Grass", power: "-", accuracy: "75"),
		TestMoves(level: "48", move: "Solar Beam", type: "Grass", power: "120", accuracy: "100")
	]
	
	var body: some View {
		ScrollView {
			VStack(alignment: .leading, spacing: 10) {
				Text("Learned by leveling up ")
					.bold()
					.font(.title3)
				LazyVGrid(columns: [GridItem(.flexible(minimum: 180, maximum: 260))], content: {
					VStack(alignment: .leading) {
						HStack {
							Text("Lvl.")
								.bold()
								.underline()
								.frame(width: 30, height: 20, alignment: .center)
							Text("Move")
								.bold()
								.underline()
								.frame(width: 120, height: 20)
							Text("Type")
								.bold()
								.underline()
								.frame(width: 75, height: 20)
							Text("Power")
								.bold()
								.underline()
								.frame(width: 50, height: 20)
							Text("Acc.")
								.bold()
								.underline()
								.frame(width: 40, height: 20)
						}
						.font(.subheadline)
						.padding(.vertical)
						ForEach(testMoves, id: \.move) { move in
							HStack {
								Text(move.level)
									.bold()
									.frame(width: 30, height: 20)
								Text(move.move)
									.frame(width: 120, height: 20)
								Text(move.type)
									.frame(width: 75, height: 30)
									.background(Color(findColor(move.type)))
									.clipShape(Capsule())
								Text(move.power)
									.frame(width: 50, height: 20)
								Text(move.accuracy)
									.frame(width: 40, height: 20)
							}
							.font(.subheadline)
							Divider()
						}
					}
				})
			}
		}
		.padding(.horizontal)
	}
}

