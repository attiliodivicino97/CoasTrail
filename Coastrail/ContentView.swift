//
//  ContentView.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 24/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    private let initialLaunchKey = "isInitialLaunch"
    
    let unused = LocationManager.shared
    
    var body: some View {
        
        VStack {
            if show || UserDefaults.standard.bool(forKey: initialLaunchKey){
                HomeView().transition(.move(edge: .bottom))
            } else {
                PageViewContainer( viewControllers: Page.getAll.map({  UIHostingController(rootView: PageView(page: $0) ) }), presentSignupView: {
                    withAnimation {
                        self.show = true
                    }
                    UserDefaults.standard.set(true, forKey: self.initialLaunchKey)
                }).transition(.scale)
            }
        }.frame(maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
