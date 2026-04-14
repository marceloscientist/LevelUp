//
//  ConsoleUtils.swift
//  LevelUp
//
//  Created by Santana, Marcelo de Carvalho on 10/04/26.
//

import Foundation

func limparTela() {
    print("\u{001B}[2J")
    print("\u{001B}[H")
}

func aguardarEnter() {
    print("\nPressione ENTER para voltar ao menu...")
    _ = readLine()
}


