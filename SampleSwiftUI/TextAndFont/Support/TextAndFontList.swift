//
//  TextAndFontList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct TextAndFontList: View {
   var body: some View {
      List {
         SupportNavigationLink("Text") { View_Text() }
         SupportNavigationLink("Standard Text Style") { StandardTextStyle() }
         SupportNavigationLink("Font Design") { FontDesign() }
         SupportNavigationLink("Font Size and Weight") { FontSizeAndWeight() }
         SupportNavigationLink("Font Style") { FontStyle() }
         SupportNavigationLink("TextField and SecureField") { View_TextField() }
      }
      .navigationBarTitle("Text and Font")
   }
}

struct TextAndFontList_Previews: PreviewProvider {
   static var previews: some View {
      TextAndFontList()
   }
}
