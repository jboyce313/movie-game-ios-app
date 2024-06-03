//
//  script.swift
//  movie game
//
//  Created by Jacob Boyce on 6/3/24.
//

import Foundation

class Report: ObservableObject {
    var difference: Int
    var message: String
    
    init(difference: Int = -1, message: String = "") {
        self.difference = difference
        self.message = message
    }
}

func getMovie() -> Movie {
    let movie = movies[Int.random(in: 0...movies.count-1)]
    return movie
}

func checkGuess(guess: Int, score: Int) -> Report {
    let diff = abs(guess - score)
    let report = Report(difference: diff, message: "")
    
    if (diff > 0 && diff <= 5) {
        report.message = "Amazing"
    }
    else if (diff > 5 && diff <= 10) {
        report.message = "Very good"
    }
    else if (diff > 10 && diff <= 15) {
        report.message = "Okay"
    }
    else if (diff > 15 && diff <= 20) {
        report.message = "Not very good"
    }
    else if (diff > 20) {
        report.message = "Bad"
    }
    else {
        report.message = "Perfect"
    }
    
    return report
}
