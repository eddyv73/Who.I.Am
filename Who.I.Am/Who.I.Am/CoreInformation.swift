//
//  CoreInformation.swift
//  Who.I.Am
//
//  Created by Eddy Wister on 15/02/21.
//

import Foundation

class CoreInformation : Encodable {
    var nameUser = ""
    var Phone = ""
    var email = ""
    var active = false
    var deviceInfo = ""
}

class dbSender : Encodable {
    var database = ""
    var collection = ""
    var Document = CoreInformation()
}

class ResponseWia : Decodable {
    var Document_ID = ""
    var Status = ""
}
