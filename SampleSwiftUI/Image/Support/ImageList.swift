//
//  ImageList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct ImageList: View {
   var body: some View {
      List {
         SupportNavigationLink("Image Basics") { ImageBasics() }
//         SupportNavigationLink("Resizable") { Resizable() }
//         SupportNavigationLink("Rendering Mode") { RenderingMode() }
//         SupportNavigationLink("Image Interpolation") { ImageInterpolation() }
      }
      .navigationBarTitle("Image")
   }
}

struct ImageList_Previews: PreviewProvider {
   static var previews: some View {
      ImageList()
   }
}
