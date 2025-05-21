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
                ForEach(candle_btc) { item in
                    RectangleMark(x: .value("Day", item.day),
                                  yStart: .value("lowPrice", item.lowPrice),
                                  yEnd: .value("high price", item.highPrice),
                                  width: 4
                    )
                    .opacity(0.4)
                    
                    RectangleMark(x: .value("Day", item.day),
                                  yStart: .value("lowPrice", item.openPrice),
                                  yEnd: .value("high price", item.closePrice),
                                  width: 12
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


var candle_btc: [Candle] = [
    Candle(name: "BTC", day: "0", lowPrice: 3000, highPrice: 7000, openPrice: 3500, closePrice: 6000),
    Candle(name: "BTC", day: "1", lowPrice: 3000, highPrice: 7000, openPrice: 3500, closePrice: 8000),
    Candle(name: "BTC", day: "2", lowPrice: 6000, highPrice: 8750, openPrice: 6500, closePrice: 3500),
    Candle(name: "BTC", day: "3", lowPrice: 2000, highPrice: 4000, openPrice: 2200, closePrice: 3700),
    Candle(name: "BTC", day: "4", lowPrice: 7000, highPrice: 9000, openPrice: 5900, closePrice: 7000),
    Candle(name: "BTC", day: "5", lowPrice: 10000, highPrice: 19000, openPrice: 1000, closePrice: 14000)
]



