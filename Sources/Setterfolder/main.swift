import Foundation
import Darwin
import TSCBasic
import TSCUtility


//let animation = PercentProgressAnimation(
//  stream: stdoutStream,
//  header: "Loading Awesome Stuff ✨")
//
//for i in 0..<100 {
//  let second: Double = 1_000_000
//  usleep(UInt32(second * 0.05))
//  animation.update(step: i, total: 100, text: "Loading..")
//}
//
//animation.complete(success: true)
//print("Done! 🚀")


let app = InterfaceProgram()
var input: String!
app.setOption(option: "default")
var optionSetted: String = app.getOption()

print(app.getName())

repeat{
    app.showMessageOptions()
    
    input = readLine()!
    app.setOption(option: input)
    
    
    switch app.getOption() {
        case "1":
            print("O nome do diretório permite o programa saber o diretório da sua pasta Downloads e Desktop, por favor digite seu nome: ")
            input = readLine()!
            app.setOption(option: input)
            print("==================================================================")
            app.setName(name: input)
            print("Nome alterado com sucesso, \(app.getName())! ✅")
        case "2":
            print("==================================================================")
            print("Seu Desktop será organizado...")
            app.loadingAnimation()
        case "3":
            print("==================================================================")
            print("Sua pasta Downloads será organizada...")
            app.loadingAnimation()
        case "4":
            print("==================================================================")
            print(app.credits())
        case "5":
            print("==================================================================")
            print("Muito obrigado!! Até logo!")
        default:
            print("==================================================================")
            print("Valor Inválido!")
    }
} while (app.getOption() != "5")





