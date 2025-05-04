//
//  ABoutView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/03.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack{
            darkBackground
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    xView()
                }
                
                AvatarView()
                ChoicesView()
                Spacer()
            }
        }
    }
}

#Preview {
    AboutView()
}

struct xView: View {
    var body: some View {
        Text("x")
            .font(.title)
            .padding(.horizontal)
            .padding(.vertical, 5)
            .foregroundStyle(fontColor)
            .background(.backgroundX)
            .clipShape(.rect(cornerRadius: 20))
    }
}

struct AvatarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(fontColor)
                .background(backgroundX)
                .clipShape(Circle())
            
            
            TextView(text: "Carrington Manyuchi", font: .title)
            TextView(text: "Frontend Developer: SwiftUI", font: .headline)
        }
        .padding()
    }
}

struct TextView: View {
    let text: String
    let font: Font
    
    var body: some View {
        Text(text)
            .foregroundStyle(fontColor)
            .fontWeight(.semibold)
            .font(font)
    }
}

struct ChoicesView: View {
    let dataArray: [(String, String)] = [
        (title: "Corporate App", systemImage: "building.2"),
        (title: "Security Settings", systemImage: "lock"),
        (title: "Online Shopping", systemImage: "cart.fill"),
        (title: "Utilities", systemImage: "wrench.and.screwdriver"),
        (title: "Thumb Scanner", systemImage: "hand.thumbsup"),
        (title: "Manage employee data", systemImage: "person.3"),
        (title: "Integrate with CRM systems", systemImage: "cart.fill")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(dataArray.indices, id: \.self) { i in
                SingleChoiceView(text: dataArray[i].0, systemImage: dataArray[i].1)

            }
        }
    }
    
}

struct SingleChoiceView: View {
    let text: String
    let systemImage: String
    
    var body: some View {
        Label(text, systemImage: systemImage)
            .font(.headline)
            .foregroundStyle(fontColor)
            .padding()
            .labelStyle(SpacedLabelStyle())
            .symbolRenderingMode(.multicolor)
    }
}

struct SpacedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: 25) {
            configuration.icon
                .imageScale(.large)
            configuration.title
        }
    }
}
