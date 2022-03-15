//
//  Interface.swift
//  Setterfolder
//
//  Created by Joan Wilson Oliveira on 14/03/22.
//
import Foundation
import Cocoa
import Darwin
import TSCBasic
import TSCUtility

class InterfaceProgram: User {
    private var option: String = "default"
    private var input: String = "none"
    
    
    
    public func showMessageOptions(){
        print(
    """
    
    ==================================================================
    Seja Bem-vindo ao SetterFolder, o organizador de pastas para macOS,
    Para começar, digite uma das opções abaixo:
    
    1 - Configurar seu nome de diretório
    2 - Organizar Desktop
    3 - Organizar Downloads
    4 - Créditos
    5 - Sair
    
    Sua opção:
    """)
    }
    
    
    public func organiseDesktop(){
        return
    }
    
    public func organiseDownloads(){
        return
    }
    
    public func credits() -> String{
        return "Project made by Joan Wilson Martins de Oliveira, Apple Developer Academy Intern | IFCE |"
    }
    
    public func loadingAnimation() {
        let animation = PercentProgressAnimation(
          stream: stdoutStream,
          header: "Carregando operação...✨")

        for i in 0..<100 {
          let second: Double = 1_000_000
          usleep(UInt32(second * 0.05))
          animation.update(step: i, total: 100, text: "Carregando..")
        }

        animation.complete(success: true)
        print("Feito! 🚀")
    }
    
    public func getOption() -> String{
        return self.option
    }
    
    public func setOption(option: String){
        self.option = option
    }

}
