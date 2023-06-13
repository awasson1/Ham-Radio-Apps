//
//  QcodeModel.swift
//  Q-code-flashcards
//
//  Created by Anthony Wasson on 6/6/23.
//

import Foundation

struct Qcode: Identifiable
{
    var id: UUID = UUID()
    
    var code: String
    var question: String
    var command: String
}
