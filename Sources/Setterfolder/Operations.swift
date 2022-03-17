//
//  Operations.swift
//  Setterfolder
//
//  Created by Joan Wilson Oliveira on 11/03/22.
//
import Foundation
import Cocoa

class Operations
{
    
    let fileManager = FileManager.default
    
    func organise(path: String?) throws
    {
        let commonPath = fileManager.homeDirectoryForCurrentUser
        let defaultPath = commonPath.appendingPathComponent("Downloads").absoluteString
        let pathURL = URL(fileURLWithPath: path?.trimmingCharacters(in: .whitespacesAndNewlines) ?? defaultPath)
        let fileTypesDictionary: [String : Array<String>] =
        [
            "Pictures": ["jpg", "jpeg", "jfif", "pjpeg", "pjp", "psd", "webp", "png", "svg", "gif"],
            "Music": ["3gp", "aa", "aac", "aax", "act", "aiff", "alac", "amr", "ape", "au", "awb", "flac", "m4p", "mp3", "webm", "ogg", "wav"],
            "Movies": ["mp4", "mov", "flv", "avi"],
            "Documents": ["zip", "pdf", "paper", "docx", "doc", "txt", "xls", "ppt", "ttf", "key", "xlsx"],
            "Installers": ["dmg", "exe"]
        ]
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
        
        for (key, values) in fileTypesDictionary
        {
            for value in values
            {
                let filter = try folderFiles.filter(
                    {(path: URL) throws -> Bool in
                        return path.pathExtension.lowercased() == value.replacingOccurrences(of: ".", with: "").lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
                    })
                    
                    for url in filter
                    {
                        try fileManager.moveItem(at: url, to: commonPath.appendingPathComponent(key).appendingPathComponent(url.lastPathComponent))
                    }
            }
        }
    }
}
