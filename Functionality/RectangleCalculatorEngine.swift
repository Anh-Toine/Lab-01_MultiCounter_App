//
//  RectangleCalculatorEngine.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import Foundation

class RectangleCalculatorEngine: ObservableObject {

	@Published var product: Int = 1

	let MLIMIT = 4611686018427387904

	func multiply() {
		if (product < MLIMIT) {
			product *= 2
		} else {
			product = 1
		}
		print("Rectangle: \(product)")
	}
	
	func resetRoundRectangle() {
		product = 1
		print("Resetted rectangle")
	}
}
