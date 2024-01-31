//
//  ChartData.swift
//
//
//  Created by Oscar Hardy on 31/01/2024.
//

import Foundation

struct ChartItem: Identifiable {
    let key: String
    let value: Double
    var id: String { key }
}



struct ChartData {
    let xAxis: String
    let yAxis: String
    let chartItems: [ChartItem]
}


struct MultipleChartData: Identifiable {
    var name: String
    var id: String { name }
    var chartData: ChartData
}

extension ChartData {
    static let example = ChartData(
        xAxis: "time",
        yAxis: "attempts",
        chartItems: [
        ChartItem(key: "1", value: 2),
        ChartItem(key: "2", value: 3),
        ChartItem(key: "3", value: 3),
        ChartItem(key: "4", value: 2),
        ChartItem(key: "5", value: 6),
        ChartItem(key: "6", value: 4),
        ChartItem(key: "7", value: 3),
        ChartItem(key: "8", value: 4),
        ChartItem(key: "9", value: 4),
        ChartItem(key: "10", value: 5),
        ]
    )
    
    
}

//extension ChartData {
//    
////    static var attemptsExample: ChartData { attemptsChartData() }
//    
//    static func attemptsChartData() -> ChartData {
//        let logDM = LogDataManager()
//        let logTries = logDM.returnLogAttempts(TestGameLog.example.roundQuestionAttempts ?? "")
//        return logDM.chartDM.returnAttempts(logTries)
//    }
//    
//    static func durationsChartData() -> ChartData {
//        let logDM = LogDataManager()
//        let logDurations = logDM.returnLogDurations(TestGameLog.example.roundQuestionDurations ?? "")
//        return logDM.chartDM.returnDurations(logDurations)
//    }
//    
//}
