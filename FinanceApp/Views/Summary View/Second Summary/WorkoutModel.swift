//
//  WorkoutModel.swift
//  FinanceApp
//
//  Created by Manyuchi, Carrington C on 2025/05/05.
//

import Foundation

struct Workout: Identifiable {
    var id: UUID = UUID()
    var activity: String?
    let calories: Int
    let date: Date
    let imageName: String
    
    
    
    static let workoutExample1:  Workout = Workout(activity: "Running", calories: 300, date: Date(), imageName: "figure.run.treadmill")
    static let workoutExample2:  Workout = Workout(activity: "Cycling", calories: 400, date: Date(), imageName: "figure.run")
    static let workoutExample3:  Workout = Workout(activity: "Swimming", calories: 200, date: Date(), imageName: "figure.pool.swim.circle.fill")
    static let workoutExample4:  Workout = Workout(activity: "Yoga", calories: 100, date: Date(), imageName: "figure.yoga")
    static let workoutExample5:  Workout = Workout(activity: "Strength Training", calories: 500, date: Date(), imageName: "figure.cross.training.circle")
    
    static let workoutExamples = [workoutExample1, workoutExample2, workoutExample3, workoutExample4, workoutExample5]
}
