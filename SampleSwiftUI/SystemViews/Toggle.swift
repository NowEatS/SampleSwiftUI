//
//  Toggle.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/13.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Toggle: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .resizable()
                .foregroundColor(isOn ? .yellow : .gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            // #1
//            Toggle("Toggle Switch", isOn: $isOn)
            VStack(spacing: 30) {
                Text("Toggle Switch")
                
                Toggle(isOn: $isOn, label: {
                    HStack {
                        Image(systemName: "bolt.circle.fill")
                        Text("Toggle Switch")
                    }
                })
                    .labelsHidden()
            }
            
        }
    }
}

struct View_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        View_Toggle()
    }
}
