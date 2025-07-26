//
//  GradientButtonStyle.swift
//  hike_app
//
//  Created by Md Mosfeq Anik on 6/7/25.
//

import Foundation
import SwiftUI
struct GradientButton:ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical,10)
            .padding(.horizontal,20)
            .background(
                configuration.isPressed ?
                LinearGradient(
                colors:[
                    .customGrayMedium,
                    .customGrayLight
                    
                ],
                 startPoint: .top,
                 endPoint: .bottom)
                :
                    
                    LinearGradient(
                    colors:[
                        .customGrayLight,
                        .customGrayMedium
                    ],
                     startPoint: .top,
                     endPoint: .bottom)
                    
            ).cornerRadius(40)
    }
}
