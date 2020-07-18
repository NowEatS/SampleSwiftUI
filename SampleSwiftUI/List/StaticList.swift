//
//  StaticList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct StaticList: View {
    var body: some View {
        List {
            HStack {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            
            Text("Hello, World!")
            
            Image(systemName: "star")
            
            Toggle(isOn: .constant(true)) {
                Text("On")
            }
        }
    }
}

struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
