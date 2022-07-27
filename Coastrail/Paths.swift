//
//  Paths.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 24/10/2020.
//

import SwiftUI

struct Paths: View {
    
    @State var show = false
    @State var txt = ""
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                ZStack {
                    
                    
                    VStack (spacing: 0) {
                        
                        HStack{
                            
                            if !self.show{
                                Text("Paths")
                                    .fontWeight(.bold)
                                    .foregroundColor(.champagne)
                                    .font(.system(size: 35))
                            }
                            
                            Spacer(minLength: 0)
                            
                            HStack{
                                
                                if self.show{
                                    
                                    Image(systemName: "magnifyingglass").padding(.horizontal, 8)
                                    
                                    TextField("Search Paths", text: self.$txt)
                                        .font(.system(size: 20))
                                    
                                    
                                    Button(action: {
                                        
                                        withAnimation {
                                            
                                            self.txt = ""
                                            self.show.toggle()
                                        }
                                        
                                    }) {
                                        
                                        Image(systemName: "xmark").foregroundColor(.black)
                                    }
                                    .padding(.horizontal, 8)
                                    
                                } else {
                                    
                                    Button(action: {
                                        
                                        withAnimation {
                                            
                                            self.show.toggle()
                                        }
                                        
                                    }) {
                                        
                                        Image(systemName: "magnifyingglass").foregroundColor(.black).padding(10)
                                        
                                    }
                                }
                            }
                            .padding(self.show ? 10 : 0)
                            .background(Color.champagne)//colore di sfondo per la search
                            .cornerRadius(20)
                            
                        }
                        .padding(.top, 70)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 10)
                        .background(Color.green3)
                        
                        if ( txt == "" )  {

                            ForEach (trail.indices) { trai in
                                NavigationLink (
                                    destination: SentieroDegliDei(index: trai),
                                    label: {
                                        cellView(index: trai)
                                    })
                            }
                        } else {
                            ForEach (trail.indices.filter({ trail[$0].name.lowercased().contains(txt.lowercased()) }), id: \.self) { trai in
                                
                                NavigationLink (
                                    destination: SentieroDegliDei(index: trai),
                                    label: {
                                        cellView(index: trai)
                                    })
                            }
                        }
                    }
                    .navigationBarTitle("Paths")
                    .navigationBarHidden(true)
                }
                Spacer()
                    .padding(.bottom, 50)
            }.background(Color.champagne)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .edgesIgnoringSafeArea(.top)
        }
    }
}



struct Paths_Previews: PreviewProvider {
    static var previews: some View {
        Paths()
    }
}


struct cellView : View {
    
    var index: Int
    
    var body : some View {
        
        ZStack (alignment: .bottom) {
            
            VStack {
                
            Image(trail[index].image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .padding(5)
                .shadow(radius: 10)

                
                Text(trail[index].name)
                    .foregroundColor(.champagne)
                    .bold()
                    .padding(5)
                    .padding(.bottom, 10)
                    .font(.system(size: 23))
            }
        }
        .background(Color.green3)
        .cornerRadius(10)
        .padding(15)
        .shadow(radius: 10)
    }
}

