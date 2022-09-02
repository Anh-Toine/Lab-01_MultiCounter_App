//
//  SquareButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct SquareButtonView: View {
	@StateObject var engine: SquareCalculatorEngine = SquareCalculatorEngine()
	var label: String
    var body: some View {
		VStack{
			Text("\(engine.squared)")
				.font(.custom("WorkSans-Bold", size: 30))
				.foregroundColor(.white)
				.frame(width: 100, height: 100)
				.background(Color(.systemMint))
				.onTapGesture(perform: engine.square)
				.onLongPressGesture(perform: engine.resetSquare)
		
			LabelView(labelText: label)
		}
    }
}

struct SquareButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SquareButtonView(label: "Indef")
    }
}
