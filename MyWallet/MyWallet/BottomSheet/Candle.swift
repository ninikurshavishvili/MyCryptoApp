//
//  Candle.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 21.05.25.
//

import Foundation
import SwiftUI
import Charts

struct ChartView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Chart {
                    ForEach(candle_btc) { item in
                        RuleMark(
                            x: .value("Day", item.day),
                            yStart: .value("Low", item.lowPrice),
                            yEnd: .value("High", item.highPrice)
                        )
                        .foregroundStyle(.white)
                        .lineStyle(StrokeStyle(lineWidth: 1))

                        RectangleMark(
                            x: .value("Day", item.day),
                            yStart: .value("Open", item.openPrice),
                            yEnd: .value("Close", item.closePrice),
                            width: 4
                        )
                        .foregroundStyle(item.closePrice >= item.openPrice ? .appRed : .appPurple)
                        .cornerRadius(1)
                    }

                    RuleMark(y: .value("Target", 35000))
                        .lineStyle(StrokeStyle(lineWidth: 1, dash: [4]))
                        .foregroundStyle(Color.yellow)

                    PointMark(x: .value("Label Day", "2024-06-25"), y: .value("Price", 35000))
                        .annotation(position: .top) {
                            Text("$35k")
                                .font(.caption2.bold())
                                .foregroundColor(.yellow)
                                .padding(6)
                                .background(Color.black.opacity(0.6))
                                .clipShape(Capsule())
                        }

                    PointMark(x: .value("Label Day", "2024-06-17"), y: .value("Price", 11000))
                        .annotation(position: .bottom) {
                            Text("$11k")
                                .font(.caption2.bold())
                                .foregroundColor(.pink)
                                .padding(6)
                                .background(Color.black.opacity(0.6))
                                .clipShape(Capsule())
                        }
                }
                .frame(height: 320)
                .padding()
                .chartXAxis {
                    AxisMarks(values: .stride(by: .day)) { _ in
                        AxisGridLine().foregroundStyle(.gray.opacity(0.2))
                        AxisTick().foregroundStyle(.gray)
                        AxisValueLabel(format: .dateTime.year().month().day(), centered: true)
                    }
                }
                .chartYAxis {
                    AxisMarks(preset: .extended, position: .leading)
                }
                .background(Color.black)
            }
        }
        .preferredColorScheme(.dark)
    }
}



#Preview {
    ChartView()
}

struct Candle: Identifiable {
    var id = UUID().uuidString
    var name: String
    var day: String
    var lowPrice: Double
    var highPrice: Double
    var openPrice: Double
    var closePrice: Double
}


var candle_btc: [Candle] = [
    Candle(name: "BTC", day: "0", lowPrice: 3000, highPrice: 7000, openPrice: 3500, closePrice: 6000),
    Candle(name: "BTC", day: "1", lowPrice: 3000, highPrice: 7000, openPrice: 3500, closePrice: 8000),
    Candle(name: "BTC", day: "2", lowPrice: 6000, highPrice: 8750, openPrice: 6500, closePrice: 3500),
    Candle(name: "BTC", day: "3", lowPrice: 2000, highPrice: 4000, openPrice: 2200, closePrice: 3700),
    Candle(name: "BTC", day: "4", lowPrice: 7000, highPrice: 9000, openPrice: 5900, closePrice: 7000),
    Candle(name: "BTC", day: "5", lowPrice: 10000, highPrice: 19000, openPrice: 1000, closePrice: 14000)
]



