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
        VStack(spacing: 16) {
            ForEach(cryptoLists, id: \.self) { crypto in
                HStack {
                    Image(crypto.image)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.secondary)

                    VStack(alignment: .leading, spacing: 4) {
                        Text(crypto.name)
                            .font(.headline)
                        Text(crypto.change)
                            .foregroundColor(crypto.change.hasPrefix("-") ? .red : .green)
                    }

                    Spacer()

                    VStack(alignment: .trailing) {
                        Text(crypto.nameQuantity)
                        Text(crypto.price)
                            .foregroundColor(.gray)
                    }

                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(12)
            }
        }
        .padding()
    }
}



#Preview {
    CryptoListView(cryptoLists: cryptoList)
}

