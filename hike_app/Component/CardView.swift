//
//  CardView.swift
//  hike_app
//
//  Created by Togu Mogu on 30/12/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView() 
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight,
                        ],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing
                                      )
                    )
                    .frame(width: 256,height: 256)
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        }.frame(width: 350,height: 570)
    }
}

#Preview {
    CardView()
}
