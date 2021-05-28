import SwiftUI

struct PokedexItemDetail: View {
	var title: String
	var number: String
	var image: String
	var type1: String
	var type2: String
	var color: UIColor
	
	@State private var selectedMenu = 0
	
	var body: some View {
		VStack {
			VStack {
				HStack {
					Text(title)
					Spacer()
					Text(number)
				}
				HStack {
					Text(type1)
						.font(.footnote)
						.padding(.all, 10)
						.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
						.cornerRadius(15)
						.clipShape(Capsule(), style: FillStyle())
					Text(type2)
						.font(.footnote)
						.padding(.all, 10)
						.background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.25))
						.cornerRadius(15)
						.clipShape(Capsule(), style: FillStyle())
					Spacer()
					Text("Seed Pokemon")
				}
			}
			.background(Color(color))
			Image(image)
				.resizable()
				.frame(width: 200, height: 200)
			VStack {
				Picker(selection: $selectedMenu, label: Text("Picker"), content: {
					Text("About").tag(0)
					Text("Base Stats").tag(1)
					Text("Evolution").tag(2)
					Text("Moves").tag(3)
				})
				.pickerStyle(SegmentedPickerStyle())
				
			}.background(Color.white)
		}
		.background(
			Image("pokeball-nav")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 300)
		)
	}
}
