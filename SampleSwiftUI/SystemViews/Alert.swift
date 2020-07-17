//
//  Alert.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Alert: View {
    @State private var result = ""
    
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text(result)
                .font(.largeTitle)
            
            Button(action: {
                self.showAlert.toggle()
            }, label: {
                Text("Show Alert")
            })
                .padding()
                .alert(isPresented: $showAlert) {
//                    Alert(title: Text("Alert"),
//                          message: Text("Message"),
//                          dismissButton: .default(Text("OK")))
                    Alert(title: Text("Alert"), message: Text("Message"), primaryButton: .destructive(Text("Delete"), action: {
                        self.result = "Delete"
                    }), secondaryButton: .cancel() {
                        self.result = "Cancelled"
                        })
            }
            
            
            
        }
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        View_Alert()
    }
}
