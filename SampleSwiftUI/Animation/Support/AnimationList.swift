//
//  AnimationList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct AnimationList: View {
   var body: some View {
      List {
         SupportNavigationLink("Image Basics") { AnimationBasics() }
         SupportNavigationLink("Resizable") { Animation_Repeat() }
         SupportNavigationLink("Rendering Mode") { SpringAnimation() }
      }
      .navigationBarTitle("Image")
   }
}

struct AnimationList_Previews: PreviewProvider {
   static var previews: some View {
      AnimationList()
   }
}
