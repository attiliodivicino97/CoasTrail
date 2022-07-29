//
//  Backpack.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 28/10/2020.
//

import SwiftUI

struct Bag: Identifiable {
    
    var id = UUID()
    var bag = ""
    var isToggled = false
    
    init(bag: String) {
        self.bag = bag
    }
}

struct Backpack: View {
    
    @State var pbag = [
        
        Bag(bag: "Beach towel"),
        Bag(bag: "Hiking shoes"),
        Bag(bag: "Hat"),
        Bag(bag: "Poles"),
        Bag(bag: "Sunscreen"),
        Bag(bag: "Sunglasses"),
        Bag(bag: "Swimsuit"),
        Bag(bag: "Walking sticks"),
        Bag(bag: "Water bottle")
    ]
    
    var image = ["1","2","3","4","5","6","7","8","9"]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack {
                    
                    HStack{
                        
                        Text("Backpack")
                            .fontWeight(.bold)
                            .foregroundColor(.champagne)
                            .font(.system(size: 35))
                        
                        Spacer(minLength: 0)
                        
                    }
                    .padding(.top, 70)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                    .background(Color.green3)
                    
                    
                    Image("bzaino")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .opacity(0.9)
                        .padding(.top, 0)
                        .cornerRadius(10)
                        .padding(10)
                        .shadow(radius: 10)
                    
                    ForEach (pbag.indices) { index in
                        HStack {
                            
                            Image(image[index])
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.horizontal, 10)
                            
                            Text(self.pbag[index].bag)
                                .padding(.horizontal, 0)
                            
                            Spacer()
                            
                            Button (action: {
                                self.pbag[index].isToggled.toggle()
                            }, label: {
                                Image(systemName: self.pbag[index].isToggled ? "checkmark.circle.fill" : "circle")
                                    .padding(.horizontal, 15)
                                    .foregroundColor(.green3)
                                    .font(.system(size: 25))
                            })
                            
                            
                        }
                    }
                }
            }.edgesIgnoringSafeArea(.top)
            .navigationBarTitle("Backpack")
            .navigationBarHidden(true)
            .background(Color.champagne)
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct Backpack_Previews: PreviewProvider {
    static var previews: some View {
        Backpack()
    }
}
