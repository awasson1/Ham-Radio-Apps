//
//  QcodeDetailedView.swift
//  Q-code-flashcards
//
//  Created by Anthony Wasson on 6/6/23.
//

import SwiftUI

struct QcodeDetailedView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var code: String
    var question: String
    var command: String
    
    var body: some View {
        Text(code)
            .font(.title)
            .padding()
        Form
        {
            Text("Question form: \n\(question)")
                .padding()
            Text("Command form: \n\(command)")
                .padding()
            Button(action: { self.dismiss() })
            {
                HStack
                {
                    Spacer()
                    Text("Return")
                    Spacer()
                }
            }
        }
    }
}


/*
struct QcodeDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        QcodeDetailedView()
    }
}
*/
