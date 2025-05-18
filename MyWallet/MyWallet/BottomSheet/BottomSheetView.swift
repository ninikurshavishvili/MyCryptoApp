//
//  BottomSheetView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 15.05.25.
//

import SwiftUI

struct BottomSheetView: View {
    var crypto: Crypto

    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HStack {
                    
                    Image("transferIcon")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                    
                    Image(crypto.image)
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                
                
                Spacer()
            }
            .padding()
        }
        
    }
}


    func didDismiss() {
        
    }

#Preview {
    BottomSheetView(crypto: Crypto(
        name: "Bitcoin",
        price: "btc",
        change: "+2.4%",
        nameQuantity: "1.2 BTC",
        image: "bitcoin"
    ))
}
