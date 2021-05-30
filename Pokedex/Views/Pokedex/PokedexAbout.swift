import SwiftUI

struct PokedexAbout: View {
    var body: some View {
		ScrollView {
			Text("Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.")
				.font(.footnote)
			HStack(spacing: 40) {
				VStack(alignment: .leading, spacing: 5) {
					Text("Height")
						.bold()
					Text("2'3.6\"(0.70 cm)")
				}
				.font(.footnote)
				VStack(alignment: .leading, spacing: 5) {
					Text("Weight")
						.bold()
					Text("15.2 lbs (6.9 kg)")
				}
				.font(.footnote)
			}
			.padding()
			.font(.callout)
			.background(Color.white)
			.cornerRadius(10)
			.shadow(color: .gray, radius: 7, x: 0.0, y: 7.0)
			.padding()
			VStack(alignment: .leading, spacing: 10) {
				Text("Breeding")
					.bold()
					.font(.headline)
				HStack(spacing: 40) {
					VStack(alignment: .leading, spacing: 5) {
						Text("Gender")
						Text("Egg Groups")
						Text("Egg Cycle")
					}
					VStack(alignment: .leading, spacing: 5) {
						HStack {
							HStack(spacing: 0) {
								Text("♂")
									.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
								Text("87.5%")
							}
							HStack(spacing: 0) {
								Text("♀")
									.foregroundColor(.pink)
								Text("12.5%")
							}
						}
						Text("Monster")
						Text("Grass")
					}
					Spacer()
				}
				.font(.footnote)
			}
		}
		.padding(.horizontal)
    }
}
