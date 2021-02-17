//
//  VenusRest.swift
//  Who.I.Am
//
//  Created by Eddy Wister on 16/02/21.
//

import Foundation

func RocketLaunch(UserInfo : CoreInformation) ->  Bool {
    
    let url = URL(string: "https://ifconfig.me")!

    let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
        guard let data = data else { return }
        print(String(data: data, encoding: .utf8)!)
    }

    task.resume()
    return true
    
}
