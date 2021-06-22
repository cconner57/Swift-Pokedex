import SwiftUI

struct AbilitiesListView: View {
	var abilities: Abilities = readAbilitiesJson()!
	
	@State private var genPicker = 3
	
	var body: some View {
		VStack {
			Picker(selection: $genPicker, label: Text("Current Generation: \(genPicker)")) {
				Text("Gen 3").tag(3)
				Text("Gen 4").tag(4)
				Text("Gen 5").tag(5)
				Text("Gen 6").tag(6)
				Text("Gen 7").tag(7)
				Text("Gen 8").tag(8)
			}
			.pickerStyle(SegmentedPickerStyle())
			.cornerRadius(10)
			.padding(.top)
			.padding(.horizontal)
			List {
				ForEach(abilities.filter {$0.generation == genPicker}, id: \.name) { ability in
					VStack(alignment: .leading) {
						HStack {
							HStack {
								Image("ability-icon")
									.resizable()
									.scaledToFit()
									.frame(width: 120, height: 50)
								Spacer()
								Text(ability.name)
									.font(.title3)
									.bold()
									.padding(.top)
									.padding(.trailing)
							}
						}
						HStack {
							Text(ability.effect)
								.fontWeight(.semibold)
								.bold()
								.foregroundColor(.white)
								.padding()
							Spacer()
						}
						.background(Color("pokeBlue"))
						.cornerRadius(10)
						.shadow(radius: 3)
						.padding(.leading)
					}
					.padding(.bottom)
				}
			}
			.listStyle(InsetGroupedListStyle())
		}
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .principal) {
				Text("Abilities")
					.font(.title2)
					.bold()
			}
		}
	}
}

