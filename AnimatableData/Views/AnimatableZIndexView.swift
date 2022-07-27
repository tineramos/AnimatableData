//
//  AnimatableZIndexView.swift
//  AnimatableData
//
//  Created by Tine Ramos on 22/07/2022.
//

import SwiftUI

struct AnimatableZIndexView: View {
	
	@State private var redAtFront = false

	let colors: [Color] = [.blue, .green, .orange, .purple, .mint]
	
	var body: some View {

		VStack(spacing: 40) {

			Button("Toggle zIndex") {
				withAnimation(.linear(duration: 1)) {
					redAtFront.toggle()
				}
			}

			ZStack(alignment: .center) {
				RoundedRectangle(cornerRadius: 25)
					.fill(.red)
					.animatableZIndex(redAtFront ? 6 : 0)
					.animation(nil)

				ForEach(0..<5) { i in
					RoundedRectangle(cornerRadius: 25)
						.fill(colors[i])
						.offset(x: 0, y: Double((i + 1) * 30))
						.zIndex(Double(i))
				}
			}
			.frame(width: 300, height: 200)
			
			Spacer()
		}
	}
	
}

struct AnimatableZIndexView_Previews: PreviewProvider {
	static var previews: some View {
		AnimatableZIndexView()
	}
}

