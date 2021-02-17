//
//  main.swift
//  Who.I.Am
//
//  Created by Eddy Wister on 14/02/21.
//

import Foundation

let currentHost = Host.current().localizedName ?? ""
let otherSpecs = Host.current().address ?? ""
let defaultPhone = "0"
let defaultEmail = "a@a.com"
let defaultName = ""
let defaultStatus = true


InitScreen()

print("Your Name Please")
var Name = readLine()


print("Your Phone")
var Phone  = readLine()

print("Your Email")
var Email = readLine()



var nameSet = Name ?? defaultName
var phoneSet = Phone ?? defaultPhone
var emailSet = Email ?? defaultEmail


var core = GetCoreInformation(name: nameSet, phone: phoneSet, email: emailSet, active: defaultStatus)

var liftoff = RocketLaunch(UserInfo: core)

if liftoff {
    print("Liftoff, Confirmed 🚀")
}else {
    print("Launch delayed 💥")
}


