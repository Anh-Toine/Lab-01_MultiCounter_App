//
//  CircleCalculatorEngine.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import Foundation

class CircleCalculatorEngine: ObservableObject{
	
	@Published var total: Int = 0
	
	func add() {
		total += 1
		print("Circle: \(total)")
	}
	
	func resetCircle() {
		total = 0
		print("Resetted circle")
	}
}
