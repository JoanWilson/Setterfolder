import Foundation
import Darwin
import TSCBasic
import TSCUtility


let app = InterfaceProgram()
var input: String = ""
app.setOption(option: "default")
var optionSetted: String = app.getOption()
let operation = Operations()

class Main: Operations {
    
    override init() {
        super.init()
    }
    
    public func startProgram() throws {
        repeat{
            app.showMessageOptions()
            
            input = readLine()!
            app.setOption(option: input)
            
            
            switch app.getOption() {
                case "1":
                    lineBar()
                    app.loadingAnimation()
                    print("Seu Desktop será organizado...")
                    do {
                        try operation.organise(path: "/Users/joanwilsonoliveira/Desktop")
                    } catch {
                        print("Erro ao organizar sua pasta")
                    }
                    
                case "2":
                    lineBar()
                    app.loadingAnimation()
                    print("Sua pasta Downloads será organizada...")
                    do {
                        try operation.organise(path: "/Users/joanwilsonoliveira/Downloads")
                    } catch {
                        print("Erro ao organizar sua pasta")
                    }
                case "3":
                    lineBar()
                    print("Digite o caminho da pasta ex: '/Users/fulano/pastabagunçada")
                    let pathUserString = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
                    if pathUserString.isEmpty {
                        print("Strings vazias não são válidas")
                    } else {
                        do {
                            app.loadingAnimation()
                            try operation.organise(path: pathUserString)
                        } catch {
                            print("Path não encontrado!")
                        }
                    }
                    
                case "4":
                    lineBar()
                    print(app.credits())
                case "5":
                    lineBar()
                    print("Muito obrigado!! Até logo!")
                default:
                    lineBar()
                    print("Valor Inválido!")
            }
        } while (app.getOption() != "5")



        func lineBar(){
            print("==================================================================")
        }
    }
}

let main = Main()
try main.startProgram()

