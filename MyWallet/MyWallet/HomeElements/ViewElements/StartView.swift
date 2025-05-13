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
                .fill(Color.white.opacity(0.1))
                .frame(width: 400, height: 200)
                .padding()
            
            ZStack {
                HStack(alignment: .top) {
                    VStack {
                        Text("New \n financial forecast \n for Bitcoin")
                            .padding(.leading, 35)
                            .padding(.top)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        CustomStartButton()
                            .offset(x: -45, y: 2)
                        
                        
                        
                    }
//                    HStack(){
//                        Image("btcUP")
//                            .resizable()
//                            .frame(width: 100, height: 100)
//                            .padding(.trailing, 20)
//                            .offset(y: 100)
//                            .rotationEffect(Angle(degrees: -10))
//                        
//                        
//                    }
                    
                }
            }
            Image("oval")
                .resizable()
                .frame(width: 300, height: 40)
                .offset(x: 35, y: -30)
                
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

struct CustomStartButton: View {
    var width: CGFloat = 150
    var height: CGFloat = 60
    
    var body: some View {
        Text("START")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.appYellow)
            .shadow(color: Color.appYellow, radius: 20)
            .frame(width: width, height: height)
            .background(Color.secondary)
            .clipShape(CustomButtonShape())
    }
}


struct CustomButtonShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let bottomLeftRadius: CGFloat = 50

        // Start at top-left
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        // Top edge
        path.addLine(to: CGPoint(x: rect.maxX - 30, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + 30),
                          control: CGPoint(x: rect.maxX, y: rect.minY))
        
        // Right edge and bottom-right corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + bottomLeftRadius, y: rect.maxY))
        
        // Bottom-left corner (rounded)
        path.addQuadCurve(to: CGPoint(x: rect.minX + 10, y: rect.maxY - 100),
                          control: CGPoint(x: rect.minX - 30, y: rect.maxY + 12))

        // Left edge
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

        path.closeSubpath()
        return path
    }
}





#Preview {
    StartView()
        .background(.black)
}
