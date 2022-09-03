//
//  CircleButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct CircleButtonView: View {
	@StateObject var engine: CircleCalculatorEngine = CircleCalculatorEngine()
	var label: String
	var color: Color
	var body: some View {
		VStack{
			Text("\(engine.total)")
				.font(.custom("WorkSans-Bold", size: 30))
				.foregroundColor(.white)
				.frame(width: 100, height: 100)
				.background(color)
				.clipShape(Circle())
				.onTapGesture(perform: engine.add)
				.onLongPressGesture(perform: engine.resetCircle)
			LabelView(labelText: label)
		}
	}
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
		CircleButtonView(label: "Indef", color: Color.yellow)
    }
}
