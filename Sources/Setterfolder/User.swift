//
//  User.swift
//  Setterfolder
//
//  Created by Joan Wilson Oliveira on 11/03/22.
//

import Foundation


public class User {
        
    private var directoryName: String = "undefined"
    
    init() {
    }
    
    public func getName() -> String {
        return self.directoryName
    }
    
    public func setName(name: String) {
        self.directoryName = name
    }
    
}






