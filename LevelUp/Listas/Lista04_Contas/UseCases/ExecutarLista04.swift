import Foundation

struct ExecutarLista04 {

    // Estado (fica aqui para não "perder" os dados ao voltar pro menu)
    private static var crudPF = ContaCRUD<ContaPF>()
    private static var crudPJ = ContaCRUD<ContaPJ>()

    static func executar() {
        var opcao: String?

        repeat {
            limparTela()
            mostrarMenuContas()
            opcao = readLine()

            switch opcao {
            case "1": cadastrarPF()
            case "2": cadastrarPJ()
            case "3": listarPF()
            case "4": listarPJ()
            case "5": alterarConta()
            case "6": removerConta()
            case "0": break
            default:
                print("❌ Opção inválida")
                aguardarEnter()
            }
        } while opcao != "0"
    }

    // MARK: - Menu
    private static func mostrarMenuContas() {
        print("""
        ===== CONTAS BANCÁRIAS =====
        1 - Cadastrar Conta PF
        2 - Cadastrar Conta PJ
        3 - Listar Contas PF
        4 - Listar Contas PJ
        5 - Alterar Conta
        6 - Remover Conta
        0 - Voltar
        ===========================
        """)
    }

    private static func cadastrarPF() {
        print("Nome:")
        let nome = readLine() ?? ""

        print("Saldo:")
        let saldo = Double(readLine() ?? "") ?? 0

        print("CPF:")
        let cpf = readLine() ?? ""

        let conta = ContaPF(
            id: IDGenerator.next(),   // ✅ ID GERADO AQUI
            nome: nome,
            saldo: saldo,
            cpf: cpf
        )

        crudPF.cadastrar(conta: conta)

        print("✅ Conta PF cadastrada com sucesso")
        print("🆔 ID gerado automaticamente: \(conta.id)")
        aguardarEnter()
    }

    private static func cadastrarPJ() {
        print("Nome:")
        let nome = readLine() ?? ""

        print("Saldo:")
        let saldo = Double(readLine() ?? "") ?? 0

        print("CNPJ:")
        let cnpj = readLine() ?? ""

        let conta = ContaPJ(
            id: IDGenerator.next(),   // ✅ ID GERADO AQUI
            nome: nome,
            saldo: saldo,
            cnpj: cnpj
        )

        crudPJ.cadastrar(conta: conta)

        print("✅ Conta PJ cadastrada com sucesso")
        print("🆔 ID gerado automaticamente: \(conta.id)")
        aguardarEnter()
    }
    
    private static func listarPF() {
        let contas = crudPF.listar()
        if contas.isEmpty { print("Nenhuma conta PF cadastrada.") }
        else { contas.forEach { print($0) } }
        aguardarEnter()
    }

    private static func listarPJ() {
        let contas = crudPJ.listar()
        if contas.isEmpty { print("Nenhuma conta PJ cadastrada.") }
        else { contas.forEach { print($0) } }
        aguardarEnter()
    }

    private static func alterarConta() {
        print("Informe o ID da conta a alterar:")
        let id = Int(readLine() ?? "") ?? -1

        print("Novo nome:")
        let nome = readLine() ?? ""

        print("Novo saldo:")
        let saldo = Double(readLine() ?? "") ?? 0

        if crudPF.listar().contains(where: { $0.id == id }) {
            print("CPF:")
            let cpf = readLine() ?? ""
            let conta = ContaPF(id: id, nome: nome, saldo: saldo, cpf: cpf)
            crudPF.alterar(id: id, novaConta: conta)
            print("✅ Conta PF alterada")
        } else if crudPJ.listar().contains(where: { $0.id == id }) {
            print("CNPJ:")
            let cnpj = readLine() ?? ""
            let conta = ContaPJ(id: id, nome: nome, saldo: saldo, cnpj: cnpj)
            crudPJ.alterar(id: id, novaConta: conta)
            print("✅ Conta PJ alterada")
        } else {
            print("❌ Nenhuma conta encontrada com esse ID")
        }

        aguardarEnter()
    }
    
    private static func removerConta() {
        print("Informe o ID da conta a remover:")
        let id = Int(readLine() ?? "") ?? -1

        let removeuPF = crudPF.remover(id: id)
        let removeuPJ = crudPJ.remover(id: id)

        if removeuPF || removeuPJ {
            print("✅ Conta removida com sucesso")
        } else {
            print("❌ Nenhuma conta encontrada com esse ID")
        }

        aguardarEnter()
    }
}
