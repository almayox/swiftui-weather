//
//  ButtonLayout.swift
//  swiftui-weather
//
//  Created by almayo ibrahim  on 17/01/2024.
//

import Foundation
import SwiftUI

struct ButtonLayout: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 40, alignment: .center)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10.0)
    }
}


struct ButtonLayout_preview: PreviewProvider {
    
    static var previews: some View {
        ButtonLayout(title: "test title", textColor: .white, backgroundColor: .blue)
    }
    
}
