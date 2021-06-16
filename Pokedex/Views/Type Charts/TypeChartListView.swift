import SwiftUI

struct TypeChartListView: View {
	var typeChart: TypeData = readTypeChartJson()!
	
	@State private var typeChartGen = 0
	
	var body: some View {
		VStack {
			Picker(selection: $typeChartGen, label: Text("Gen Type Charts")) {
				Text("Gen 1").tag(0)
				Text("Gen 2-5").tag(1)
				Text("Gen 5+").tag(2)
			}
			.pickerStyle(SegmentedPickerStyle())
			.padding()
			HStack {
				Section {
					HStack {
						Label("Strong against", systemImage: "plus.circle")
							.foregroundColor(.green)
						Text("|")
						Label("Weak against", systemImage: "minus.circle")
							.foregroundColor(.red)
						Text("|")
						Label("No effect", systemImage: "multiply.circle")
					}
				}
			}
			GeometryReader { geometry in
				ScrollView(.vertical, showsIndicators: false) {
					LazyVGrid(columns: [GridItem(.flexible(minimum: 250, maximum: 350))]) {
						ForEach(typeChart[typeChartGen], id: \.type) { type in
							HStack {
								VStack {
									Image(type.type)
										.resizable()
										.frame(width: 70, height: 70)
										.clipShape(Circle())
										.shadow(color: .black, radius: 5)
										.overlay(Circle().stroke(Color.white, lineWidth: 3))
									Text(type.type.capitalized)
										.bold()
										.font(.footnote)
								}
								.frame(width: geometry.size.width * 0.2)
								VStack(alignment: .leading){
									if !type.strength!.isEmpty {
										TypeChartItems(type: type.strength!, color: "green")
									}
									if !type.weakness!.isEmpty {
										TypeChartItems(type: type.weakness!, color: "red")
									}
									if !type.noEffect!.isEmpty {
										TypeChartItems(type: type.noEffect!, color: "black")
									}
								}
								.background(
									Image("pokeball-1")
										.resizable()
										.aspectRatio(contentMode: .fill)
										.frame(width: 150)
										.offset(x: 110)
								)
								.padding()
								.background(
									LinearGradient(gradient: Gradient(colors: [Color("pokeBlue"), Color("pokeLiteBlue")]), startPoint: .leading, endPoint: .trailing).opacity(1)
									)
								.frame(width: geometry.size.width * 0.7)
								.cornerRadius(10)
								.shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 5)
							}
							.padding(.vertical)
						}
					}
					.padding(.vertical)
				}
			}
		}
		.font(.footnote)
		.navigationBarTitle("Type Charts", displayMode: .inline)
	}
}

