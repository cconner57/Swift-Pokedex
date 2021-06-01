import SwiftUI

struct PokedexFilter: View {
	@State var isPressed = false
	@State var isOpen = false
	@State var isDismissed = false
	
	var body: some View {
		ZStack {
			if isPressed {
				VStack(alignment: .trailing) {
					Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
						if isDismissed{
						Text("Favorite Pokemon")
							.foregroundColor(.black)
						}
						Image(systemName: "heart.fill")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: 0, y: isOpen ? 0 : 272)
					.offset(x: isDismissed ? 54 : 125, y: isDismissed ? 172 : 170)
					
					Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
						if isDismissed{
						Text("All Types")
							.foregroundColor(.black)
						}
						Image(systemName: "circles.hexagongrid.fill")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: -1, y: isOpen ? 0 : 205)
					.offset(x: isDismissed ? 54 : 125, y: isDismissed ? 180 : 180)
					
					Button(action: {}, label: {
						if isDismissed{
							Text("All Gens")
								.foregroundColor(.black)
						}
						Image(systemName: "square.stack.3d.up.fill")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: 0, y: isOpen ? 0 : 135)
					.offset(x: isDismissed ? 54 : 125, y: isDismissed ? 188 : 190)
					
					Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
						if isDismissed{
							Text("Search")
								.foregroundColor(.black)
						}
						Image(systemName: "magnifyingglass")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: 0, y: isOpen ? 0 : 65)
					.offset(x: isDismissed ? 54 : 125, y: isDismissed ? 198 : 200)
				}
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.background(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.6))
				.ignoresSafeArea()
				
			}
			Button(action: {showAnim()}, label: {
				Image(systemName: isPressed ? "multiply" : "slider.horizontal.3")
					.font(.title2)
					.padding()
					.foregroundColor(.white)
					.background(Color.blue)
					.clipShape(Circle())
					.animation(.none)
			})
			
			.offset(x: 125.0, y: 325)
			.shadow(color: isPressed ? Color.white : Color.gray, radius: 5, x: 0, y: 0)
		}
	}
	func showAnim() {
		isPressed.toggle()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
			isOpen.toggle()
		}
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
			isDismissed.toggle()
		}
	}
}
