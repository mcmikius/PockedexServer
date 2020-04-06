import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get("pokemon") { (req) in
        return try Pokemon(name: "Charizard").encode(for: req)
    }
}
