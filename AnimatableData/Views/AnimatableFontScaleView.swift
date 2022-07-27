//
//  AnimatableFontScaleView.swift
//  AnimatableData
//
//  Created by Tine Ramos on 22/07/2022.
//

import SwiftUI

enum Display {
	case text(String)
	case image(imageName: String)
}

struct AnimatableFontScaleView: View {

	@State private var sentence: String = "This is the sentence!"
	@State private var currentFontSize: CGFloat = 14
	
	private let increment: CGFloat = 2
	
	var body: some View {
		
		VStack(spacing: 20) {
			
			TextField("Enter your sentence", text: $sentence)
				.padding()
				.overlay(RoundedRectangle(cornerRadius: 5)
					.stroke(.gray, lineWidth: 2))

			if !sentence.isEmpty {
				
				HStack(spacing: 20) {
					
					ButtonItem(display: .image(imageName: "plus")) {
						currentFontSize += increment
					}
					
					ButtonItem(display: .text("Reset")) {
						currentFontSize = 14
					}
					
					ButtonItem(display: .image(imageName: "minus")) {
						if currentFontSize > 1 {
							currentFontSize -= increment
						}
					}

				}
				
			}
			
			Text(sentence)
				.lineLimit(nil)
				.padding(.top, 20)
				.animatableFontSize(currentFontSize)
				.animation(.spring(), value: currentFontSize)

			Spacer()
		}
		.padding(.horizontal, 10)

	}
	
}

struct AnimatableFontScaleView_Previews: PreviewProvider {
	static var previews: some View {
		AnimatableFontScaleView()
	}
}
