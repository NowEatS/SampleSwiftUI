//
//  SupportNavigationLink.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

import SwiftUI

struct SupportNavigationLink<Content: View>: View {
   let content: Content
   let title: String
   
   init(_ title: String, @ViewBuilder content: () -> Content) {
      self.title = title
      self.content = content()
   }
   
   var body: some View {
      NavigationLink(destination: content.navigationBarTitle(title)) {
         Text(title)
      }
   }
}

struct SupportNavigationLink_Previews: PreviewProvider {
   static var previews: some View {
      SupportNavigationLink("Text", content: { Text("Text") })
   }
}
