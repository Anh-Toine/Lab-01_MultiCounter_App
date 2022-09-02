//
//  SquareButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct SquareButtonView: View {
	@StateObject var engine: CalculatorEngine = CalculatorEngine()
    var body: some View {
		Text("\(engine.squared)")
			.font(.largeTitle)
			.fontWeight(.bold)
			.foregroundColor(.white)
			.frame(width: 100, height: 100)
			.background(Color(.systemMint))
			.onTapGesture(perform: engine.square)
			.onLongPressGesture(perform: engine.resetSquare)
    }
}

struct SquareButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SquareButtonView()
    }
}
