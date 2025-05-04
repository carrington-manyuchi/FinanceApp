//
//  YourCardsView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct YourCardsView: View {
    
    let numActiveCard: Int
    let yourCardsFont: Font = .title3
    let numActiveCardFont: Font = .caption
    let numActiveCardFontWeight: Font.Weight = .thin
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                TextViewGeneral(
                    text: "Your Cards",
                    font: yourCardsFont,
                    fontWeight: .bold,
                    color: fontColor
                )
                
                TextViewGeneral(
                    text: "You have \(numActiveCard) Active Cards",
                    font: numActiveCardFont,
                    fontWeight: numActiveCardFontWeight,
                    color: fontColor
                )
            }
            
            Spacer()
            
            Circle()
                .fill(gold)
                .frame(width: 40, height: 40)
                .padding()
                .overlay {
                    Image(systemName: "plus")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundStyle(.black)
                }
            
        }
        .padding(10)
        .background(darkBackground)
        .clipShape(.rect(cornerRadius: 20))
        .padding()
        
    }
}

#Preview {
    
    YourCardsView(numActiveCard: 3)
}
