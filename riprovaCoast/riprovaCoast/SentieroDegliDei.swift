//
//  SentieroDegliDei.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 26/10/2020.
//

import SwiftUI

struct SentieroDegliDei: View {

    var trail: Trails

    var body: some View {
        
        VStack {
            
            ZStack(alignment: .bottom) {
                
                Image(trail.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(10)
                
                Text(trail.name)
                    .foregroundColor(.white)
                    .padding()
                    .font(.system(size: 30))
            }
            Spacer()
        }.background(Color.green.ignoresSafeArea(.all))
    }
}

struct SentieroDegliDei_Previews: PreviewProvider {
    static var previews: some View {
        SentieroDegliDei(trail: Trails(name: "trail", image: "trail"))
    }
}
