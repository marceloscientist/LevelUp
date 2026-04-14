import Foundation

struct Exercicio03 {

    static let numeros = [
        -10, -7, -4, -1, 2, 5, 8, 11, 14, 17,
        -3, -6, -9, 12, 15, 18, -13, -16, 19, 20
    ]

    static func executar() async {
        limparTela()
        print("📘 Exercício 03 – Execução Paralela\n")
        print("Array analisado:")
        print(numeros)
        print("\n⏳ Executando cálculos em paralelo...\n")

        async let paresImpares = contarParesImpares(numeros)
        async let positivosNegativos = contarPositivosNegativos(numeros)

        let p = await paresImpares
        print("✅ Pares: \(p.pares), Ímpares: \(p.impares)")

        let n = await positivosNegativos
        print("✅ Positivos: \(n.positivos), Negativos: \(n.negativos)")

        aguardarEnter()
    }

    private static func contarParesImpares(_ numeros: [Int]) async -> (pares: Int, impares: Int) {
        try? await Task.sleep(nanoseconds: 5_000_000_000)
        return (
            numeros.filter { $0 % 2 == 0 }.count,
            numeros.filter { $0 % 2 != 0 }.count
        )
    }

    private static func contarPositivosNegativos(_ numeros: [Int]) async -> (positivos: Int, negativos: Int) {
        try? await Task.sleep(nanoseconds: 7_000_000_000)
        return (
            numeros.filter { $0 > 0 }.count,
            numeros.filter { $0 < 0 }.count
        )
    }
}
