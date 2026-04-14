//
//  IDGenerator.swift
//  LevelUp
//
//  Created by Santana, Marcelo de Carvalho on 13/04/26.
//

import Foundation

struct IDGenerator {
    private static var currentID = 0

    static func next() -> Int {
        currentID += 1
        return currentID
    }
}
