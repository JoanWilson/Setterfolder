import Foundation
import Darwin
import TSCBasic
import TSCUtility


let app = InterfaceProgram()
var input: String = ""
app.setOption(option: "default")
var optionSetted: String = app.getOption()

public class Main {
    
    init(){
        self.startProgram()
    }
    
    public func startProgram(){
        repeat{
            app.showMessageOptions()
            
            input = readLine()!
            app.setOption(option: input)
            
            
            switch app.getOption() {
                case "1":
                    print("O nome do diretório permite o programa saber o diretório da sua pasta Downloads e Desktop, por favor digite seu nome: ")
                    input = readLine()!
                    app.setOption(option: input)
                    lineBar()
                    app.setName(name: input)
                    print("Nome alterado com sucesso, \(app.getName())! ✅")
                case "2":
                    lineBar()
                    print("Seu Desktop será organizado...")
                    app.loadingAnimation()
                case "3":
                    lineBar()
                    print("Sua pasta Downloads será organizada...")
                    app.loadingAnimation()
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

