//
//  RoundedRectangleButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct RoundedRectangleButtonView: View {
	@StateObject var engine: RectangleCalculatorEngine = RectangleCalculatorEngine()
	var label: String
    var body: some View {
		VStack{
			Text("\(engine.product)")
				.font(.custom("WorkSans-Bold", size: 30))
				.foregroundColor(.white)
				.frame(width: 120, height: 70)
				.background(Color(.systemRed))
				.cornerRadius(10)
				.onTapGesture(perform: engine.multiply)
				.onLongPressGesture(perform: engine.resetRoundRectangle)
		
			LabelView(labelText: label)
		}
    }
}

struct RoundedRectangleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleButtonView(label: "Indef")
    }
}
