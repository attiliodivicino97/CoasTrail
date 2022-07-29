//
//  Favorites.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 27/10/2020.
//

import SwiftUI

struct Favorites: View {
    
    @State private var showingAlert = false
    @ObservedObject var fav = TrailFavorites.shared
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {

                HStack{
                    
                    
                    Text("Favorites")
                        .fontWeight(.bold)
                        .foregroundColor(.champagne)
                        .font(.system(size: 35))
                    
                    
                    Spacer(minLength: 0)
                    
                }
                .padding(.top, 70)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                .background(Color.green3)
                
                ForEach (fav.fav, id: \.self) { trai in
                    NavigationLink (
                        destination: SentieroDegliDei(index: trai),
                        label: {
                            cellView(index: trai)
                        })
                }
            }
            .padding(.bottom, 100)
            .edgesIgnoringSafeArea(.top)
            .navigationBarTitle("Favorites")
            .navigationBarHidden(true)
            .background(Color.champagne)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
