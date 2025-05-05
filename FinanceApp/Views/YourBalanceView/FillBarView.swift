//
//  FillBarView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/05.
//

import SwiftUI

struct FillBarView: View {
    
    let barWidth: CGFloat = 8
    let percentage: CGFloat
    let month: String
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(month)
                    .foregroundStyle(fontColor)
                    .font(.caption)
                
                
                ZStack(alignment: .bottom) {
                    
                   
                    RoundedRectangle(cornerRadius: 10)
                        .fill(darkBackground2)
                        .frame(width: barWidth, height: .infinity)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(purple2)
                        .frame(width: barWidth, height: geometry.size.height*percentage)
                }
            }
        }
    }
}

#Preview {
    FillBarView(percentage: 0.8, month: "Jan")
}
