import SwiftUI

struct LocationItemView: View {
	@Environment(\.colorScheme) var colorScheme
	
	var locationData: Locations
	var arrayIndex: Int
	
	var body: some View {
		Group {
			ForEach(locationData[arrayIndex][1].indices, id: \.self) { towns in
				VStack {
					VStack {
						townSection(towns)
						sloganSection(towns)
						imageSection(towns)
					}
					.padding(.bottom)
					HStack {
						VStack(alignment: .leading) {
							Text("How to get there?")
								.font(.headline)
							connectingSection(towns)
						}
						Spacer()
					}
					
				}
				.id(UUID())
				.padding()
				.background(colorScheme == .dark ? Color.black : Color.white)
				.cornerRadius(10)
				.shadow(color: .gray, radius: 5)
				.padding()
				Divider()
					.background(Color.black)
					.padding(.horizontal)
			}
		}
	}
	func townSection(_ towns: Int ) -> some View {
		Text(locationData[arrayIndex][1][towns].town!)
			.font(.title3)
	}
	func sloganSection(_ towns: Int ) -> some View {
		Text(locationData[arrayIndex][1][towns].slogan! != "N/A" ? locationData[arrayIndex][1][towns].slogan! : "")
			.font(.footnote)
			.multilineTextAlignment(.center)
	}
	func imageSection(_ towns: Int ) -> some View {
		Image(locationData[arrayIndex][1][towns].image! != "" ? locationData[arrayIndex][1][towns].image! : "town-placeholder")
			.resizable()
			.scaledToFit()
			.frame(width: 250)
			.cornerRadius(10)
			.shadow(radius: 10)
	}
	func connectingSection(_ towns: Int) -> some View {
		Text(locationData[arrayIndex][1][towns].connecting!)
	}
}
