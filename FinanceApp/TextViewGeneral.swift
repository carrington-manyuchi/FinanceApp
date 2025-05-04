//
//  HeadingTextView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct TextViewGeneral: View {
    
    let text: String
    let font: Font
    let fontWeight: Font.Weight
    let color: Color
    
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(fontWeight)
            .foregroundStyle(color)
    }
}

#Preview {
    TextViewGeneral(text: "Your Cards", font: .body, fontWeight: .semibold, color: fontColor)
}
