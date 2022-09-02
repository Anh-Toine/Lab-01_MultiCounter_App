//
//  CalculatorEngine.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

class CalculatorEngine: ObservableObject {
	
	@Published var sum: Int = 0
	@Published var difference: Int = 100
	@Published var product: Int = 1
	@Published var squared: Int = 2

	let MLIMIT = 4611686018427387904
	let SQRLIMIT = 4294967296
	
	func add() {
		sum += 1
		print(sum)
	}
	
	func subtract() {
		difference -= 1
		print(difference)
	}
	
	func multiply() {
		if (product < MLIMIT) {
			product *= 2
		} else {
			product = 1
		}
		print(product)
	}
	
	func square() {
		if (squared < SQRLIMIT) {
			squared *= squared
		} else {
			squared = 2
		}
		print(squared)
	}
	
	func resetCircle() {
		sum = 0
	}
	
	func resetCapsule() {
		difference = 100
	}
	
	func resetRoundRectangle() {
		product = 1
	}
	
	func resetSquare() {
		squared = 2
	}
}
