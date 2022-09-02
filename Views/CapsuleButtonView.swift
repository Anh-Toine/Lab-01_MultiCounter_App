//
//  CapsuleButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct CapsuleButtonView: View {
	@StateObject var engine: CalculatorEngine = CalculatorEngine()
    var body: some View {
		Text("\(engine.difference)")
			.font(.largeTitle)
			.fontWeight(.bold)
			.foregroundColor(.white)
			.frame(width: 100, height: 50)
			.background(Color(.systemBlue))
			.clipShape(Capsule())
			.onTapGesture(perform: engine.subtract)
			.onLongPressGesture(perform: engine.resetCapsule)
    }
}

struct CapsuleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButtonView()
    }
}
