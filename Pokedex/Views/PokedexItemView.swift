import SwiftUI

struct PokedexItemView: View {
	var title: String
	var color: UIColor
	
	var body: some View {
		ZStack {
//			Image("pokeball")
//				.resizable()
//				.aspectRatio(contentMode: .fit)
			HStack(alignment: .top){
				VStack {
					Text(title)
						.font(.title3)
						.bold()
					Text("Grass")
						.bold()
						.padding()
						.background(Color(red: 120/255, green: 212/255, blue: 185/255))
						.cornerRadius(15)
					Text("Poison")
						.bold()
						.padding()
						.background(Color(red: 120/255, green: 212/255, blue: 185/255))
						.cornerRadius(15)
				}
				Text("#001")
					.bold()
					.offset(x: 10.0, y: -10.0)
				Spacer()
			}
		}
		.padding()
		.foregroundColor(.white)
		.background(Color(red: 72/255, green: 208/255, blue: 176/255))
		.cornerRadius(15)
		.padding(.bottom)
		.shadow(color: Color(color), radius: 7, x: 0, y: 5)
	}
}
