//
//  ControllerMainScreen.swift
//  Who.I.Am
//
//  Created by Eddy Wister on 16/02/21.
//

import Foundation

func InitScreen() {
    print("Hello....")
    print("Welcome to WIA")
    print("Who I Am")
    print(".........")
    print("V.1")
    print(".........")
    print("Complete the information")
}

func GetCoreInformation(name: String, phone: String, email: String, active: Bool) -> CoreInformation {
    
    let coreInfo = CoreInformation()
    coreInfo.nameUser = name
    coreInfo.Phone = phone
    coreInfo.email = email
    coreInfo.active = active
    return coreInfo
}
