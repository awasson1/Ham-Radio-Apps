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
    
    @ObservedObject var vm: QcodeListVM
    
    var body: some View {
        NavigationView
        {
            Form
            {
                ForEach(0..<50)
                {
                    code in
                    NavigationLink(destination: QcodeDetailedView())
                    {
                        Text("\(code)")
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
