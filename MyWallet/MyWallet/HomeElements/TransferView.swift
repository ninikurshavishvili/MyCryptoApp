//
//  TransferView.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 08.05.25.
//

import SwiftUI

struct TransferView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            CustomCapsuleShape()
                .fill(Color.yellow.secondary.opacity(0.2))
                .frame(height: 88)
                .padding(.horizontal)

            HStack(spacing: 80) {
                VStack {
                    Image(systemName: "creditcard")
                        .font(.title2)
                        .foregroundColor(.white)

                }
                .frame(width: 70, height: 70)
                .background(Circle().fill(Color.gray.opacity(0.4)))
                .padding(.leading, 30)
                
                ZStack {
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 70, height: 70)
                    Image(systemName: "arrow.up.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }

                VStack {
                    Image(systemName: "car.fill")
                        .font(.title2)
                        .foregroundColor(.white)

                }
                .frame(width: 70, height: 70)
                .background(Circle().fill(Color.gray.opacity(0.4)))
                .padding(.trailing, 30)

            }
        }
    }
}

struct CustomCapsuleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height

        let curveWidth: CGFloat = 80
        let curveDepth: CGFloat = 40
        let cornerRadius = height / 2

        path.move(to: CGPoint(x: 0, y: cornerRadius))

        // Top-left corner arc
        path.addArc(center: CGPoint(x: cornerRadius, y: cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false)


        // Top edge with 2 smooth inward dips
        path.addLine(to: CGPoint(x: width / 3 - curveWidth / 2, y: 0))
        path.addQuadCurve(to: CGPoint(x: width / 3 + curveWidth / 2, y: 0),
                          control: CGPoint(x: width / 3, y: curveDepth))
        
        path.addLine(to: CGPoint(x: 2 * width / 3 - curveWidth / 2, y: 0))
        

        
        path.addQuadCurve(to: CGPoint(x: 2 * width / 3 + curveWidth / 2, y: 0),
                          control: CGPoint(x: 2 * width / 3, y: curveDepth))
        
        path.addLine(to: CGPoint(x: width - cornerRadius, y: 0))

        
        
        
        // Top-right corner arc
        path.addArc(center: CGPoint(x: width - cornerRadius, y: cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(270),
                    endAngle: .degrees(0),
                    clockwise: false)

        // Bottom-right corner arc
        path.addArc(center: CGPoint(x: width - cornerRadius, y: height - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(0),
                    endAngle: .degrees(90),
                    clockwise: false)

        // Bottom edge with 2 smooth inward dips
        path.addLine(to: CGPoint(x: 2 * width / 3 + curveWidth / 2, y: height))
        path.addQuadCurve(to: CGPoint(x: 2 * width / 3 - curveWidth / 2, y: height),
                          control: CGPoint(x: 2 * width / 3, y: height - curveDepth))
        path.addLine(to: CGPoint(x: width / 3 + curveWidth / 2, y: height))
        path.addQuadCurve(to: CGPoint(x: width / 3 - curveWidth / 2, y: height),
                          control: CGPoint(x: width / 3, y: height - curveDepth))
        path.addLine(to: CGPoint(x: cornerRadius, y: height))

        // Bottom-left corner arc
        path.addArc(center: CGPoint(x: cornerRadius, y: height - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(90),
                    endAngle: .degrees(180),
                    clockwise: false)

        path.closeSubpath()
        return path
    }
}






#Preview {
    TransferView()
}
