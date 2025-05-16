//
//  CryptoListView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 09.05.25.
//

import SwiftUI

struct CryptoListView: View {
    var cryptoLists: [Crypto]
    
    @State private var selectedCrypto: Crypto? = nil
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.gray.opacity(0.1))
                .padding()
                .shadow(color: Color.appYellow.opacity(0.3), radius: 30, x: 200, y: -7)
            
            VStack(spacing: 16) {
                ForEach(cryptoLists, id: \.self) { crypto in
                    HStack {
                        Image(crypto.image)
                            .resizable()
                            .frame(width: 40, height: 40)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(crypto.name)
                                .foregroundStyle(.white)
                                .font(.headline)
                            Text(crypto.change)
                                .foregroundColor(crypto.change.hasPrefix("-") ? .appRed : .appYellow)
                                .font(.callout)
                                .fontWeight(.light)
                        }
                        .padding()
                        
                        VStack(alignment: .trailing) {
                            Text(crypto.nameQuantity)
                            Text(crypto.price)
                                .fontWeight(.light)
                        }
                        .padding()
                        .shadow(color: Color.appYellow.opacity(0.9), radius: 20)
                        .foregroundColor(.white)
                        
                        VStack {
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.vertical, 15)
                                .padding(.horizontal, 7)
                                .background(Color.gray.opacity(0.1))
                        }
                        .cornerRadius(10)
                    }
                    .padding()
                    .cornerRadius(12)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedCrypto = crypto
                        withAnimation {
                            showSheet = true
                        }
                    }
                }
                
            }
            
        }
    }
}


#Preview {
    CryptoListView(cryptoLists: cryptoList)
        .background(.black)
}

