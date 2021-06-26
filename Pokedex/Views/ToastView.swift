import SwiftUI

struct ToastView: View {
	enum notificationType {
		case list, grid, favorite, normal, fighting, flying, poison, ground, rock, bug, ghost, steel, fire, water, grass, electric, psychic, ice, dragon, dark, fairy, allItems, battleItems, berryItems, generalItems, holdItems, machineItems, medicineItems, pokeballItems
	}
	
	@Environment(\.colorScheme) var colorScheme
	
	var triggerToast: Bool
	var notification: notificationType
	var text: String?
	
    var body: some View {
		if triggerToast {
			VStack {
				Spacer()
				Text(notificationText(type: notification, text: text))
					.font(.callout)
					.bold()
					.padding()
					.background(colorScheme == .dark ? Color.gray.opacity(0.9) : Color.white.opacity(0.8))
					.cornerRadius(25)
					.padding(.bottom)
			}
			.transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.5)))
		}
    }
	
	func notificationText(type: notificationType, text: String?) -> String{
		switch type {
		case .list, .grid:
			return "\(text!) View"
		case .favorite:
			return "Showing favorites"
		case .normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy:
			return "Showing \(text!) Type"
		case .allItems, .battleItems, .berryItems, .generalItems, .holdItems, .machineItems, .medicineItems, .pokeballItems:
			return "Showing \(text!)"
		}
	}
}
