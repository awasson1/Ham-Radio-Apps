//
//  QcodeListVM.swift
//  Qcodeflashcards
//
//  Created by Anthony Wasson on 6/6/23.
//

import Foundation
import SwiftUI

class QcodeListVM: ObservableObject
{
    @Published var Qcodes = [Qcode]()
    
    //adds a Qcode model item to the Qcodes list with given data
    func add(_ code: String, _ question: String, _ command: String)
    {
        let tmp = Qcode(code: code, question: question, command: command)
        
        self.Qcodes.append(tmp)
        
        //sorting which may be reused in another version
        //Qcodes = Qcodes.sorted(by: { $0.code < $1.code })
    }
    
    //test function which writes and saves a text file to be used for data storage
    func writeFile(_ fileName: String, _ str: String)
    {
        let documentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileURL = documentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        print("File path: \(fileURL.path)")
        
        do
        {
            try str.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        }
        catch let error as NSError
        {
            print("Failed to write to URL")
            print(error)
        }
    }
    
    //reads data from the text file in the project, the data must be in the file named "QcodeData.txt"
    func readData() -> String
    {
        let fileURL = Bundle.main.path(forResource: "QcodeData", ofType: "txt")
        var readString = ""
        
        do
        {
            readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
        }
        catch let error as NSError
        {
            print("Failed to read file")
            print(error)
        }
        
        return readString
    }
        
    //Takes the data from the text file and separates the information to be usable for the data model
    init()
    {
        //read the data text file
        let components = readData().components(separatedBy: "\n")
        //print(components)
        
        //separate the data into groups of 3 lines
        //first line contains the code (e.g. QRZ)
        //second line contains the meaning in question form
        //third line contains the meaning in command form
        //the character "&" marks the end of the file
        
        var line = 0
        while(line < components.count)
        {
            //if it is not the end of the file, add the following 3 lines of data
            if(components[line] != "&")
            {
                add(components[line], components[line + 1], components[line + 2])
            }
            line += 3
        }
    }
}
