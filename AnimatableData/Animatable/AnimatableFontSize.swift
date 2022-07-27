//
//  AnimatableFontSize.swift
//  AnimatableData
//
//  Created by Tine Ramos on 23/07/2022.
//

import SwiftUI

struct AnimatableFontSize: AnimatableModifier {
	
	var animatableData: Double

	func body(content: Content) -> some View {
		return content
			.font(.system(size: animatableData))
	}
	
}

extension View {
	func animatableFontSize(_ fontSize: Double) -> some View {
		modifier(AnimatableFontSize(animatableData: fontSize))
	}
}
