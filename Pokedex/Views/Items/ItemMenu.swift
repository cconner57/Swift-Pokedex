import SwiftUI

struct ItemMenu: View {
	@Binding var filter: String
	
    var body: some View {
		Menu {
			Button("All Items") {
				filter = "All Items"
			}
			Button("Battle Items") {
				filter = "Battle Items"
			}
			Button("Berries") {
				filter = "Berries"
			}
			Button("General Items") {
				filter = "General Items"
			}
			Button("Hold Items") {
				filter = "Hold Items"
			}
			Button("Machines") {
				filter = "Machines"
			}
			Button("Pokeballs") {
				filter = "Pokeballs"
			}
		} label: {
			Image(systemName: "line.horizontal.3.decrease")
				.font(.title3)
				.padding()
				.frame(width: 50, height: 50)
		}
    }
}
