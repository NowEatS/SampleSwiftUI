//
//  ActionSheet.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_ActionSheet: View {
    @State private var color = Color.black
    
    @State private var showActionSheet = false
    
    var body: some View {
        VStack {
            Image(systemName: "paintbrush.fill")
                .resizable()
                .foregroundColor(color)
                .frame(width: 230, height: 230)
            
            Button(action: {
                self.showActionSheet.toggle()
            }, label: {
                Text("Show ActionSheet")
            })
                .padding()
                .actionSheet(isPresented: $showActionSheet, content: {
                    ActionSheet(title: Text("Choose Color"), message: nil, buttons: [
                        ActionSheet.Button.default(Text("Red"), action: {
                            self.color = .red
                        }),
                        ActionSheet.Button.default(Text("Green"), action: {
                            self.color = .green
                        }),
                        ActionSheet.Button.default(Text("Blue"), action: {
                            self.color = .blue
                        }),
                        .cancel(),
                        .destructive(Text("Reset"), action: {
                            self.color = .black
                        })
                        
                    ])
                })
        }
    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        View_ActionSheet()
    }
}
