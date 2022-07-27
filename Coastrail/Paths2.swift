//
//  Paths.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 24/10/2020.
//

import SwiftUI

struct Paths2: View {
    
//    @State var show = false
//    @State var text = ""
    
    @ObservedObject var searchBar: SearchBar = SearchBar()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                
                if ( searchBar.text == "" )  {
                    
                    ForEach (trail.indices) { trai in
                        NavigationLink (
                            destination: SentieroDegliDei(index: trai),
                            label: {
                                cellView(index: trai)
                                
                            })
                    }
                    
                } else if ( searchBar.text != "" && (trail.indices.filter({ trail[$0].name.lowercased().contains(searchBar.text.lowercased()) })).count == 0 ) {
                    
                    Text("No Result Found")
                        .padding(50)
                        .font(.title)
                    Spacer()
                    
                }
                
                else {
//                    let temp = trail.indices.filter({searchBar.text.isEmpty ? true : trail[$0].name.lowercased().contains(searchBar.text.lowercased()) })
                    ForEach (trail.indices.filter({searchBar.text.isEmpty ? true : trail[$0].name.lowercased().contains(searchBar.text.lowercased()) }), id: \.self)
                    { trai in

                        NavigationLink (
                            destination: SentieroDegliDei(index: trai),
                            label: {
                                cellView(index: trai)
                            })
                    }
                }
//                .filter{
//                    searchBar.text.isEmpty ? true : trail[$0].name.lowercased().contains(searchBar.text.lowercased())
//                }
                
                
                
//                else {
//                    ForEach (trail.indices.filter({ searchBar.text.isEmpty ? true : trail[$0].name.lowercased().contains(searchBar.text.lowercased()) })) { trai in
//
//                        NavigationLink (
//                            destination: SentieroDegliDei(index: trai),
//                            label: {
//                                cellView(index: trai)
//                            })
//                    }
//                }
            }
            .navigationBarTitle("Paths")
            .add(self.searchBar)
        }
    }
}



struct Paths2_Previews: PreviewProvider {
    static var previews: some View {
        Paths2()
    }
}


struct cellView2 : View {
    
    var index: Int
    
    var body : some View{
        
        ZStack(alignment: .bottom) {
            
            Image(trail[index].image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .padding(10)
            
            Text(trail[index].name)
                .foregroundColor(.white)
                .padding()
                .font(.system(size: 30))
        }
    }
}

