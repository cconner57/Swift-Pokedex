import SwiftUI

struct PokedexAbout: View {
	var about: String
	var height: String
	var weight: String
	var gender: [String]?
	var eggGroup: String
	var eggCycle: String
	
	var body: some View {
		ScrollView {
			Text(about)
				.font(.footnote)
			HStack(spacing: 40) {
				VStack(alignment: .leading, spacing: 5) {
					Text("Height")
						.bold()
					Text(height)
				}
				.font(.footnote)
				VStack(alignment: .leading, spacing: 5) {
					Text("Weight")
						.bold()
					Text(weight)
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
					VStack(alignment: .center, spacing: 5) {
						HStack {
							if gender?.first != nil {
								HStack(spacing: 0) {
									Text("♂")
										.foregroundColor(.blue)
									Text(gender![0])
								}
								HStack(spacing: 0) {
									Text("♀")
										.foregroundColor(.pink)
									Text(gender![1])
								}
							} else {
								HStack(spacing: 0) {
									Text("No Known Gender")
								}
							}
						}
						Text(eggGroup)
						Text(eggCycle)
					}
					.font(.callout)
					.frame(width: 180)
					Spacer()
				}
			}
		}
		.padding(.horizontal)
	}
}
