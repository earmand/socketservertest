import Foundation
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.get("dan") { req -> String in
        return "Hello, Dan!"
    }
    
    app.get("status") { req -> String in
        
        let response = String(format:"RefTime:%0.3f",Date.timeIntervalSinceReferenceDate)
        
        return response
    }
}
