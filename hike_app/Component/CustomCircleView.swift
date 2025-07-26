//
//  CustomCircleView.swift
//  hike_app
//
//  Created by Md Mosfeq Anik on 12/7/25.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .customIndigoMedium,
                        .customSalmonLight,
                    ],
                    startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimateGradient ? .bottomTrailing : .topLeading
                )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                    
                }
            MotionAnimationView()
                
        }//: ZSTACK
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircleView()
}
