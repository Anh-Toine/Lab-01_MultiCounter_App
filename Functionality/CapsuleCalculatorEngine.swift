//
//  CapsuleCalculatorEngine.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import Foundation

class CapsuleCalculatorEngine: ObservableObject {
	
	@Published var difference: Int = 100

	func subtract() {
		difference -= 1
		print("Capsule: \(difference)")
	}
	
	func resetCapsule() {
		difference = 100
		print("Resetted capsule")
	}
}
