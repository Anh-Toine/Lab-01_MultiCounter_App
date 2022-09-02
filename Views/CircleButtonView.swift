//
//  CircleButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct CircleButtonView: View {
	@StateObject var engine: CalculatorEngine = CalculatorEngine()
	var body: some View {
		Text("\(engine.sum)")
			.font(.largeTitle)
			.fontWeight(.bold)
			.foregroundColor(.white)
			.frame(width: 100, height: 100)
			.background(Color(.systemYellow))
			.clipShape(Circle())
			.onTapGesture(perform: engine.add)
			.onLongPressGesture(perform: engine.resetCircle)
			
	}
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView()
    }
}
