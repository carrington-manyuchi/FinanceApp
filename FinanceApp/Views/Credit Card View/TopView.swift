//
//  TopView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .font(.body)
                .fontWeight(.heavy)
                .frame(width: 50, height: 50)
                .foregroundStyle(fontColor)
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .font(.body)
                .fontWeight(.heavy)
                .frame(width: 50, height: 50)
                .foregroundStyle(fontColor)
                .rotationEffect(.degrees(90))
            
        }
        .padding()
        .background(darkBackground)
        .clipShape(.rect(cornerRadius: 20))
        .padding(.horizontal)
    }
}

#Preview {
    TopView()
}
