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
                .ignoresSafeArea()
            ScrollView {
                VStack {

                    HeaderView()
                    
                    TotalValueView()
                    
                    TransferView()
                    
                    StartView()
                    
                    CryptoListView(cryptoLists: cryptoList)
                }
            }
            
        }
    }
        
}

#Preview {
    HomeView()
}
