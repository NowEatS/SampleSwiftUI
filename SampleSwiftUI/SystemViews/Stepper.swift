//
//  Stepper.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/13.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Stepper: View {
    @State private var quantity = 0
    
    var body: some View {
        VStack {
            Text("\(quantity)")
                .font(.system(size: 150))
            
            // #1
            Stepper("Qty", value: $quantity)
                .padding()
            
            Stepper("Qty", onIncrement: {
                self.quantity += 1
            }, onDecrement: {
                self.quantity -= 1
            })
                .padding()
                .labelsHidden()
        }
    }
}

struct View_Stepper_Previews: PreviewProvider {
    static var previews: some View {
        View_Stepper()
    }
}
