//
//  Operations.swift
//  Setterfolder
//
//  Created by Joan Wilson Oliveira on 11/03/22.
//
import Foundation
import Cocoa

class Operations: NSObject
{
    
    init(user: User)
    {
        self.user = user
    }
    
    let user: User
    let fileManager = FileManager.default
    
    func organise(path: String?) throws
    {
        let defaultPath = fileManager.homeDirectoryForCurrentUser.appendingPathComponent("Downloads").absoluteString
        let pathURL = URL(fileURLWithPath: path ?? defaultPath)
        var fileTypesDictionary: [String : Array<String>] =
        [
            "Pictures": ["jpg", "jpeg", "jfif", "pjpeg", "pjp", "psd", "webp", "png", "svg"],
            "Music": ["3gp", "aa", "aac", "aax", "act", "aiff", "alac", "amr", "ape", "au", "awb", "flac", "m4p", "mp3", "webm", "ogg", "wav"],
            "Movies": ["mp4", "mov", "flv", "avi"],
            "Documents": ["zip", "pdf", "paper", "docx", "doc", "txt", "xls", "exe", "ppt"]
        ]
        let folderFiles = try fileManager.contentsOfDirectory(
            at: pathURL,
            includingPropertiesForKeys: nil,
            options: [
                .skipsSubdirectoryDescendants,
                .skipsHiddenFiles
            ]
        )
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
                        try fileManager.moveItem(at: url, to: pathURL.appendingPathComponent(url.lastPathComponent))
                    }
            }
        }
    }
}
