//
//  VenusRest.swift
//  Who.I.Am
//
//  Created by Eddy Wister on 16/02/21.
//
import Alamofire
import Foundation


func RocketLaunch(UserInfo : CoreInformation) ->  Bool {
    print("Init Fire")
    var result = false
    let runLoop = CFRunLoopGetCurrent()
    let session = URLSession.shared
    let endpointString = "Http://localhost:5000/mongodb"
    let cs = SetSenderInfo(UserInfo: UserInfo)
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let jsonData = try! encoder.encode(cs)
    let json = String(data: jsonData, encoding: String.Encoding.utf8)
    guard let endpoint = URL(string: endpointString) else {
        return result
    }
    
    var request = URLRequest(url: endpoint)
    request.httpMethod = "POST"
    request.allHTTPHeaderFields = [
        "Content-Type": "application/json",
        "Accept": "application/json"
    ]
    request.httpBody = json?.data(using: .utf8)
    
    print("Data to send",json)
        let semaphore = DispatchSemaphore(value: 0)
        let task = session.dataTask(with: request) { (data: Data?, _, error: Error?) in
            semaphore.signal()
            print("run")
            print(data)
        }

        task.resume()
        semaphore.wait()
    
    return result
    
}

func SetSenderInfo(UserInfo : CoreInformation) -> dbSender {
    let sender = dbSender()
    sender.collection = "voyagerstorage"
    sender.database = "voyager"
    sender.Document = UserInfo
    return sender
}

