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
                    
                    HStack {
                        Image("transferIcon")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding(10)
                    .background(Color.secondary)
                    .cornerRadius(50)
                    
                    Spacer()
                    
                    HStack {
                        Image(crypto.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    .padding()
                    .background(.secondary)
                    .cornerRadius(50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(.appPurple, lineWidth: 1)
                    )
                    Spacer()

                    HStack {
                        Text("12")
                        Button {
                            print("Edit button was tapped")
                        } label: {
                            Image(systemName: "chevron.down")
                        }

                    }
                    .padding(10)
                    .background(Color.secondary)
                    .cornerRadius(50)
                    
                }
                .padding(20)
                
                
                VStack {
                    Text(crypto.name)
                        .foregroundStyle(.white)
                        .font(.callout)
                        .padding()
                    
                    Text(" $ \(crypto.price)")
                        .font(.title)
                        .foregroundStyle(.appPurple)
                        .padding()
                    
                    Text(" $ \(crypto.change)")
                        .font(.caption)
                        .foregroundStyle(.appRed)
                        .padding()
                        .background(.white.opacity(0.1))
                        .cornerRadius(20)
                    
                }
                
                
                
                Spacer()
            }//lalala
            .padding()
        }
        
    }
}


    func didDismiss() {
        
    }

#Preview {
    BottomSheetView(crypto: Crypto(
        name: "Bitcoin",
        price: "69.000",
        change: "+2.4%",
        nameQuantity: "1.2 BTC",
        image: "bitcoin"
    ))
}
