//
//  CreditCardPageView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct CreditCardPageView: View {
    
    let transactions: [(
        imageName: String?,
        payTo: String,
        month: Int,
        day: Int,
        amount: Double,
        isExpense:Bool
    )] = [
        (
            imageName: nil,
            payTo: "KFC",
            month: 3,
            day: 18,
            amount: 2000.00,
            isExpense: true
        ),
        
        (
            imageName: "bolt",
            payTo: "Electric",
            month: 3,
            day: 18,
            amount: 1500.00,
            isExpense: false
        ),
        
        (
            imageName: "wrench",
            payTo: "Car Repair",
            month: 3,
            day: 18,
            amount: 2200.50,
            isExpense: false
        ),
        
        (
            imageName: "dollarsign.circle",
            payTo: "Win Prizw",
            month: 3,
            day: 24,
            amount: 102000.00,
            isExpense: false
        ),
        
        (
            imageName: "bolt",
            payTo: "Electric",
            month: 3,
            day: 18,
            amount: 1500.00,
            isExpense: false
        ),
        
        (
            imageName: "wrench",
            payTo: "Car Repair",
            month: 3,
            day: 18,
            amount: 2200.50,
            isExpense: true
        ),
        
    ]
    
    var body: some View {
        ZStack {
             darkBackground
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                TopView()
                YourCardsView(numActiveCard: 3)
                CreditCardView(
                    creditCardNumber: "4523 4523 4523 4523",
                    name: "Carrington Manyuchi",
                    expiryMonth: 30,
                    expiryYear: 2030
                )
                
                TextView(text: "Recent Transactions", font: .title2, fontWeight: .regular)
                    .padding()
                
                ScrollView {
                    VStack(spacing: 10) {
                        
                        ForEach(transactions.indices, id: \.self) { i in
                            TransactionView(
                                imageName: transactions[i].imageName,
                                payTo: transactions[1].payTo,
                                month: transactions[i].month,
                                day: transactions[i].day,
                                amount: transactions[i].amount,
                                isExpense: transactions[i].isExpense
                            )
                        }
                    }
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    CreditCardPageView()
}
