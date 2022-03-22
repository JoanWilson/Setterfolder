//
//  ProgramTest.swift
//  
//
//  Created by Joan Wilson Oliveira on 22/03/22.
//

import XCTest
@testable import Setterfolder

class OperationsTest: XCTestCase {
    
    var sut: Operations!
    let testFile = "unitTest.txt"
    
    override func setUpWithError() throws {
        sut = Operations()
        sut.createAFileInAFolder(file:testFile, folderPath: "Downloads")
    }

    override func tearDownWithError() throws {
        sut.removeAFileInAFolder(file: testFile, folderPath: "Downloads")
        sut = nil
    }

    func test_moveItemFromDownloads_shouldBeMovedtoDocumentsFolder() {
        let programInterface = Interface()
        sut.createAFileInAFolder(file:testFile, folderPath: "Downloads")
        programInterface.moveFilesFromDownloads()
        let fileWasFound = sut.findAFileInAFolder(file: testFile, folderPath: "Documents")
        
        XCTAssertTrue(fileWasFound)
    }
    
    func test_moveItemFromDesktop_shouldBeMovedtoDocumentsFolder() {
        let programInterface = Interface()
        sut.createAFileInAFolder(file:testFile, folderPath: "Desktop")
        programInterface.moveFilesFromDesktop()
        let fileWasFound = sut.findAFileInAFolder(file: testFile, folderPath: "Documents")

        XCTAssertTrue(fileWasFound)
    }
    
    
    

}
