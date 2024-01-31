//
//  BarChartView.swift
//
//
//  Created by Oscar Hardy on 31/01/2024.
//

import SwiftUI
import Charts

public struct BarChartView: View {
    public init(chartData: ChartData) {
        self.chartData = chartData
    }
    
    
    let chartData: ChartData
    
    public var body: some View {
        
        Chart {
            ForEach(chartData.chartItems) { item in
                
                BarMark(
                    x: .value(chartData.xAxis.capitalized, item.key.capitalized),
                    y: .value(chartData.yAxis.capitalized, item.value)
                )
                
            }
        }
        
        .chartXAxisLabel(position: .bottom, alignment: .center) {
            Text(chartData.xAxis.capitalized).bold()
        }
        
        .chartYAxisLabel {
            Text(chartData.yAxis.capitalized).bold()
        }
        
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView(chartData: ChartData.example)
    }
}
