//
//  AnimatableZIndex.swift
//  AnimatableData
//
//  Created by Tine Ramos on 22/07/2022.
//

import SwiftUI

struct AnimatableZIndex: ViewModifier, Animatable {
	
	var index: Double
	
	var animatableData: Double {
		get { return index }
		set {
			print(newValue)
			index = newValue
		}
	}
	
	func body(content: Content) -> some View {
		return content
			.zIndex(index)
	}
	
}

extension View {
	func animatableZIndex(_ index: Double) -> some View {
		modifier(AnimatableZIndex(index: index))
	}
}
