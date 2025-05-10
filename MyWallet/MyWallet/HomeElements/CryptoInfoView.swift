//
//  CryptoInfoView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 09.05.25.
//

import SwiftUI

struct CryptoInfoView: View {
    var body: some View {
        
        HStack {
            
            VStack {
                Image("bitcoin")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            
            VStack {
                Text("BTC")
                    .font(.title2.bold())
                    
                Text("+24.18%")
                    .font(.caption.weight(.semibold))
                    
            }
            
            VStack(alignment: .listRowSeparatorTrailing) {
                Text("1 BTC")
                    .font(.callout.weight(.semibold))
                Text("69,792.45 USD")
                    .padding(.top, 4)
                    .font(.callout.weight(.light))

                
            }

        }
    }
}





#Preview {
    CryptoInfoView()
}
