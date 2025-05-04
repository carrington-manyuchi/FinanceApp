//
//  TransactionView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI




struct TransactionView: View {
    
    let imageName: String?
    let payTo: String
    let month: Int
    let day: Int
    let amount: Double
    let isExpense: Bool
    
    var body: some View {
        HStack {
            if let imageName = imageName {
                Image(systemName: imageName)
                    .foregroundStyle(fontColor)
                    .font(.title3)
            }
            
            VStack(alignment: .leading, spacing: 7) {
                
                TextView(text:payTo, font: .subheadline, fontWeight: .regular)
                
                if month >= 0 && month <= 12 {
                    let calendar = Calendar.current
                    let monthName = calendar.monthSymbols[month+1]
                    TextView(text:"\(monthName)/\(day)", font: .footnote, fontWeight: .semibold)
                }
            }
            
            Spacer()
            
            TextView(text:"\(isExpense ? "+" : "-") R\(String(format: "%.2f", amount))", font: .caption, fontWeight: .semibold)
                .padding()
        }
        .padding()
        .background(darkBackground2)
        .clipShape(.rect(cornerRadius: 20))
        .padding(.horizontal)
    }
}

#Preview {
        TransactionView(
            imageName: "bolt",
            payTo: "Electric",
            month: 3,
            day: 18,
            amount: 2000.00,
            isExpense: false
        )
}
