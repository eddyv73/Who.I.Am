//
//  main.swift
//  Who.I.Am
//
//  Created by Eddy Wister on 14/02/21.
//

import Foundation

let currentHost = Host.current().localizedName ?? ""
let otherSpecs = Host.current().address ?? ""

InitScreen()




func InitScreen() {
    print("Hello....")
    print("Welcome to WIA")
    print("Who I Am")
    print(".........")
    print("V.1")
    print(".........")
    print("Complete the information")
}
