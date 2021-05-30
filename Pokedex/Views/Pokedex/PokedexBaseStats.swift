import SwiftUI

struct PokedexBaseStats: View {
	var hp: String
	var attack: String
	var defense: String
	var spAttack: String
	var spDefense: String
	var speed: String
	var total: String
	
    var body: some View {
		ScrollView {
			HStack(spacing: 30) {
				VStack(alignment: .leading, spacing: 10) {
					Text("HP")
					Text("Attack")
					Text("Defense")
					Text("Sp. Atk")
					Text("Sp. Def")
					Text("Speed")
					Text("Total")
				}
				.foregroundColor(.gray)
				.font(.footnote)
				VStack(alignment: .leading, spacing: 10) {
					Text(hp)
						.bold()
					Text(attack)
						.bold()
					Text(defense)
						.bold()
					Text(spAttack)
						.bold()
					Text(spDefense)
						.bold()
					Text(speed)
						.bold()
					Text(total)
						.bold()
				}
				.font(.footnote)
				VStack(spacing: 22) {
					ProgressView(value: 45, total: 100)
						.progressViewStyle(LinearProgressViewStyle(tint: Int(hp)! >= 50 ? .green : .red))
					ProgressView(value: 49, total: 100)
						.progressViewStyle(LinearProgressViewStyle(tint: Int(attack)! >= 50 ? .green : .red))
					ProgressView(value: 49, total: 100)
						.progressViewStyle(LinearProgressViewStyle(tint: Int(defense)! >= 50 ? .green : .red))
					ProgressView(value: 65, total: 100)
						.progressViewStyle(LinearProgressViewStyle(tint: Int(spAttack)! >= 50 ? .green : .red))
					ProgressView(value: 65, total: 100)
						.progressViewStyle(LinearProgressViewStyle(tint: Int(spDefense)! >= 50 ? .green : .red))
					ProgressView(value: 45, total: 100)
						.progressViewStyle(LinearProgressViewStyle(tint: Int(speed)! >= 50 ? .green : .red))
					ProgressView(value: 318, total: 600)
						.progressViewStyle(LinearProgressViewStyle(tint: Int(total)! >= 300 ? .green : .red))
				}
			}
			VStack(alignment: .leading, spacing: 10) {
				Text("Type defenses")
					.bold()
				Text("The effectiveness of each type on Bulbasaur")
			}
			.padding(.vertical)
			.font(.subheadline)
		}
		.padding(.horizontal)
    }
}

