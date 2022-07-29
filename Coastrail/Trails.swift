//
//  Trails.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 24/10/2020.
//


import Foundation

struct Trails: Identifiable, Hashable {

    var id = UUID()
    var name: String
    var image: String
    var imageB: String
    var distance: Int
    var altitude: Int
    var difficulty: String
    var duration: Int
    var start: String
    var end: String
    var latitude: Double
    var longitude: Double
    var isFavorite: Bool
}

var trail: [Trails] = [
    
    Trails(name: "Ieranto Bay", image: "ieranto", imageB: "bieranto", distance: 6, altitude: 320, difficulty: "medium", duration: 4, start: "Nerano", end: "Nerano", latitude: 40.583494, longitude: 14.356335, isFavorite: false),
    
    Trails(name: "Path of Punta Campanella", image: "campanella", imageB: "bcampanella", distance: 12, altitude: 450, difficulty: "medium", duration: 6, start: "Nerano", end: "Nerano", latitude: 40.590685, longitude: 14.339981, isFavorite: false),
    
    Trails(name: "Path of Seaside Villages", image: "villages", imageB: "bvillages", distance: 7, altitude: 370, difficulty: "easy", duration: 5, start: "Maiori", end: "Amalfi", latitude: 40.649990, longitude: 14.638990, isFavorite: false),
    
    Trails(name: "Path of the Gods", image: "gods", imageB: "bgods", distance: 14, altitude: 250, difficulty: "medium", duration: 6, start: "Agerola", end: "Positano", latitude: 40.629995, longitude: 14.539986, isFavorite: false),
    
    Trails(name: "Path of the Lemons", image: "lemons", imageB: "blemons", distance: 7, altitude: 290, difficulty: "easy", duration: 4, start: "Maiori", end: "Minori", latitude: 40.634003, longitude: 14.602681, isFavorite: false),
    
    Trails(name: "Path of the Sanctuary of the Advocate", image: "advocate", imageB: "badvocate", distance: 13, altitude: 660, difficulty: "medium", duration: 5, start: "Cava de' Tirreni", end: "Maiori", latitude: 40.651231, longitude: 14.643365, isFavorite: false),
    
    Trails(name: "Valle delle Ferriere", image: "ferriere", imageB: "bferriere", distance: 8, altitude: 450, difficulty: "medium", duration: 5, start: "Minuta", end: "Amalfi", latitude: 40.634006, longitude: 14.602712, isFavorite: false)

]

class TrailFavorites: ObservableObject {
    
    static let shared = TrailFavorites()
    
    @Published var fav: [Int] {
        didSet{
            UserDefaults.standard.set(fav, forKey: "Favorites")
        }
    }
    
    private init() {
        
        if let f = UserDefaults.standard.array(forKey: "Favorites") as? [Int]  {
            
            fav = f
            for i in fav {
                trail[i].isFavorite = true
            }
    
        } else {
            fav = [Int]()
        }
        
    }
    
   
    
    
    
//    var check: [Int] {
//        didSet{
//            UserDefaults.standard.set(check, forKey: "check")
//        }
//    }
//    
//    if let c = UserDefaults.standard.array(forKey: "check") as? [Int] {
//        
//        check = c
//        for i in check {
//            
//        }
//    }
//    
}

