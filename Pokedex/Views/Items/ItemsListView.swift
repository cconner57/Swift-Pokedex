import SwiftUI

struct ItemsListView: View {
	var items: Items = readItemsJson()!
	
	@State var filterItems = "All Items"
	
	var body: some View {
		VStack(spacing: 10) {
			List(filterItems == "All Items" ? items : items.filter {$0.category == filterItems}, id: \.self) { item in
					ItemView(item: item)
			}
		}
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text(filterItems)
					.font(.title2)
					.bold()
			}
			ToolbarItem(placement: .navigationBarTrailing) {
				ItemMenu(filter: $filterItems)
			}
		}
	}
}
