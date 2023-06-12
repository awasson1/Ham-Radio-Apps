//
//  QcodeDetailedView.swift
//  Q-code-flashcards
//
//  Created by Anthony Wasson on 6/6/23.
//

import SwiftUI

struct QcodeDetailedView: View {
    
    var code: String?
    var desc: String?
    
    var body: some View {
        Text(code ?? "No code found")
            .padding()
        Text(desc ?? "No description found")
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
