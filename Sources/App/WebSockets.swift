//
//  File.swift
//  
//
//  Created by Daniel Earman on 7/17/22.
//

import Vapor

extension String: Error {}

public func sockets(_ app: Application) {
    app.webSocket("echo") { req, ws in
        let debug = 1
        if debug > 0 {print("ws connected")}
        ws.onText { ws, text in
            if debug > 0 {print("ws received: \(text)")}
            let response = String(format:"%@,%0.3f",text,Date.timeIntervalSinceReferenceDate)
            ws.send(response)
        }
    }
    

}
