//
//  TextViews.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct TextViewWhite: View {
    
    let text: String
    let font: Font
    let fontweight: Font.Weight
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(fontweight)
            .padding(.horizontal)
            .foregroundStyle(white)
    }
}

#Preview {
    TextViewWhite(text: "date", font: .body, fontweight: .bold)
}



