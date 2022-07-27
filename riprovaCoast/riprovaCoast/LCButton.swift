//
//  LCButton.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 26/10/2020.
//


import SwiftUI

struct LCButton: View {
    var text = "Next"
    var action: (()->()) = {}
    
    var body: some View {
      Button(action: {
        self.action()
      }) {
        HStack {
            Text(text)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.vertical)
                .accentColor(Color.white)
                .background(Color.green)
                .cornerRadius(30)
            }
        }
    }
}

struct LCButton_Previews: PreviewProvider {
    static var previews: some View {
        LCButton()
    }
}
