//
//  ContentView.swift
//  Trekr
//
//  Created by Ahmed Nasser on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    let location: Location
    
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world from Ahmed ")
//        }
                    
            ScrollView{
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFit()
                                
                Text(location.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                
                Text(location.description)
                    .padding(.horizontal)
                
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                
                Text(location.more)
                    .padding(.horizontal)
                
            }
            .navigationTitle("Discover")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
    
        NavigationView {
            ContentView(location: Locations().primary)
        }
      
    }
}
