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
                .padding(.trailing, 80)
                .foregroundStyle(.white)
            Button(action: {}) {
                Image(systemName: "plus")
            }
            
            .frame(width: 60, height: 60)
            .foregroundColor(Color.purple.opacity(0.8))
            .background(Color.white.opacity(0.2))
            .clipShape(Circle())
            .padding(.leading)
            //Shadow
            ZStack(alignment: .topTrailing){

                Button(action : {}) {
                    Image("person")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
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
