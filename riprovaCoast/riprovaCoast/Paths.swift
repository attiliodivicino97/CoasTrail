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
    var trail: [Trails] = [
        Trails(name: "Sentiero degli Dei",image: "foresta"),
        Trails(name: "Sentiero dei limoni",image: "foresta"),
        Trails(name: "Valle delle Ferriere",image: "foresta"),
        Trails(name: "Sentiero degli Dei2",image: "foresta"),
        Trails(name: "Sentiero degli Dei3",image: "foresta"),
        Trails(name: "Sentiero degli Dei4",image: "foresta"),
        Trails(name: "Sentiero degli Dei5",image: "foresta"),
        Trails(name: "Sentiero degli Dei6",image: "foresta"),
        Trails(name: "Sentiero degli Dei7",image: "foresta"),
        Trails(name: "Sentiero degli Dei8",image: "foresta"),
        Trails(name: "Sentiero degli Dei9",image: "foresta"),
        Trails(name: "Sentiero degli Dei10",image: "foresta"),
        Trails(name: "Sentiero degli Dei11",image: "foresta"),
        Trails(name: "Sentiero degli Dei12",image: "foresta"),
        Trails(name: "Sentiero degli Dei13",image: "foresta"),
        Trails(name: "Sentiero degli Dei14",image: "foresta"),
        Trails(name: "Sentiero degli Dei15",image: "foresta"),
    ]
    
    @ObservedObject var searchBar: SearchBar = SearchBar()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                
                if ( searchBar.text == "" )  {
                    
                    ForEach (self.trail) { trail in
                        NavigationLink (
                            destination: SentieroDegliDei(trail: trail),
                            label: {
                                cellView(trail: trail)
                                
                            })
                    }
                    
                } else if ( searchBar.text != "" && (trail.filter({ $0.name.lowercased().contains(searchBar.text.lowercased()) })).count == 0 ) {
                    
                    Text("No Result Found")
                        .padding(50)
                        .font(.title)
                    Spacer()
                    
                } else {
                    ForEach (trail.filter({ searchBar.text.isEmpty ? true : $0.name.lowercased().contains(searchBar.text.lowercased()) })) { trail in
                        
                        NavigationLink (
                            destination: SentieroDegliDei(trail: trail),
                            label: {
                                cellView(trail: trail)
                            })
                    }
                }
            }
            .navigationBarTitle("Paths")
            .add(self.searchBar)
        }
    }
}



struct Paths_Previews: PreviewProvider {
    static var previews: some View {
        Paths()
    }
}


struct cellView : View {
    
    var trail: Trails
    
    var body : some View{
        
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
    }
}

