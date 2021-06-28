import SwiftUI

struct NewsItemView: View {
	var title: String
	var date: String
	
    var body: some View {
		HStack(alignment: .top) {
			VStack(alignment: .leading){
				Text(title)
					.bold()
					.frame(width: 200, height: 55)
				Text(date)
					.font(.subheadline)
			}
			.padding(.trailing)
			Image("news")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.cornerRadius(15)
		}
		.padding(.horizontal)
    }
}

