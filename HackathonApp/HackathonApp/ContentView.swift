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
                    Text("Small Groups")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(BrellaColor.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
				
				NavigationLink(destination: BigEventScreen()) {
					Text("Big Groups")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(BrellaColor.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
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
