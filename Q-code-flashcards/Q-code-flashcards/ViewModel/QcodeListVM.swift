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
        
    init()
    {
        for num in 0..<10
        {
            add("Q\(num)", "Hello \(num)!")
        }
        
        add("QRA", "Q: What is the name (or call sign) of your station?\n A: The name (or call sign) of my station is ...")
        
        add("QRB", "Q: How far are you from my station?\n A: The distance between our stations is ... nautical miles (or km).")
        
        //Qcode data will go here
    }
}
