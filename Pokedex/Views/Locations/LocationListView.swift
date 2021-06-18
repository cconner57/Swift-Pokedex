import SwiftUI

struct LocationListView: View {
	var locations: Locations = readLocationsJson()!
	
	var body: some View {
		ScrollViewReader { scrollView in
			ScrollView(.vertical, showsIndicators: false) {
				LazyVStack(spacing: 5, pinnedViews: [.sectionHeaders]) {
					ForEach(locations.indices, id: \.self) { index in
						Section(header: headerView(locations[index][0][0].region!)) {
							LocationItemView(locationData: locations, arrayIndex: index)
						}
						.id(locations[index][0][0].region!)
					}
				}
			}
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .principal) {
					Text("Pokemon Towns")
						.font(.title2)
						.bold()
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					LocationMenu(scrollView: scrollView, locationData: locations)
				}
			}
			.background(Color("pokeBlue"))
			.ignoresSafeArea(edges: .bottom)
		}
	}
	
	func headerView(_ index: String) -> some View {
		Text(index)
			.padding()
			.foregroundColor(Color.white)
			.font(.largeTitle)
			.frame(maxWidth: .infinity)
			.background(
				Image("pokeball-1")
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 100)
					.offset(x: -150)
			)
			.background(Color("pokePurple"))
			.clipped()
			.shadow(radius: 5)
	}
}

