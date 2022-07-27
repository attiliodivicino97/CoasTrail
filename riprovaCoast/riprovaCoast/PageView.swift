//
//  PageView.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 26/10/2020.
//

import SwiftUI

struct PageView: View {
    
    var page = Page.getAll.first!
    
    var body: some View {
            VStack{
                
                Image(page.image)
                    .resizable()
                    .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                VStack{
                    Text(page.heading)
                        .font(.title).bold().layoutPriority(1).multilineTextAlignment(.center)
                    Text(page.subSubheading)
                        .multilineTextAlignment(.center)
                }.padding()
            }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
