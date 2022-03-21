//
//  File.swift
//  
//
//  Created by Joan Wilson Oliveira on 17/03/22.
//

import Foundation
import Foundation
import Darwin
import TSCBasic
import TSCUtility

let operation = Operations()
let app = Interface()

var input: String!



class Program {
    
    func startProgram() throws {
        repeat{
            self.showMenu()
        } while (app.getOption() != "5")
        
    }
    
    
    func showMenu() {
        app.showMessageOptions()
        input = readLine()!
        app.setOption(option: input)
        
        
        switch app.getOption() {
            case "1":
                app.optionDesktopOrganise()
            case "2":
                app.optionDownloadOrganise()
            case "3":
                app.optionAnyFolderOrganise()
            case "4":
                app.optionShowCredits()
            case "5":
                app.optionLeaveProgram()
            default:
                app.optionWrongValue()
        }
    }
    
}
    
