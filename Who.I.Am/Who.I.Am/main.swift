//
//  main.swift
//  Who.I.Am
//
//  Created by Eddy Wister on 14/02/21.
//

import Foundation

let currentHost = Host.current().localizedName ?? ""
let otherSpecs = Host.current().address ?? ""



print("This pc is "+currentHost)
print("Ip Address "+otherSpecs)



// get all statistics per 3 seconds
let observer = ActivityObserver()
observer.updatedStatisticsHandler = { observer in
    Swift.print(observer.statistics)
}
observer.start(interval: 3.0)

// finish to get statistics
observer.stop()
