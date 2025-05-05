//
//  SummaryView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/05.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        ZStack {
            darkBackground
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 25) {
                VStack(alignment: .leading, spacing: 0) {
                    TextView(text: "MONDAY, JUNE 22", font: .caption2, fontWeight: .semibold)
                    TextView(text: "Summary", font: .largeTitle, fontWeight: .bold)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    TextView(text: "Activity", font: .title2, fontWeight: .semibold)
                    
                    HStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 15) {
                            VStack(alignment: .leading) {
                                TextView(text: "Move", font: .headline, fontWeight: .medium)
                                Text("227 / 450 CAL")
                                    .foregroundStyle(purple2)
                                    .fontWeight(.semibold)
                            }
                            
                            VStack(alignment: .leading) {
                                TextView(text: "Exercise", font: .headline, fontWeight: .medium)
                                Text("20 / 30 MIN")
                                    .foregroundStyle(.green)
                                    .fontWeight(.semibold)
                            }
                            
                            VStack(alignment: .leading) {
                                TextView(text: "Stand", font: .headline, fontWeight: .medium)
                                Text("4 / 12 HRS")
                                    .foregroundStyle(.blue)
                                    .fontWeight(.semibold)
                            }
                        }
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            VStack(alignment: .trailing) {
                                Image("Meastro")
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(darkBackground2)
                    )
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        TextView(text: "Workouts", font: .title2, fontWeight: .semibold)
                        Spacer()
                        Text("Show More")
                            .foregroundStyle(.green)
                            .font(.headline)
                            .bold()
                    }
                    .padding(.horizontal)
                    
                    PersonView()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .center) {
                                Image(systemName: "person.circle.fill")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                
                                VStack(alignment: .leading) {
                                    TextView(text: "Core Training", font: .headline, fontWeight: .semibold)
                                    Text("78 CAL")
                                        .foregroundStyle(fontColor)
                                }
                            }
                        }
                        
                        Spacer()
                        VStack {
                            HStack {
                                TextView(text: "6/12/29", font: .caption2, fontWeight: .semibold)
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(fontColor)
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(darkBackground2)
                    )
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .center) {
                                Image(systemName: "person.circle.fill")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                
                                VStack(alignment: .leading) {
                                    TextView(text: "Core Training", font: .headline, fontWeight: .semibold)
                                    Text("78 CAL")
                                        .foregroundStyle(fontColor)
                                }
                            }
                        }
                        
                        Spacer()
                        VStack {
                            HStack {
                                TextView(text: "6/12/29", font: .caption2, fontWeight: .semibold)
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(fontColor)
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(darkBackground2)
                    )
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .center) {
                                Image(systemName: "person.circle.fill")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                
                                VStack(alignment: .leading) {
                                    TextView(text: "Core Training", font: .headline, fontWeight: .semibold)
                                    Text("78 CAL")
                                        .foregroundStyle(fontColor)
                                }
                            }
                        }
                        
                        Spacer()
                        VStack {
                            HStack {
                                TextView(text: "6/12/29", font: .caption2, fontWeight: .semibold)
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(fontColor)
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(darkBackground2)
                    )
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

#Preview {
    SummaryView()
}

struct PersonView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image(systemName: "person.circle.fill")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                    
                    VStack(alignment: .leading) {
                        TextView(text: "Core Training", font: .headline, fontWeight: .semibold)
                        Text("78 CAL")
                            .foregroundStyle(fontColor)
                    }
                }
            }
            
            Spacer()
            VStack {
                HStack {
                    TextView(text: "6/12/29", font: .caption2, fontWeight: .semibold)
                    Image(systemName: "chevron.right")
                        .foregroundStyle(fontColor)
                        .font(.caption2)
                        .fontWeight(.semibold)
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(darkBackground2)
        )
    }
}
