//
//  HomeView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 10.05.25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                HeaderView()
                
                TotalValueView()
                
                TransferView()
                
                StartView()
                
                CryptoListView(cryptoLists: cryptoList)
            }
            
            
        }
        .foregroundStyle(.black)
    }
        
}

#Preview {
    HomeView()
}
