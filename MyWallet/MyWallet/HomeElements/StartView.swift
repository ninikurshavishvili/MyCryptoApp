//
//  StartView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 08.05.25.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        ZStack(alignment: .leading) {

            CustomSlopedRoundedRectangle()
                .fill(Color.blue)
                .frame(width: 400, height: 200)
                .padding()
            
            HStack(alignment: .top) {
                VStack {
                    Text("New \n financial forecast \n for Bitcoin")
                        .padding(.leading, 40)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                }
            }
        }
    }
}

struct CustomSlopedRoundedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let cornerRadius: CGFloat = 30

        path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY + rect.height * 0.2))
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY + rect.height * 0.2 + cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 360), clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - cornerRadius))
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY))
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)

        path.closeSubpath()

        return path
    }
}


#Preview {
    StartView()
}
