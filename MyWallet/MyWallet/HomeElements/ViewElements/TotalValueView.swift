//
//  TotalValueView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 08.05.25.
//

import SwiftUI

struct TotalValueView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .firstTextBaseline) {
                Text("Total Value")
                    .font(.callout)
                
                Image(systemName: "arrowtriangle.down.circle")
                    .frame(width: 20, height: 20)
            }
            .padding(.horizontal, 20)

            
            HStack {
                Text("$")
                    .font(.system(size: 46, weight: .bold))
                    .foregroundStyle(Color.appPurple)

                Text ("230,380.00")
                    .font(.system(size: 46, weight: .bold))

                
                Image("Sketch")
                    .resizable()
                    .frame(width: 30, height: 30)
                Spacer()

            }
            .padding(.horizontal, 20)

        }
        .foregroundStyle(.white)
    }
}




#Preview {
    TotalValueView()
        .background(.black)
}
