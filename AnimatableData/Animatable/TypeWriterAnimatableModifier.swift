//
//  TypeWriterAnimatableModifier.swift
//  AnimatableData
//
//  Created by Tine Ramos on 23/07/2022.
//

import SwiftUI

struct TypeWriterAnimatableView: View, Animatable {

	var string: String
	var range = 0
	
	var animatableData: Double {
		get { Double(range) }
		set {
			range = Int(max(0, newValue))
		}
	}
	
	var body: some View {
		let stringToShow = String(string.prefix(range))
		Text(stringToShow)
	}
	
}
