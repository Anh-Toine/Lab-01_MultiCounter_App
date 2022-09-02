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
			//Color(.systemPurple)
			VStack {

				Text("Tuan's MultiCounter App")
				.font(.custom("WorkSans-Bold", size: 27))
				.fontWeight(.bold)
				.foregroundColor(.indigo)
				.padding()
				
					HStack{
						CircleButtonView(label: "Add")
						CapsuleButtonView(label: "Subtract")
					}
					HStack{
						RoundedRectangleButtonView(label:"Multiply")
						SquareButtonView(label: "Square")
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
