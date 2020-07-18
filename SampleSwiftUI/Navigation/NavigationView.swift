//
//  NavigationView.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct Nav_NavigationView: View {
    @State private var barHidden = false
    @State private var push = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
//                    self.barHidden.toggle()
                    self.push = true
                }, label: {
                    Text("Toggle Navigation Bar")
                })
                    .padding()
                
                NavigationLink(destination: NumberScene(number: 1, color: .blue), label: {
                    Text("Push")
                })
                .padding()
                
                NavigationLink(destination: ColorScene(showSheet: $push), isActive: $push){
                    Text("Push")
                }
                .padding()
            }
            .navigationBarTitle("Navigation View", displayMode: .automatic)
            .navigationBarHidden(barHidden)
            .navigationBarItems(leading: Button("Close", action: { }), trailing: TrailingButtonView())
        }
    }
}

struct Nav_NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Nav_NavigationView()
    }
}

struct TrailingButtonView: View {
    var body: some View {
        HStack {
            Button(action: { }, label: {
                Image(systemName: "square.and.arrow.up")
            })
            
            Toggle(isOn: .constant(true), label: {
                Text("Toggle")
            })
                .labelsHidden()
        }
    }
}
