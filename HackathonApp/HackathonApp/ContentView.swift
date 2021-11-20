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
				UnderlineSegmentedPicker(["My Questions", "All Questions"])

				NavigationLink(destination: Text("Small group conversation")) {
					Text("Here is a 5 people meeting")
				}
				.navigationTitle("Group Meeting")

				NavigationLink(destination: Text("Here is a big event occuring right now")) {
					Text("Big Groups")
				}
				.navigationTitle("Lecture Event")

			}
		}
		.navigationTitle("Demo")
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
