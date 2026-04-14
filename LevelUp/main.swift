import Foundation

Task {
    var opcao: String?

    repeat {
        limparTela()
        mostrarMenuPrincipal()
        opcao = readLine()

        switch opcao {
        case "1":
            await Exercicio01.executar()
        case "2":
            await Exercicio02.executar()
        case "3":
            await Exercicio03.executar()
        case "4":
            ExecutarLista04.executar()
        case "0":
            print("👋 Encerrando programa")
        default:
            print("❌ Opção inválida")
            aguardarEnter()
        }

    } while opcao != "0"
}

RunLoop.main.run()
