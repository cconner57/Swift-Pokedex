import SwiftUI

struct PokedexBaseStats: View {
	var baseStats: BaseState
	var name: String
	
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
					Text(String(baseStats.hp))
						.bold()
					Text(String(baseStats.attack))
						.bold()
					Text(String(baseStats.defense))
						.bold()
					Text(String(baseStats.spAttack))
						.bold()
					Text(String(baseStats.spDefense))
						.bold()
					Text(String(baseStats.speed))
						.bold()
					Text(String(baseStats.total))
						.bold()
				}
				.font(.footnote)
				VStack(spacing: 22) {
					ProgressView(value: Float(baseStats.hp), total: 250)
						.progressViewStyle(LinearProgressViewStyle(tint: baseStats.hp >= 125 ? .green : .red))
					ProgressView(value: Float(baseStats.attack), total: 134)
						.progressViewStyle(LinearProgressViewStyle(tint: baseStats.attack >= 67 ? .green : .red))
					ProgressView(value: Float(baseStats.defense), total: 180)
						.progressViewStyle(LinearProgressViewStyle(tint: baseStats.defense >= 90 ? .green : .red))
					ProgressView(value: Float(baseStats.spAttack), total: 154)
						.progressViewStyle(LinearProgressViewStyle(tint: baseStats.spAttack >= 77 ? .green : .red))
					ProgressView(value: Float(baseStats.spDefense), total: 125)
						.progressViewStyle(LinearProgressViewStyle(tint: baseStats.spDefense >= 62 ? .green : .red))
					ProgressView(value: Float(baseStats.speed), total: 150)
						.progressViewStyle(LinearProgressViewStyle(tint: baseStats.speed >= 75 ? .green : .red))
					ProgressView(value: Float(baseStats.total), total: 680)
						.progressViewStyle(LinearProgressViewStyle(tint: baseStats.total >= 340 ? .green : .red))
				}
			}
			VStack(alignment: .leading, spacing: 10) {
				Text("Type defenses")
					.bold()
				Text("The effectiveness of each type on \(name)")
			}
			.padding(.vertical)
			.font(.subheadline)
		}
		.padding(.horizontal)
    }
}

