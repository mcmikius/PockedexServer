//
//  PokemonsController.swift
//  App
//
//  Created by Mykhailo Bondarenko on 06.04.2020.
//

import Vapor

final class PokemonsController {
    
    func index(_ req: Request) throws -> Future<[Pokemon]> {
        return Pokemon.query(on: req).all()
    }
    
    func create(_ req: Request) throws -> Future<Response> {
        return try req.content.decode([Pokemon].self).map(to: [Pokemon].self, { (pokemons) in
            for pokemon in pokemons {
                _ = pokemon.save(on: req)
            }
            return pokemons
        }).transform(to: req.redirect(to: "pokemons"))
    }
}
