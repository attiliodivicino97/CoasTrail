//
//  UIApplicationExt.swift
//  riprovaCoast
//
//  Created by Attilio Di Vicino on 26/10/2020.
//

import SwiftUI


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
