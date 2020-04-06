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
    
    func create(_ req: Request) throws -> Future<Pokemon> {
        let pokemon = try req.content.decode(Pokemon.self)
        return pokemon.save(on: req)
    }
}
