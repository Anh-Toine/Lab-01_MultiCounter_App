//
//  RoundedRectangleButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct RoundedRectangleButtonView: View {
	@StateObject var engine: CalculatorEngine = CalculatorEngine()
    var body: some View {
		Text("\(engine.product)")
			.font(.largeTitle)
			.fontWeight(.bold)
			.foregroundColor(.white)
			.frame(width: 120, height: 70)
			.background(Color(.systemRed))
			.cornerRadius(10)
			.onTapGesture(perform: engine.multiply)
			.onLongPressGesture(perform: engine.resetRoundRectangle)
    }
}

struct RoundedRectangleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleButtonView()
    }
}
