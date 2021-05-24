import SwiftUI

extension UIColor {
	static let pokeGray = UIColor(Color(red: 48/255, green: 57/255, blue: 67/255, opacity: 0.2))
}

struct PokeBallView: View {
    var body: some View {
		ZStack {
			Circle()
				.foregroundColor(Color(UIColor.pokeGray))
				.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			Rectangle()
				.foregroundColor(Color.white.opacity(0.2))
				.frame(width: 100, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			Circle()
				.foregroundColor(Color.white.opacity(0.2))
				.frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			Circle()
				.foregroundColor(Color(UIColor.pokeGray))
				.frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
		}
		.frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
		.offset(x: 60, y: 0)
    }
}

