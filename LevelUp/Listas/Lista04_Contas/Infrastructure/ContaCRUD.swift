//
//  ContaCRUD.swift
//  LevelUp
//
//  Created by Santana, Marcelo de Carvalho on 09/04/26.
//

import Foundation


struct ContaCRUD<T: Conta> {
    private var contas: [T] = []

    mutating func cadastrar(conta: T) {
        contas.append(conta)
    }

    func listar() -> [T] {
        contas
    }

    mutating func alterar(id: Int, novaConta: T) {
        guard let index = contas.firstIndex(where: { $0.id == id }) else {
            return
        }
        contas[index] = novaConta
    }

                mutating func remover(id: Int) -> Bool {
                    let quantidadeInicial = contas.count
                    contas.removeAll { $0.id == id }
                    return contas.count < quantidadeInicial
                }
}
