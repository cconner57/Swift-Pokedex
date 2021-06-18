import SwiftUI

struct LocationMenu: View {
	var scrollView: ScrollViewProxy
	var locationData: Locations
	
	var body: some View {
		Menu {
			ForEach(locationData.indices, id: \.self) { index in
				Button(locationData[index][0][0].region!) {
					withAnimation {
						scrollView.scrollTo(locationData[index][0][0].region!, anchor: .top)
					}
				}
			}
		} label: {
			Image(systemName: "line.horizontal.3")
				.font(.title3)
				.padding()
				.frame(width: 50, height: 50)
		}
	}
}
