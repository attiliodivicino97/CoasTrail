//
//  MyBagView.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 28/10/2020.
//

import SwiftUI

struct MyBagView: View {
    
    var contatore = 0
    
    var body: some View {
        
        ZStack {
            
            GeometryReader { geometry in
                
                Image("Bzaino")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea([.top, .bottom])
                    .opacity(0.9)
                    .frame(width: geometry.size.width)
            }            
        }
    }
}

struct MyBagView_Previews: PreviewProvider {
    static var previews: some View {
        MyBagView()
    }
}
