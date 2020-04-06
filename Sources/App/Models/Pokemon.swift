//
//  Pokemon.swift
//  App
//
//  Created by Mykhailo Bondarenko on 06.04.2020.
//

import Vapor
import FluentSQLite

final class Pokemon: SQLiteModel {
    typealias Database = SQLiteDatabase
    var id: Int?
    let name: String
    
    init(id: Int? = nil, name: String) {
        self.name = name
    }
}

extension Pokemon: Content {}
extension Pokemon: Migration {}
