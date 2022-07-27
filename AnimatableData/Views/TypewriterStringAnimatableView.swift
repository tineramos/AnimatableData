//
//  TypewriterStringAnimatableView.swift
//  AnimatableData
//
//  Created by Tine Ramos on 23/07/2022.
//

import SwiftUI

struct TypewriterStringAnimatableView: View {
	
	@State private var value = 0
	let string = "Hello world!! This is a greeting!!"
	
    var body: some View {
		
		VStack(spacing: 20) {
			TypeWriterAnimatableView(string: string, range: value)
			
			ButtonItem(display: .image(imageName: "keyboard")) {
				withAnimation(.linear(duration: 5)) {
					value = string.count
				}
			}
		}

    }
}

struct TypewriterStringAnimatableView_Previews: PreviewProvider {
    static var previews: some View {
        TypewriterStringAnimatableView()
    }
}
