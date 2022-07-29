//
//  SentieroDegliDei.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 26/10/2020.
//

import SwiftUI
import MapKit

struct SentieroDegliDei: View {
    
    let locationManager = LocationManager.shared
    
    @State private var showingAlert = false
    @State private var starSelected = false
    @ObservedObject var fav = TrailFavorites.shared
    
    var index : Int
    
    @State private var coordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.6282900, longitude: 14.4842700), span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5))
    
    var body: some View {
        
        
        ScrollView {
            
            VStack {
                VStack {
                    
                    Button(action: {
                        
                        if let loc1 = locationManager.locationManager.location?.coordinate {
                            let loc2 = CLLocationCoordinate2D(latitude: trail[index].latitude, longitude: trail[index].longitude)
                            getDirections(loc1: loc1, loc2: loc2, name: trail[index].name)
                            
                        } else { self.showingAlert.toggle() }
                        
                    }) {
                        
                        Map(coordinateRegion: $coordinateRegion)
                            .shadow(radius: 10)
                            .padding(.top, 0)
                            .frame(height: 300)
                            .edgesIgnoringSafeArea(.top)
                        
                    }.alert(isPresented: $showingAlert) {
                        Alert(title: Text("Important message"), message: Text("We couldn't find your location. \nSwitch on geolocation to continue"), dismissButton: .default(Text("Got it!")))
                    }
                    
                    Image(trail[index].imageB)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .offset(y: -90)
                        .padding(.bottom, -130)
                        .frame(width: 80, height: 80)
                        .shadow(radius: 10)
                    //                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    
                    HStack {
                        
                        Text(trail[index].name)
                            .foregroundColor(.champagne)
                            .font(.system(size: 30))
                            .shadow(radius: 0, x:2, y:2)
                        
                        Button(action: {
                            
                            trail[index].isFavorite.toggle()
                            starSelected = trail[index].isFavorite
                            
                            
                            if !trail[index].isFavorite {
                                let indice = fav.fav.firstIndex(where: {
                                    $0 == index
                                })
                                fav.fav.remove(at: indice!)
                            } else {
                                fav.fav.append(index)
                            }
                                

            
                        }, label: {
                            if starSelected {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                    .font(.system(size: 25))
                            } else {
                                Image(systemName: "star")
                                    .foregroundColor(.yellow)
                                    .font(.system(size: 25))
                            }
                        })
                    }.padding(.top, 60)
                    
                    
                    Text("It is a mountain route that overlooks the Amalfi Coast and which offers tourists breathtaking views.\nLet yourself be carried away in search of new landscapes with this new app.\n\nThis path is structured as follows:")
                        .padding(10)
                        .font(.system(size: 20))
                        .foregroundColor(.champagne)
                    
                    
                    HStack {
                        
                        Image ("1b")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding(.horizontal, 10)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                        
                        Text ("Start:  \(trail[index].start)")
                            .padding(.horizontal, 0)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                            .foregroundColor(.champagne)
                        
                        Spacer()
                    }
                    
                    HStack {
                        
                        Image ("2b")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding(.horizontal, 10)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                        
                        Text ("Arrive:  \(trail[index].end)")
                            .padding(.horizontal, 0)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                            .foregroundColor(.champagne)
                        
                        Spacer()
                    }
                    HStack {
                        
                        Image ("3b")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding(.horizontal, 10)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                        
                        Text ("Difficulty:  \(trail[index].difficulty)")
                            .padding(.horizontal, 0)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                            .foregroundColor(.champagne)
                        
                        Spacer()
                    }
                    HStack {
                        
                        Image ("4b")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding(.horizontal, 10)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                        
                        Text ("Duration:  \(trail[index].duration) hours")
                            .padding(.horizontal, 0)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                            .foregroundColor(.champagne)
                        
                        Spacer()
                    }
                    HStack {
                        
                        Image ("5b")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding(.horizontal, 10)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                        
                        Text ("Distance:  \(trail[index].distance) km")
                            .padding(.horizontal, 0)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                            .foregroundColor(.champagne)
                        
                        Spacer()
                    }
                    HStack {
                        
                        Image ("6b")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding(.horizontal, 10)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                        
                        Text ("Altitude:  \(trail[index].altitude)m above sea level")
                            .padding(.horizontal, 0)
                            .padding(.top, 0)
                            .padding(.bottom, 0)
                            .foregroundColor(.champagne)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 100)
            }.onAppear(){
                starSelected = trail[index].isFavorite
            }
        }.background(Color.green3)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SentieroDegliDei_Previews: PreviewProvider {
    static var previews: some View {
        SentieroDegliDei(index: 0)
    }
}

func getDirections(loc1: CLLocationCoordinate2D, loc2: CLLocationCoordinate2D, name: String) {
    let source = MKMapItem(placemark: MKPlacemark(coordinate: loc1))
    source.name = "Your Location"
    let destination = MKMapItem(placemark: MKPlacemark(coordinate: loc2))
    destination.name = name
    MKMapItem.openMaps(with: [source, destination], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
}
