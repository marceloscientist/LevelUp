import Foundation

struct Exercicio02 {

    static let nomes = [
        "Ana", "Bruno", "Carlos", "Daniela", "Eduardo",
        "Fernanda", "Gabriel", "Helena", "Igor", "Juliana"
    ]

    static func executar() async {
        limparTela()
        print("📘 Exercício 02 – Verificação de Nome\n")
        print("Nomes disponíveis:")
        print(nomes.joined(separator: ", "))
        print("\nDigite um nome para buscar (ENTER para padrão: Gabriel):")

        let entrada = readLine()
        let nomeParaBuscar = entrada?.isEmpty == false ? entrada! : "Gabriel"

        print("\n🔍 Procurando pelo nome: \(nomeParaBuscar)...")

        let existe = await nomeExiste(nomeParaBuscar)
        let mensagem = mensagemResultado(existe)

        print("\n\(mensagem)")
        aguardarEnter()
    }

    private static func nomeExiste(_ nome: String) async -> Bool {
        try? await Task.sleep(nanoseconds: 4_000_000_000)
        return nomes.contains { $0.lowercased() == nome.lowercased() }
    }

    private static func mensagemResultado(_ existe: Bool) -> String {
        existe
        ? "✅ O nome informado existe no vetor"
        : "❌ O nome não existe no vetor"
    }
}
