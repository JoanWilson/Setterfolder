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

        sut = nil
    }

    func test_moveItemFromDownloads_shouldBeMovedtoDocumentsFolder() {
        let programInterface = Interface()
        sut.createAFileInAFolder(file:testFile, folderPath: "Downloads")
        programInterface.moveFilesFromDownloads()
        var fileWasFound = sut.findAFileInAFolder(file: testFile, folderPath: "Documents")
        sut.removeAFileInAFolder(file: testFile, folderPath: "Downloads")
        XCTAssertTrue(fileWasFound)
        fileWasFound = false

    }
    
    func test_moveItemFromDesktop_shouldBeMovedtoDocumentsFolder() {
        let programInterface = Interface()
        sut.createAFileInAFolder(file:testFile, folderPath: "Desktop")
        programInterface.moveFilesFromDesktop()
        var fileWasFound = sut.findAFileInAFolder(file: testFile, folderPath: "Documents")
        sut.removeAFileInAFolder(file: testFile, folderPath: "Desktop")
        XCTAssertTrue(fileWasFound)
        fileWasFound = false
    }
    
    
}
