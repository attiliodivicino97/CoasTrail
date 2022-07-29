//
//  PageIndicator.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 26/10/2020.
//

import SwiftUI

struct PageIndicator: View {
    
    var currentIndex: Int = 0
    var pagesCount: Int = 4
    var onColor: Color = Color.green3
    var offColor: Color = Color.green1
    var diameter: CGFloat = 10
    
    var body: some View {
        HStack{
            ForEach(0..<pagesCount){ i in
                Image(systemName: "circle.fill").resizable()
                    .foregroundColor( i == self.currentIndex ? self.onColor : self.offColor)
                    .frame(width: self.diameter, height: self.diameter)

            }
        }
    }
}

struct PageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicator()
    }
}
