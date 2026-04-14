//
//  Exercicio01.swift
//  LevelUp
//
//  Created by Santana, Marcelo de Carvalho on 09/04/26.
//

import Foundation

struct Exercicio01 {    
    
    static func executar() async {
        limparTela()
        print("📘 Exercício 01 – Descontos Encadeados\n")

        let valorInicial = 100
        print("Valor inicial escolhido: \(valorInicial)\n")

        let etapa1 = await aplicarDesconto10(valorInicial)
        let etapa2 = await aplicarDesconto20(etapa1)
        let etapa3 = await adicionarDez(etapa2)

        print("\n✅ Valor final: \(etapa3)")
        aguardarEnter()
    }

    private static func aplicarDesconto10(_ valor: Int) async -> Double {
        print("⏳ Aplicando 10% de desconto...")
        try? await Task.sleep(nanoseconds: 3_000_000_000)
        return Double(valor) * 0.9
    }

    private static func aplicarDesconto20(_ valor: Double) async -> Double {
        print("⏳ Aplicando mais 20% de desconto...")
        try? await Task.sleep(nanoseconds: 5_000_000_000)
        return valor * 0.8
    }

    private static func adicionarDez(_ valor: Double) async -> Double {
        print("⏳ Adicionando 10 unidades...")
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        return valor + 10
    }
}
