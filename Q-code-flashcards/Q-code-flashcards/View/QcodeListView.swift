//
//  QcodeListView.swift
//  Qcodeflashcards
//
//  This app is meant to help memorize q-codes by providing codes,
//  then allowing the user to tap on the code to reveal its meaning
//
//  Created by Anthony Wasson on 6/5/23.
//

import SwiftUI

struct QcodeListView: View {
    
    @ObservedObject var vm: QcodeListVM
    
    var body: some View {
        NavigationView
        {
            Form
            {
                ForEach(vm.Qcodes)
                {
                    qcode in
                    NavigationLink(destination: QcodeDetailedView(code: qcode.code, question: qcode.question, command: qcode.command))
                    {
                        HStack
                        {
                            Spacer()
                            Text(qcode.code)
                            Spacer()
                        }
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
