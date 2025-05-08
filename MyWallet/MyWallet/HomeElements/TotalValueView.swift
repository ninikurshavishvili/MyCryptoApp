//
//  TotalValueView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 08.05.25.
//

import SwiftUI

struct TotalValueView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Total Value")
                    .font(.callout)
                
                Image(systemName: "arrowtriangle.down.circle")
                    .frame(width: 20, height: 20)
            }
            
            HStack {
                Text("$")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                Text ("123.456.78")
                    .font(.title)
                    .fontWeight(.bold)
                
                Image(systemName: "chart.line.uptrend.xyaxis")
            }
            
        }

    }
}




#Preview {
    TotalValueView()
}
