//
//  SwiftUIView.swift
//  hike_app
//
//  Created by Md Mosfeq Anik on 6/7/25.
//

import SwiftUI

struct CardView: View {
        //MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while  imageNumber == randomNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        //MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            VStack{
                //MARK: - HEADER
                VStack (alignment:.leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGrayLight
                                    ,
                                    .customGrayMedium
                                ],
                                               startPoint: .top,
                                               endPoint: .bottom)
                            )
                        Spacer()
                        
                        Button{
                            //ACTION: Show a sheet
                            print("the button is pressed")
                            isShowingSheet.toggle()
                            
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(
                            .customGrayMedium
                        )
                }.padding(.horizontal, 30)
                //: HEADER
               
                //MARK: - MAIN CONTENT
        
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 5),value: imageNumber)
                }
                
                //MARK: - FOOTER
                Button{
                    print("The button was pressed")
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color:.black.opacity(0.25),
                            radius: 0.25,
                            x: 1,
                            y: 2)
                }
                .buttonStyle(GradientButton())
                
            }
        } //: CARD
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
