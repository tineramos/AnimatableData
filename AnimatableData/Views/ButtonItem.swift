//
//  ButtonItem.swift
//  AnimatableData
//
//  Created by Tine Ramos on 23/07/2022.
//

import SwiftUI

struct ButtonItem: View {
	
	let display: Display
	let action: () -> ()
	
	var body: some View {
		
		Button {
			action()
		} label: {
			switch display {
			case .text(let string):
				Text(string)
					.foregroundColor(.black)
			case .image(let imageName):
				Image(systemName: imageName)
					.tint(.black)
			}
		}
		.frame(width: 110, height: 50)
		.overlay(RoundedRectangle(cornerRadius: 5)
			.stroke(.gray, lineWidth: 2))
		
		
	}
}

struct ButtonItem_Previews: PreviewProvider {
    static var previews: some View {
		ButtonItem(display: .text("Hello world")) { }
    }
}
