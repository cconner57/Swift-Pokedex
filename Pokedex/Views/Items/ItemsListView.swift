import SwiftUI

struct ItemsListView: View {
	var items: Items = readItemsJson()!
	
	@State var showToast = false
	@State var filterItems = "All Items"
	
	var body: some View {
		VStack(spacing: 10) {
			List(filterItems == "All Items" ? items : items.filter {$0.category == filterItems}, id: \.self) { item in
					ItemView(item: item)
			}
			.overlay(
				ToastView(triggerToast: showToast, notification: findItemEnum(item: filterItems), text: filterItems)
			)
		}
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text(filterItems)
					.font(.title2)
					.bold()
			}
			ToolbarItem(placement: .navigationBarTrailing) {
				ItemMenu(showToast: $showToast, filter: $filterItems)
				
			}
		}
	}
	func findItemEnum(item: String) -> ToastView.notificationType {
		switch item {
		case "All Items":
			return .allItems
		case "Battle Items":
			return .battleItems
		case "Berries":
			return .berryItems
		case "General Items":
			return .generalItems
		case "Hold Items":
			return .holdItems
		case "Machines":
			return .machineItems
		case "Pokeballs":
			return .pokeballItems
		default:
			return .allItems
		}
	}
}
