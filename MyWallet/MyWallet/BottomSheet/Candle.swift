//
//  Candle.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 21.05.25.
//

import Foundation
import Charts
import SwiftUI

struct ChartView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(candle_BTC) { item in
                    RectangleMark(x: .value("Day", item.day),
                                  yStart: .value("lowPrice", item.lowPrice),
                                  yEnd: .value("high price", item.highPrice),
                                  width: 4
                    )
                }
            }
            .padding(40)
        }
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


var candle_BTC: [Candle] = [Candle(name: "BTC", day: "2025-05-21", lowPrice: 10000, highPrice: 11000, openPrice: 10500, closePrice: 11500),
                            Candle(name: "ETH", day: "2025-05-25", lowPrice: 10000, highPrice: 11000, openPrice: 10500, closePrice: 11500),
                            Candle(name: "XRP", day: "2025-01-21", lowPrice: 12000, highPrice: 11000, openPrice: 105020, closePrice: 1150)
                            
                            ]
