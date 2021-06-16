import SwiftUI

struct TypeChartItems: View {
	var type: [String]
	var color: String
	
	var body: some View {
		HStack {
			ForEach(type, id: \.self) { attribute in
				Image(attribute)
					.resizable()
					.frame(width: 27, height: 27)
					.clipShape(Circle())
					.shadow(radius: 10)
					.overlay(Circle().stroke(color == "green" ? Color.green : color == "red" ? Color.red : Color.black, lineWidth: 3))
			}
			Spacer()
		}
		.animation(.easeInOut)
	}
}
