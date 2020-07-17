//
//  Group.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Group: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
        }
        
    }
}

struct View_Group_Previews: PreviewProvider {
    static var previews: some View {
        View_Group()
    }
}
