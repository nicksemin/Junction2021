//
//  ContentView.swift
//  HackathonApp
//
//  Created by Nick Semin on 19.11.2021.
//

import SwiftUI

struct ContentView: View {
	@State private var selectedIndex = 0
	
	var body: some View {
		NavigationView {
			VStack(spacing: 20) {
				NavigationLink(destination: MeetingView()) {
					Text("Here is a 5 people meeting")
				}
				.navigationTitle("Group Meeting")
				
				NavigationLink(destination: BigEventScreen().navigationBarHidden(true)) {
					Text("Big Groups")
				}
				.navigationTitle("Lecture Event")
				
			}
		}
		.navigationTitle("Demo")
		.edgesIgnoringSafeArea(.top)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
