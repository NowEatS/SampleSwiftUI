//
//  Sheet.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct Nav_Sheet: View {
    @State private var statusMessage = ""
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Text(statusMessage)
                .font(.largeTitle)
            
            Button(action: {
                self.showSheet.toggle()
            }, label: {
                Text("Show Sheet")
            })
                .padding()
            .sheet(isPresented: $showSheet, onDismiss: {
                self.statusMessage = "Done"
            }, content: {
//                NumberScene(number: 0, color: Color.blue)
                ColorScene(showSheet: self.$showSheet, color: Color.blue)
            })
        }
        .navigationBarTitle("Sheet")
    }
}

struct Nav_Sheet_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Nav_Sheet()
        }
    }
}
