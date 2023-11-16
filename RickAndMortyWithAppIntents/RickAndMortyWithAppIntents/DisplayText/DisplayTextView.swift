//
//  DisplayTextView.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 16.11.2023.
//

import SwiftUI

struct DisplayTextView: View {

    var viewStr: String?
    
    init(viewStr: String) {
        self.viewStr = viewStr
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(viewStr!)
        }
    }
    
}


#Preview {
    DisplayTextView(viewStr: "Hello")
}
