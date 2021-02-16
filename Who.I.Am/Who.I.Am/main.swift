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

print("Your Name Please")
var Name = readLine()


print("Your Phone")
var Phone  = readLine()

print("Your Email")
var Email = readLine()


var core = GetCoreInformation(name: String(Name!), phone: String(Phone!), email: String(Email!), active: true)



