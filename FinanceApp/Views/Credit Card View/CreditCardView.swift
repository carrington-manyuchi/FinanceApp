//
//  CreditCardView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct CreditCardView: View {
    let creditCardNumber: String
    let name: String
    let expiryMonth: Int
    let expiryYear: Int
    
    var body: some View {
        
        let chipWidth: CGFloat = 45
        let chipHeight: CGFloat = 35
        
        ZStack {
            Rectangle()
                .fill(.blue.gradient)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(gold)
                        .frame(width: chipWidth, height: chipHeight)
                        .overlay {
                            Image(creditCardChip)
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: chipWidth, height: chipHeight)
                        }
                        .padding()
                }

                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        TextViewWhite(text: creditCardNumber, font: .title2, fontweight: .bold)
                        TextViewWhite(text: name, font: .caption, fontweight: .semibold)
                        
                        VStack(alignment: .leading, spacing: 3) {
                            TextViewWhite(text: "Expiry Date", font: .caption2, fontweight: .light)
                            TextViewWhite(text: "\(expiryMonth)/\(expiryYear)", font: .caption, fontweight: .semibold)
                        }
                    }
                    
                    Spacer()
                    VStack {
                        let circleDim: CGFloat = 30
                        HStack(spacing: -10) {
                            Circle()
                                .fill(.red)
                                .frame(width: circleDim, height: circleDim)
                                .zIndex(1)
                                .shadow(radius: 10)
                                .opacity(0.8)
                            
                            Circle()
                                .fill(.orange)
                                .frame(width: circleDim, height: circleDim)
                                .shadow(radius: 10)
                                .opacity(0.8)
                        }
                        
                        TextViewWhite(text: "Mastercard", font: .caption, fontweight: .bold)
                    }
                }
            }
            .frame(height: 200)
            .padding()
        }
    }
}

#Preview {
    CreditCardView(creditCardNumber: "1234567890123456", name: "Carrington Manyuchi", expiryMonth: 29, expiryYear: 2029)
}
