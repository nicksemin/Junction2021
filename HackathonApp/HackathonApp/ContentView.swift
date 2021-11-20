//
//  ContentView.swift
//  HackathonApp
//
//  Created by Nick Semin on 19.11.2021.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			VStack(spacing: 20) {
				Text("Hello world")
				Button("Big groups", action: {})
					.hybrellaDefault()

				Button("Small groups", action: {})
					.hybrellaDefault()
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
