import SwiftUI

struct MenuButtonView: View {
	var title: String
	var color: UIColor
	
	var body: some View {
		HStack(alignment: .top){
			Text(title)
				.font(.title3)
				.bold()
				.padding()
				.foregroundColor(.white)
			Spacer()
		}
		.background(
			Image("pokeball-1")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 50, height: 100)
				.offset(x: 55)
		)
		.frame(minWidth: 120, idealWidth: 140, maxWidth: 160, minHeight: 50, idealHeight: 60, maxHeight: 70)
		.background(Color(color))
		.cornerRadius(15)
		.padding(.bottom)
		.shadow(color: Color(color).opacity(0.45), radius: 3, x: 0, y: 7)
	}
}

