//
//  Operations.swift
//  Setterfolder
//
//  Created by Joan Wilson Oliveira on 11/03/22.
//
import Foundation
import Cocoa

class Operations {
    
    //Declara File Manager
    let fileManager = FileManager.default
    
    //Método que organiza a pasta, ele recebe o PATH completo em formato de String
    func organise(path: String?) throws {
        
        //Manipulação do Path, caso seja inválido, o diretório Downloads está como padrão em defaultPath
        let commonPath = fileManager.homeDirectoryForCurrentUser
        let defaultPath = commonPath.appendingPathComponent("Downloads").absoluteString
        let pathURL = URL(fileURLWithPath: path?.trimmingCharacters(in: .whitespacesAndNewlines) ?? defaultPath)
        
        //Dicionário de todos os tipos. Aqui o método organise() irá somente reconher arquivos com esses tipos e seus respectivos diretórios destino
        let fileTypesDictionary: [String : Array<String>] = [
            "Pictures": ["jpg", "jpeg", "jfif", "pjpeg", "pjp", "psd", "webp", "png", "svg", "gif"],
            "Music": ["3gp", "aa", "aac", "aax", "act", "aiff", "alac", "amr", "ape", "au", "awb", "flac", "m4p", "mp3", "webm", "ogg", "wav"],
            "Movies": ["mp4", "mov", "flv", "avi"],
            "Documents": ["zip", "pdf", "paper", "docx", "doc", "txt", "xls", "ppt", "ttf", "key", "xlsx"],
            "Installers": ["dmg", "exe"]
        ]
        
        //Armazenamento de todos os paths do diretório a ser organizado
        let folderFiles = try fileManager.contentsOfDirectory(
            at: pathURL,
            includingPropertiesForKeys: nil,
            options: [
                .skipsSubdirectoryDescendants,
                .skipsHiddenFiles
            ]
        )
        
        if folderFiles.isEmpty {
            print("Seu diretório está vazio!")
            return
        }
        
        //Move cada arquivo da pasta escolhida para seus respectivos diretórios
        for (key, values) in fileTypesDictionary {
            for value in values {
                let filter = try folderFiles.filter({(path: URL) throws -> Bool in
                    return path.pathExtension.lowercased() == value.replacingOccurrences(of: ".", with: "").lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
                    })
                
                for url in filter {
                    try fileManager.moveItem(at: url, to: commonPath.appendingPathComponent(key).appendingPathComponent(url.lastPathComponent))
                }
            }
        }
    }
    
    //Cria um arquivo em uma pasta especifica
    func createAFileInAFolder(file: String, folderPath: String) {
        let fileManager = FileManager.default
        let path = NSHomeDirectory() + "/\(folderPath)/\(file)"
        fileManager.createFile(atPath: path, contents: nil, attributes: nil)
    }
    
    //Remove um arquivo de uma pasta especifica
    func removeAFileInAFolder(file: String, folderPath: String) {
        let fileManager = FileManager.default
        let path = NSHomeDirectory() + "/\(folderPath)/\(file)"
        do {
            try fileManager.removeItem(atPath: path)
        } catch {
            print("Não foi possivel excluir o arquivo")
            print(error)
        }
    }
    
    //Encontra um arquivo de um diretório de uma pasta dala e retorna true e for encontrado
    func findAFileInAFolder(file: String, folderPath: String) -> Bool {
        var fileWasFound = false
        let fileManager = FileManager.default
        let folderFiles = try! fileManager.contentsOfDirectory(
            at: fileManager.homeDirectoryForCurrentUser.appendingPathComponent(folderPath).absoluteURL,
            includingPropertiesForKeys: nil,
            options: [
                .skipsHiddenFiles,
                .skipsSubdirectoryDescendants
            ]

        )
        for item in folderFiles {
            let pathString = item.lastPathComponent
            if pathString == file {
                fileWasFound = true
            }
        }
        
        return fileWasFound
    }

    
    
    
}
