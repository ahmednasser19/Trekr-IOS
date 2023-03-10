//
//  TrekrApp.swift
//  Trekr
//
//  Created by Ahmed Nasser on 20/01/2023.
//

import SwiftUI

@main
struct TrekrApp: App {
    
   @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                    
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Location")
                }
                
                NavigationView {
                    TipsView()
                    
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }.environmentObject(locations)
        }
    }
}
