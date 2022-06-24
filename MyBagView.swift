//
//  MyBagView.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 28/10/2020.
//

import SwiftUI

struct MyBagView: View {
    
    var contatore = 0
    
    var body: some View {
        
        ZStack {
            
            GeometryReader { geometry in
                
                Image("Bzaino")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea([.top, .bottom])
                    .opacity(0.9)
                    .frame(width: geometry.size.width)
            }
            
//            VStack {
//                switch contatore {
//                case 0:
//                    Text("niente")
//
//                case 1:
//                    MyBag1()
//
//                case 2:
//                    MyBag2()
//
//                case 3:
//                    MyBag3()
//
//                case 4:
//                    MyBag4()
//
//                case 5:
//                    MyBag5()
//
//                case 6:
//                    MyBag6()
//
//                case 7:
//                    MyBag7()
//
//                case 8:
//                    MyBag8()
//
//                case 9:
//                    MyBag9()
//
//                default:
//                    Text("niente")
//                }
//
//
//
//
//
//            }
            
            
            
        }
        
        
        
        
    }
}

struct MyBagView_Previews: PreviewProvider {
    static var previews: some View {
        MyBagView()
    }
}

//struct MyBag1 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag2 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag3 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag4 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag5 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag6 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag7 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag8 : View {
//
//    var body : some View {
//
//    }
//}
//
//struct MyBag9 : View {
//
//    var body : some View {
//
//    }
//}
