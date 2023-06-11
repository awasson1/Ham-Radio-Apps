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
    
    func add(_ c: String, _ d: String)
    {
        let tmp = Qcode(code: c, description: d)
        
        self.Qcodes.append(tmp)
        
        //sorting which may be reused in another version
        //Qcodes = Qcodes.sorted(by: { $0.code < $1.code })
    }
    
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
        
    init()
    {
        let components = readData().components(separatedBy: "\n")
        print(components)
        
        var line = 0
        while(line < components.count)
        {
            if(components[line] != "&")
            {
                add(components[line], components[line + 1] + components[line + 2])
            }
            line += 3
        }
    }
}
