//
//  HeaderView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 08.05.25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("My Wallet")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(.trailing, 50)
            
            ZStack {
                // Actual button with shadow behind
                Button(action: {}) {
                    Image(systemName: "plus")
                        .foregroundColor(Color.purple.opacity(0.8))
                        .font(.system(size: 24, weight: .bold))
                }
                .frame(width: 60, height: 60)
                .background(Color.secondary)
                .clipShape(Circle())
                .shadow(color: Color.white.opacity(0.4), radius: 12, x: -12, y: 6) // Back shadow
            }
            .padding(.leading, 10)

            ZStack(alignment: .topTrailing) {
                Button(action: {}) {
                    Image("person")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.yellow, lineWidth: 1)
                        )
                }

                Image(systemName: "crown.fill")
                    .foregroundColor(.yellow)
                    .offset(x: 7, y: -7)
                    .rotationEffect(Angle(degrees: 30))
            }
        }
    }
}




#Preview {
    HeaderView()
        .background(.black)
}
