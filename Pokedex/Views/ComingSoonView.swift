import SwiftUI

struct ComingSoonView: View {
	@Environment(\.colorScheme) var colorScheme
	
    var body: some View {
		VStack {
			Spacer()
			Text("Feature Coming Soon")
				.font(.callout)
				.bold()
			Spacer()
		}
		.padding()
		.background(colorScheme == .dark ? Color.white.opacity(0.25) : Color.gray.opacity(0.25))
		.cornerRadius(25)
		.padding(.bottom)
    }
}
