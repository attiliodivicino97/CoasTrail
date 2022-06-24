//
//  HomeView.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 26/10/2020.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        //Tab Bar
        TabView {
            
            Paths()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text("Paths")
                }
            
            Backpack()
                .tabItem {
                    Image(systemName: "case.fill")
                    Text("Backpack")
                }
            
            Favorites()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }.onAppear()
            
//            Text("Settings")
//                .font(.system(size: 30, weight: .bold, design: .rounded))
//                .tabItem {
//                    Image(systemName: "gearshape.fill")
//                    Text("Settings")
//                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
