//
//  SystemViewList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct SystemViewList: View {
    var body: some View {
        List {
            Section {
                SupportNavigationLink("HStack") { View_HStack() }
                SupportNavigationLink("VStack") { View_VStack() }
                SupportNavigationLink("ZStack") { View_ZStack() }
                SupportNavigationLink("Spacer") { View_Spacer() }
            }
            
            Section {
                SupportNavigationLink("Button") { View_Button() }
                SupportNavigationLink("Toggle") { View_Toggle() }
                SupportNavigationLink("Date Picker Style") { View_DatePickerStyle() }
                SupportNavigationLink("Date Picker") { View_DatePicker() }
//                SupportNavigationLink("Picker") { View_Picker() }
                SupportNavigationLink("Stepper") { View_Stepper() }
                SupportNavigationLink("Slider") { View_Slider() }
            }
            
            Section {
                SupportNavigationLink("Alert") { View_Alert() }
                SupportNavigationLink("Action Sheet") { View_ActionSheet() }
                SupportNavigationLink("Group") { View_Group() }
                SupportNavigationLink("Form") { View_Form() }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("System Views")
    }
}

struct SystemViewList_Previews: PreviewProvider {
    static var previews: some View {
        SystemViewList()
    }
}
