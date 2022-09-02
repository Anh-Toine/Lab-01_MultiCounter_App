//
//  SquareCalculatorEngine.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import Foundation

class SquareCalculatorEngine: ObservableObject {
	
	@Published var squared: Int = 2

	let SQRLIMIT = 4294967296

	func square() {
		if (squared < SQRLIMIT) {
			squared *= squared
		} else {
			squared = 2
		}
		print("Square: \(squared)")
	}
	
	func resetSquare() {
		squared = 2
		print("Resetted square")
	}
}
