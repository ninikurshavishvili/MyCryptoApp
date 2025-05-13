//
//  CryptoListView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 09.05.25.
//

import SwiftUI

struct CryptoListView: View {
    var cryptoLists: [Crypto]

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.gray.opacity(0.1))
                .padding()
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
                                .foregroundColor(crypto.change.hasPrefix("-") ? .red : .green)
                        }

                        Spacer()

                        VStack(alignment: .trailing) {
                            Text(crypto.nameQuantity)
                            Text(crypto.price)
                        }
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
                }
            }
            .padding()
        }

    }
}



#Preview {
    CryptoListView(cryptoLists: cryptoList)
        .background(.black)
}

