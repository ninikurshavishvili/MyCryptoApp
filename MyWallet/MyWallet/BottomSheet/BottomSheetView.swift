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
        VStack(spacing: 20) {
            Text(crypto.name)
                .font(.title)
                .padding()

            Text("Price: \(crypto.price)")
                .font(.headline)

            Text("Change: \(crypto.change)")
                .foregroundColor(crypto.change.hasPrefix("-") ? .red : .green)

            Spacer()
        }
        .padding()
    }
}


    func didDismiss() {
        // Handle the dismissing action.
    }
