//
//  Conta.swift
//  LevelUp
//
//  Created by Santana, Marcelo de Carvalho on 09/04/26.
//

import Foundation


protocol Conta {
    var id: Int { get }
    var nome: String { get set }
    var saldo: Double { get set }
}
