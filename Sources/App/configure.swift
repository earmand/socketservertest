import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
 
    
    //    app.http.server.configuration.hostname = "10.1.1.137"
    app.http.server.configuration.hostname = "0.0.0.0"
    app.http.server.configuration.port = 9980
      
    try routes(app)
    sockets(app)
}
