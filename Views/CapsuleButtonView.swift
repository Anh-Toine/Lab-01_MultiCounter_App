//
//  CapsuleButtonView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct CapsuleButtonView: View {
	@StateObject var engine: CapsuleCalculatorEngine = CapsuleCalculatorEngine()
	var label: String
    var body: some View {
		VStack{
			Text("\(engine.difference)")
				.font(.custom("WorkSans-Bold", size: 30))
				.foregroundColor(.white)
				.frame(width: 100, height: 50)
				.background(Color(.systemBlue))
				.clipShape(Capsule())
				.onTapGesture(perform: engine.subtract)
				.onLongPressGesture(perform: engine.resetCapsule)
		
			LabelView(labelText: label)
		}
    }
}

struct CapsuleButtonView_Previews: PreviewProvider {
    static var previews: some View {
		CapsuleButtonView(label: "Indef")
    }
}
