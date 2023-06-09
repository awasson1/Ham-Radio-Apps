//
//  QcodeDetailedView.swift
//  Q-code-flashcards
//
//  Created by Anthony Wasson on 6/6/23.
//

import SwiftUI

struct QcodeDetailedView: View {
    
    var desc: String?
    
    var body: some View {
        Text(desc ?? "No description found")
    }
}


/*
struct QcodeDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        QcodeDetailedView()
    }
}
*/
