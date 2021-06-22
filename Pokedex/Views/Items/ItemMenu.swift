import SwiftUI

struct ItemMenu: View {
	@Binding var showToast: Bool
	@Binding var filter: String
	
	let menuOptions = ["All Items", "Battle Items", "Berries", "General Items", "Hold Items", "Machines", "Pokeballs"]
	
    var body: some View {
		Menu {
			ForEach(menuOptions, id: \.self) { item in
				Button(item) {
					filter = item
					showToast = true
					DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
						showToast = false
					}
				}
			}
		} label: {
			Image(systemName: "line.horizontal.3.decrease")
				.font(.title3)
				.padding()
				.frame(width: 50, height: 50)
		}
    }
}
