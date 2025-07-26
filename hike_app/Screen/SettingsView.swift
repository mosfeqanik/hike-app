//
//  SettingsView.swift
//  hike_app
//
//  Created by Md Mosfeq Anik on 26/7/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            // MARK: - SECTION: HEADER
            Image(systemName: "laurel.leading")
                .font(.system(size: 80,weight: .black))
            Text("Hike")
                .font(.system(size: 66,weight: .black))
            Image(systemName: "laurel.trailing")
                .font(.system(size: 80,weight: .black))
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
        }
    }
}

#Preview {
    SettingsView()
}
