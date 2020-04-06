import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    let controller = PokemonsController()
    router.get("pokemons", use: controller.index)
    router.post("pokemon", use: controller.create)
}
