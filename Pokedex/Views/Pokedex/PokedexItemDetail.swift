import SwiftUI

struct PokedexItemDetail: View {
	var name: String
	var number: String
	var type1: String
	var type2: String?
	var evolution: Bool
	
	@State private var selectedMenu = 0
	
	var body: some View {
		
		VStack {
			VStack {
				HStack {
					Text(name)
						.font(.largeTitle)
						.bold()
					Spacer()
					Text(number)
						.font(.title2)
						.bold()
				}
				.padding(.bottom, 1)
				HStack {
					Text(type1)
						.font(.footnote)
						.bold()
						.padding(.all, 10)
						.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
						.cornerRadius(15)
						.clipShape(Capsule(), style: FillStyle())
					if type2 != nil {
						Text(type2!)
							.font(.footnote)
							.bold()
							.padding(.all, 10)
							.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
							.cornerRadius(15)
							.clipShape(Capsule(), style: FillStyle())
					}
					Spacer()
					Text("Seed Pokemon")
						.font(.title3)
				}
				Image(name.lowercased())
					.resizable()
					.frame(width: 250, height: 250)
			}
			.padding()
			
			.background(
				Image("pokeball-1")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 300)
					.offset(y: 50)
			)
			.background(Color(findColor(type1)))
			.foregroundColor(.white)
			VStack {
				Picker(selection: $selectedMenu, label: Text("Picker"), content: {
					Text("About").tag(0)
					Text("Base Stats").tag(1)
					Text("Evolution").tag(2)
					Text("Moves").tag(3)
				})
				.pickerStyle(SegmentedPickerStyle())
				.padding()
				if selectedMenu == 0 {
					PokedexAbout()
				} else if selectedMenu == 1 {
					PokedexBaseStats(hp: "45", attack: "49", defense: "49", spAttack: "65", spDefense: "65", speed: "45", total: "318")
				} else if selectedMenu == 2 {
					ScrollView {
						VStack(alignment: .leading) {
							HStack {
								Text("Evolution Chain")
									.bold()
								Spacer()
							}
							if evolution {
								PokedexEvolution(image1: name.lowercased(), name1: name, lvl: "16", image2: "ivysaur", name2: "Ivysaur")
								Divider()
								PokedexEvolution(image1: "ivysaur", name1: "Ivysaur", lvl: "34", image2: "venusaur", name2: "Venusaur")
							} else {
								HStack {
									Spacer()
									Text("No evolutions")
									Spacer()
								}
								.padding()
							}
						}
					}
					.padding(.horizontal)
				} else {
					PokedexMoves()
				}
			}
			.background(Color.white)
		}
	}
}
