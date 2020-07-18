//
//  Popover.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct Nav_Popover: View {
    @State private var showPopover = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showPopover.toggle()
            }, label: {
                Text("Show Popover")
            })
            .padding()
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.trailing), arrowEdge: .leading) {
                    NumberScene(number: 1, color: Color.blue)
                        .frame(minWidth: 200, minHeight: 200)
            }
        }
    }
}

struct Nav_Popover_Previews: PreviewProvider {
    static var previews: some View {
        Nav_Popover()
    }
}
