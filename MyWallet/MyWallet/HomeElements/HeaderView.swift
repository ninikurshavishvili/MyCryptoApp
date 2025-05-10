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
                Circle()
                    .fill(Color.secondary)
                
                    .frame(width: 60, height: 60)
                    .shadow(color: Color.white.opacity(0.3), radius: 7, x: -10, y: 2)

                Button(action: {}) {
                    Image(systemName: "plus")
                        .foregroundColor(Color.purple)
                        .tint(Color.red)
                        .font(.title3)
                        .frame(width: 60, height: 60)
                }
            }
            .padding(.leading, 80)

            ZStack(alignment: .topTrailing) {
                Button(action: {}) {
                    Image("person")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.yellow, lineWidth: 1.5)
                        )
                }

                Image("crown")
                    .resizable()
                    .frame(width: 29, height: 29)
                    .foregroundColor(.yellow)
                    .offset(x: 3, y: -15)
                    .rotationEffect(Angle(degrees: 45))
            }
            .offset(x: -20)

        }
    }
}




#Preview {
    HeaderView()
        .background(.black)
}
