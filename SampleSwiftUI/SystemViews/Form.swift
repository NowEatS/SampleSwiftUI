//
//  Form.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Form: View {
    @State private var email = ""
    @State private var password = ""
    @State private var address = ""
    @State private var age = 0
    @State private var receiveEmail = false
    
    var body: some View {
        Form {
            Section {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                TextField("Address", text: $address)
            }
            
            Section {
                Stepper("Age: \(age)", value: $age)
                Toggle(isOn: $receiveEmail, label: { Text("Receive Email") })
            }
        }
    }
}

struct View_Form_Previews: PreviewProvider {
    static var previews: some View {
        View_Form()
    }
}
