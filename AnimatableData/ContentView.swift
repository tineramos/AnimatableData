//
//  ContentView.swift
//  AnimatableData
//
//  Created by Tine Ramos on 22/06/2022.
//

import SwiftUI

struct ContentView: View {
	
	var body: some View {
		
		NavigationView {

			List {
				NavigationLink(destination: AnimatableZIndexView()) {
					Text("ZIndex")
				}
			}
		}

	}
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
