//
//  QcodeList.swift
//  Qcodeflashcards
//  This app is meant to help memorize q-codes by providing codes,
//  then allowing the user to tap on the code to reveal its meaning
//
//  Created by Anthony Wasson on 6/5/23.
//

import SwiftUI

struct QcodeList: View {
    
    @State var showingPopup = false
    
    var body: some View {
        NavigationView
        {
            Form
            {
                ForEach(0..<50)
                {
                    Button("Push me! \($0)")
                    {
                        showingPopup = true
                    }
                }
            }
            .navigationTitle("Q-codes")
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
