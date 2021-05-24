import SwiftUI

struct MenuButtonView: View {
	var title: String
	var color: UIColor
	
	var body: some View {
		HStack(alignment: .top){
			Text(title)
				.bold()
				.padding()
				.padding(.vertical)
			Spacer()
		}
		.background(
			Image("pokeball")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 50, height: 100)
				.offset(x: 55)
		)
		.foregroundColor(.white)
		.background(Color(color))
		.cornerRadius(15)
		.padding(.bottom)
		.shadow(color: Color(color), radius: 7, x: 0, y: 5)
	}
}

