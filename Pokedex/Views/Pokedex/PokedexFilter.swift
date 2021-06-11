import SwiftUI

struct PokedexFilter: View {
	@State private var isFilterButtonPressed = false
	@State private var isMenuOpen = false
	@State var isMenuAnimated = false
	@State var isOptionSelected = ""
	
	@ObservedObject var genSelected: PokedexObject
	@Binding var favorite: Bool
	@Binding var type: FilterPokemonType
	@Binding var gens: FilterPokemonGen
	
	func getDimensions (_ option: String) -> [Double] {
		switch option {
		case "gens": return [0.75, 0.25]
		case "types": return [0.65, 0.35]
		default: return [0.6, 0.4]
		}
	}
	
	var body: some View {
		ZStack {
			if isFilterButtonPressed {
				VStack(alignment: .trailing) {
					Button(action: {
						isFilterButtonPressed.toggle()
						isMenuOpen.toggle()
						isMenuAnimated.toggle()
					}, label: {
						if isMenuAnimated{
							Text("Favorite Pokemon")
								.foregroundColor(.black)
						}
						Image(systemName: "heart.fill")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: 0, y: isMenuOpen ? 0 : 272)
					.offset(x: isMenuAnimated ? 54 : 125, y: isMenuAnimated ? 172 : 170)
					
					Button(action: {
						isOptionSelected = "types"
						isMenuAnimated.toggle()
						isMenuOpen.toggle()
					}, label: {
						if isMenuAnimated{
							Text("All Types")
								.foregroundColor(.black)
						}
						Image(systemName: "circles.hexagongrid.fill")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: -1, y: isMenuOpen ? 0 : 205)
					.offset(x: isMenuAnimated ? 54 : 125, y: isMenuAnimated ? 180 : 180)
					
					Button(action: {
						isOptionSelected = "gens"
						isMenuAnimated.toggle()
						isMenuOpen.toggle()
					}, label: {
						if isMenuAnimated{
							Text("All Gens")
								.foregroundColor(.black)
						}
						Image(systemName: "square.stack.3d.up.fill")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: 0, y: isMenuOpen ? 0 : 135)
					.offset(x: isMenuAnimated ? 54 : 125, y: isMenuAnimated ? 188 : 190)
					
					Button(action: {
						isOptionSelected = "search"
						isMenuAnimated.toggle()
						isMenuOpen.toggle()
					}, label: {
						if isMenuAnimated{
							Text("Search")
								.foregroundColor(.black)
						}
						Image(systemName: "magnifyingglass")
							.foregroundColor(Color.blue)
					})
					.padding()
					.background(Color.white)
					.clipShape(Capsule())
					.offset(x: 0, y: isMenuOpen ? 0 : 65)
					.offset(x: isMenuAnimated ? 54 : 125, y: isMenuAnimated ? 198 : 200)
				}
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.background(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 0.6))
				.ignoresSafeArea()
				.onTapGesture {
					isOptionSelected = ""
					isMenuOpen = false
					isMenuAnimated = false
					isFilterButtonPressed = false
				}
			}
			Button(action: {showAnim()}, label: {
				Image(systemName: isFilterButtonPressed ? "multiply" : "slider.horizontal.3")
					.font(.title2)
					.padding()
					.foregroundColor(.white)
					.background(Color.blue)
					.clipShape(Circle())
					.animation(.none)
			})
			.offset(x: 125.0, y: 325)
			.shadow(color: isFilterButtonPressed ? Color.white : Color.gray, radius: 5, x: 0, y: 0)
			if !isOptionSelected.isEmpty {
				PokedexFilterModal(genSelected: genSelected, filterButtonPressed: $isFilterButtonPressed, optionSelected: $isOptionSelected, height: getDimensions(isOptionSelected))
						.transition(.move(edge: .bottom))
						.offset(x: 0, y: isOptionSelected.isEmpty ? 560 : 0)
			}
		}
	}
	func showAnim() {
		isFilterButtonPressed.toggle()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
			isMenuOpen.toggle()
		}
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
			isMenuAnimated.toggle()
		}
	}
}
