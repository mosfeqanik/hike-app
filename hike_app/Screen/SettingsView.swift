//
//  SettingsView.swift
//  hike_app
//
//  Created by Md Mosfeq Anik on 26/7/25.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PPROPERTIES
    
    private let alternativeAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire",
    ]
    
    
    var body: some View {
        List{
            // MARK: - SECTION: HEADER
            
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        Text("Editor's choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark,
                    ],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .padding(.top, 8)
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgrous in photos but is even better once you are actually there. The hike that you hope to do again someday.\nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! IT's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGrayMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }//: HEADER
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ICONS
            Section{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (spacing: 12){
                        ForEach(alternativeAppIcons.indices,id: \.self) { item in
                            Button{
                                print("ICons\(alternativeAppIcons[item]) was pressed")
                                
                                UIApplication.shared.setAlternateIconName(alternativeAppIcons[item]){
                                    error in
                                    if error != nil{
                                        print("Failed request to update the app's icon: \(String(describing:error?.localizedDescription))")
                                    }else{
                                        print("Success! You have changed the app's icon to \(alternativeAppIcons[item])")
                                    }
                                    
                                    
                                }
                                
                                
                                
                            }label: {
                                Image("\(alternativeAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:80,height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                }
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ABOUT
            Section(
                header:Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical,8)
            ){
                // Basic Labeled Content
//                LabeledContent("Application", value: "Hike")
                // Advanced Labeled Content
                
//                LabeledContent{
//                    Text("Hike")
//                }label: {
//                    HStack {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 8)
//                                .frame(width:30 ,height: 30)
//                                .foregroundColor(.blue)
//                            Image(systemName: "apps.iphone").foregroundColor(.white)
//                                .fontWeight(.semibold)
//                        }
//                        Text("Application")
//                    }
//                }
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS,iPadOS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Md Mosfeq Anik", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowIcon: "globe",rowTintColor: .indigo,rowLinkLabel: "Portfolio", rowLinkDestination: "https://mosfeqanik.github.io" )
            }
        }
    }
}

#Preview {
    SettingsView()
}
