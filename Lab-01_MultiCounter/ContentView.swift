//
//  ContentView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack{
			Color(UIColor(CustomColor.color7))
			VStack {

				Text("Tuan's MultiCounter App")
				.font(.custom("WorkSans-Bold", size: 27))
				.fontWeight(.bold)
				.foregroundColor(CustomColor.color6)
				.padding()

					HStack{
						CircleButtonView(label: "Add", color: CustomColor.color2)
						CapsuleButtonView(label: "Subtract", color: CustomColor.color3)
					}
					HStack{
						RoundedRectangleButtonView(label:"Multiply", color: CustomColor.color4)
						SquareButtonView(label: "Square", color: CustomColor.color1)
					}
			}
			.padding()
			}
		}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
