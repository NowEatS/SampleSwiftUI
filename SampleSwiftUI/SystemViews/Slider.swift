//
//  Slider.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/17.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Slider: View {
   @State private var r = 0.0
   @State private var g = 0.0
   @State private var b = 0.0
   
   var color: Color {
      Color(red: r / 255, green: g / 255, blue: b / 255)
   }
   
   var body: some View {
      VStack {
         Image(systemName: "smiley.fill")
            .resizable()
            .foregroundColor(color)
            .frame(width: 250, height: 250)
        
        HStack {
            Text("R")
            
            Slider(value: $r, in: 0 ... 255, step: 1, onEditingChanged: {
                print($0)
            },
                   label: { EmptyView() })
            
            HStack {
                Spacer()
                Text("\(Int(r))")
            }
            .frame(width: 40)
        }
        .padding()
        .foregroundColor(.red)
        
        HStack {
            Text("G")
            
            Slider(value: $g, in: 0 ... 255, step: 1, onEditingChanged: {
                print($0)
            }, label: { EmptyView() })
            
            HStack {
                Spacer()
                Text("\(Int(g))")
            }
            .frame(width: 40)
        }
        .padding()
        .foregroundColor(.green)
        
        HStack {
            Text("B")
            Slider(value: $b, in: 0 ... 255, step: 1, onEditingChanged: {
                print($0)
            }, label: { EmptyView() })
            
            HStack {
                Spacer()
                Text("\(Int(b))")
            }
            .frame(width: 40)
        }
        .padding()
        .foregroundColor(.blue)
      }
   }
}

struct View_Slider_Previews: PreviewProvider {
   static var previews: some View {
      View_Slider()
   }
}
