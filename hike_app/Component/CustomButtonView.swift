//
//  CustomButtonView.swift
//  hike_app
//
//  Created by Md Mosfeq Anik on 6/7/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                        .white,
                        .customGreenLight,
                        .customGreenMedium],
                        startPoint: .top,
                        endPoint:UnitPoint.bottom
                    )
                )
            Circle()
                .stroke(
                    LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: UnitPoint.bottom),
                    lineWidth: 4
                )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
        }// :ZSTACK
        .frame(width: 58,height: 58)
    }
}

#Preview {
    CustomButtonView().previewLayout(.sizeThatFits).padding()
}
