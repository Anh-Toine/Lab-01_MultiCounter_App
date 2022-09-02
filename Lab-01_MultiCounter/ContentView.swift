//
//  ContentView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack {
			Text("Tuan's MultiCounter App")
				.font(.title2)
				.fontWeight(.bold)
				.foregroundColor(.indigo)
			HStack {
				VStack {
					CircleButtonView()
					LabelView(labelText: "Add")
				}
				VStack {
					CapsuleButtonView()
					LabelView(labelText: "Subtract")
				}
			}
			HStack {
				VStack {
					RoundedRectangleButtonView()
					LabelView(labelText: "Multiply")
				}
				VStack {
					SquareButtonView()
					LabelView(labelText: "Square")
				}
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
