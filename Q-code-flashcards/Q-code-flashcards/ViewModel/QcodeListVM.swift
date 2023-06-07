//
//  QcodeListVM.swift
//  Qcodeflashcards
//
//  Created by Anthony Wasson on 6/6/23.
//

import Foundation

class QcodeListVM: ObservableObject
{
    @Published var Qcodes = [Qcode]()
}
