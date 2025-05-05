//
//  YourBalanceView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/04.
//

import SwiftUI

struct YourBalanceView: View {
    var body: some View {
        ZStack {
            darkBackground
                .ignoresSafeArea()
            VStack {
                HeaderYourBalanceView()
                BalanceSubView()
                YourBalanceAmountView(
                    day: 14,
                    month: 6,
                    year: 2022,
                    percentage: 15,
                    isUp: true,
                    amount: 27802
                )
                
                YourBalanceActionsView()
                    .padding(.vertical)
                
                Spacer()
            }
        }
    }
}

#Preview {
    YourBalanceView()
}

struct HeaderYourBalanceView: View {
    var body: some View {
        HStack {
            Image(systemName: "line.horizontal.3.decrease")
                .font(.body)
                .fontWeight(.heavy)
                .frame(width: 50, height: 50)
                .foregroundStyle(fontColor)
            Spacer()
            AvatarDefaultView(dim: 50)
        }
        .padding()
    }
}

struct BalanceSubView: View {
    var body: some View {
        HStack {
            TextView(text: "Your Balance", font: .title, fontWeight: .semibold)
            Spacer()
        }
        .padding()
    }
}

struct AvatarDefaultView: View {
    let dim: CGFloat
    
    var body: some View {
        Image(systemName: "person.crop.circle")
            .resizable()
            .frame(width: dim, height: dim)
            .foregroundStyle(fontColor)
            .background(darkBackground2)
            .clipShape(Circle())
    }
}

struct YourBalanceAmountView: View {
    let day: Int
    let month: Int
    let year: Int
    let percentage: Int
    let isUp: Bool
    let amount: Double
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                if month >= 0 && month <= 12 {
                    
                    let calendar = Calendar.current
                    let monthName = calendar.monthSymbols[month - 1]
                    HStack {
                        TextView(text: "\(monthName) \(day) \(year)", font: .headline, fontWeight: .semibold)
                        Spacer()
                    }
                    
                }
                HStack {
                    Text("$\(amount, specifier: "%.2f")")
                        .foregroundStyle(fontColor)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    
                    
                    TextView(text: "\(percentage)", font: .caption, fontWeight: .semibold)
                    
                    let imageName = isUp ? "arrow.up" : "arrow.down"
                    Image(systemName: imageName)
                        .foregroundStyle(fontColor)
                        .font(.caption)
                }
            }
        }
        .padding()
        .background(darkBackground2)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct YourBalanceActionsView: View {
    let actionList: [(iconName: String, name: String, color: Color)] = [
        (iconName: "arrow.up", name: "Sent", color: .pink),
        (iconName: "arrow.down", name: "Loan", color: .green),
        (iconName: "dollarsign.square", name: "Received", color: .yellow),
        (iconName: "icloud.and.arrow.up", name: "Topup", color: .blue)
    ]
    
    var body: some View {
        HStack() {
            Spacer()
            ForEach(actionList, id: \.name) { item in
                ActionView(
                    iconName: item.iconName,
                    color: item.color,
                    name: item.name
                )
                Spacer()

            }
        }
    }
}

struct ActionView: View {
    let iconName: String
    let color: Color
    let name: String
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .foregroundStyle(color)
                .frame(width: 50, height: 50)
                .background(darkBackground2)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            TextView(text: name, font: .body, fontWeight: .semibold)
        }
    }
}
