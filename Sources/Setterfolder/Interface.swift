//
//  Interface.swift
//  Setterfolder
//
//  Created by Joan Wilson Oliveira on 14/03/22.
//
import Foundation
import Cocoa


class Interface {
    var option: String = "default"
    var input: String = "none"
    
    
    
    func showMessageOptions(){
        self.lineBar()
        print(
    """
    Seja Bem-vindo ao SetterFolder, o organizador
    de pastas para macOS,Para começar, digite
    uma das opções abaixo:
    
    1 - Organizar sua pasta
    2 - Créditos
    3 - Sair
    
    Sua opção:
    """)
    }
    
    func credits() -> String{
        return "Project made by Joan Wilson Martins de Oliveira, Apple Developer Academy Intern | IFCE |"
    }
    
    
    //Pacote Depreciado
//    func loadingAnimation() {
//        let animation = PercentProgressAnimation(
//          stream: stdoutStream,
//          header: "⏱ Organizando sua pasta...")
//
//        for i in 0...100 {
//          let second: Double = 1_000_000
//            usleep(UInt32(second * 0.0051))
//          animation.update(step: i, total: 100, text: "Carregando..")
//        }
//
//        animation.complete(success: true)
//        print("Feito! 🚀")
//    }
    
    func showOption(folder: String) {
        //self.loadingAnimation()
        print("\(folder), será organizada agora!")
        
    }
    
    func moveFilesFromDesktop(){
        self.lineBar()
        self.showOption(folder: "Desktop")
        do {
            try operation.organise(path: "/Users/joanwilsonoliveira/Desktop")
        } catch {
            print("Erro ao organizar sua pasta")
            
        }
    }
    
    func moveFilesFromDownloads() {
        self.lineBar()
        self.showOption(folder: "Downloads")
        do {
            try operation.organise(path: "/Users/joanwilsonoliveira/Downloads")
        } catch {
            print("Erro ao organizar sua pasta")
        }
    }
    
    func moveFilesFromAnyDirectory() {
        self.lineBar()
        print("Digite o caminho da pasta ex: '/Users/fulano/pastabagunçada")
        let pathUserString = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
        if pathUserString.isEmpty {
            print("Strings vazias não são válidas")
        } else {
            do {
                //app.loadingAnimation()
                try operation.organise(path: pathUserString)
                print("\n Feito! ✨ ")
            } catch {
                print("Path não encontrado!")
            }
        }
    }
    
    func showCredits() {
        self.lineBar()
        print(self.credits())
    }

    func leaveProgram() {
        self.lineBar()
        print("Muito obrigado!! Até logo!")
    }
    
    func wrongValueTreatment() {
        self.lineBar()
        print("Valor Inválido!")
    }
    
    func lineBar(){
        print("")
    }
    
    func getOption() -> String{
        return self.option
    }
    
    func setOption(option: String){
        self.option = option
    }

}
