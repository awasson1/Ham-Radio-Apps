//
//  QcodeDetailedView.swift
//  Q-code-flashcards
//
//  Created by Anthony Wasson on 6/6/23.
//

import SwiftUI

struct QcodeDetailedView: View {
    
    var code: String
    var question: String
    var command: String
    
    var body: some View {
        Text(code)
            .font(.title)
            .padding()
        Text("Question form: \(question)")
            .padding()
        Text("Command form: \(command)")
            .padding()
        
        Spacer()
    }
}


/*
struct QcodeDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        QcodeDetailedView()
    }
}
*/
