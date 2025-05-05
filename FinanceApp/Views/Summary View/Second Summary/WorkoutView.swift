//
//  WorkoutView.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/05.
//

import SwiftUI

struct WorkoutView: View {
    let workouts: [Workout]
    
    var body: some View {
        let workout = workouts[0]
        
        ScrollView {
            VStack {
                ForEach(workouts) { workout in
                    WorkoutRowItemView(workout: workout)
                }
            }
        }
    }
}

#Preview {
    ZStack {
        darkBackground
        WorkoutView(workouts: Workout.workoutExamples)

    }
}

struct WorkoutRowItemView: View {
    let workout: Workout
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter
    }
    
    var body: some View {
        HStack(alignment: .bottom) {
            Image(systemName: workout.imageName)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.green)
                .background(.green.opacity(0.2).gradient)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                if let activity = workout.activity {
                    Text(activity)
                        .foregroundStyle(fontColor)
                }
                Text("\(workout.calories) CAL")
                    .font(.largeTitle)
                    .foregroundStyle(.green)
            }
            Spacer()
            
            if datesAreEqual(date1: workout.date, date2: Date()) {
                Text("Today")
                    .foregroundStyle(fontColor)
                    .padding()
            } else {
                Text("\(workout.date, formatter: dateFormatter)")
                    .foregroundStyle(fontColor)
            }
        }
        .padding()
    }
    
    func datesAreEqual(date1: Date, date2: Date) -> Bool {
        let calendar = Calendar.current
        let components1 = calendar.dateComponents([.day, .month, .year], from: date1)
        let components2 = calendar.dateComponents([.day, .month, .year], from: date2)
        
        return components1 == components2
    }
}
