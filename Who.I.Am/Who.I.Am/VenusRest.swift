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

    let endpointString = "https://www.mocky.io/v2/5e2674472f00002800a4f417"

    guard let endpoint = URL(string: endpointString) else {
        return result
    }


        let semaphore = DispatchSemaphore(value: 0)

        let task = session.dataTask(with: endpoint) { (data: Data?, _, error: Error?) in
            semaphore.signal()
            print("run")
            print(data)
        }

        task.resume()
        semaphore.wait()
    
    return result
    
}

