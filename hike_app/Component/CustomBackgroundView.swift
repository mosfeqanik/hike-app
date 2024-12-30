//
//  CustomBackgroundView.swift
//  hike_app
//
//  Created by Togu Mogu on 30/12/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {

        ZStack {
            Color("ColorGreenDark")
                .cornerRadius(40)
                .offset(y:12)

            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)

            LinearGradient(
                colors: [
                    Color("ColorGreenLight"),
                    Color("ColorGreenMedium")
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)

        }.frame(width: 350,height: 600)
    }
}

#Preview {
    CustomBackgroundView()
}
