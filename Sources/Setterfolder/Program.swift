//
//  File.swift
//
//
//  Created by Joan Wilson Oliveira on 17/03/22.
//

import Foundation
import Foundation


let operation = Operations()
let app = Interface()

var input: String!



class Program {
    
    //Mantém o programa em Loop
    func startProgram() throws {
        print("""
         .-.                           .-.      .     .
   .--.-'       /      /              / -'     /     /
  (  (_) .-.---/------/---.-.  ).--.-/--.-._. / .-../   .-.  ).--.
   `-. ./.-'_ /      /  ./.-'_/     /  (   ) / (   /  ./.-'_/
 _    )(__.' /      /   (__.'/   `.'    `-'_/_.-`-'-..(__.'/
(_.--'

""")
        repeat{
            self.showMenu()
        } while (app.getOption() != "5")
        
    }
    
    //Define as opções
    func showMenu() {
        
        //O propósito de existir o método setOption, é para facilitar nos testes automatizados
        app.showMessageOptions()
        input = readLine()!
        app.setOption(option: input)
        
        
        switch app.getOption() {
            case "1":
                app.moveFilesFromAnyDirectory()
            case "2":
                app.moveFilesFromDownloads()
            case "3":
                app.moveFilesFromDesktop()
            case "4":
                app.showCredits()
            case "5":
                app.leaveProgram()
            default:
            app.wrongValueTreatment()
        }
    }
    
    
    
}
    
