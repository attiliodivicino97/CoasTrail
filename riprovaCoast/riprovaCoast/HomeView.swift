//
//  HomeView.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 26/10/2020.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
       
//        VStack {
            
            //Tab Bar
            TabView {
                
                Paths()
                    .tabItem {
                        Image(systemName: "network")
                        Text("Paths")
                    }
                
                Text("home")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "map.fill")
                        Text("Offline Maps")
                    }
                
                Text("Favorites")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Favorites")
                    }
                
                Text("Settings")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
            }
//        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
