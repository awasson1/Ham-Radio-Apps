//
//  Qcodeflashcardsapp.swift
//  Qcodeflashcards
//
//  This app is meant to help memorize q-codes by providing codes,
//  then allowing the user to tap on the code to reveal its meaning

//  Created by Anthony Wasson on 6/5/23.
//

import SwiftUI

@main
struct Qcodeflashcardsapp: App {
    var body: some Scene {
        WindowGroup {
            QcodeListView(vm: QcodeListVM())
        }
    }
}
