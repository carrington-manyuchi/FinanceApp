//
//  CreditCardView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct CreditCardView: View {
    let creditCardNumber: String
    var body: some View {
        
        let chipWidth: CGFloat = 45
        let chipHeight: CGFloat = 35
        
        
        ZStack {
            Rectangle()
                .fill(.purple)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            
            
            VStack(alignment: .leading) {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.yellow.gradient)
                        .frame(width: chipWidth, height: chipHeight)
                        .overlay {
                            Image(creditCardChip)
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: chipWidth, height: chipHeight)
                        }
                        .padding()
                    
                    Spacer()
                }
                Spacer()
            }
            .frame(height: 200)
            .padding()
        }
    }
}

#Preview {
    CreditCardView(creditCardNumber: "1234567890123456")
}
