//
// This source file is part of the CS342 2023 PAWS Team Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import Contact
import Foundation
import SwiftUI

struct Graphic: View {
    var body: some View {
            VStack (alignment : .leading) {
                Text("Week")
                    .offset(x : 20, y : 30)
                    .font(.system(size: 25, weight: .bold))

                ZStack (alignment : .leading) {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 10, height: 540)
                        .cornerRadius(5)
                        .offset(x : 50, y : -30)
                    ScrollView {
                        VStack (alignment : .leading) {
                            HStack () {
                                //Text("Phase 1")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "0")
                                Text("\u{2022} Surgery Recovery \n\u{2022} Non-Weight Bearing \n")
                                    .font(.system(size: 15))
                            }
                            HStack (){
                                //Text("Phase 2")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "1")
                                Text("\u{2022} Partial Weight-Bearing \n\u{2022} Light Strength & Flexibility Exercise \n")
                                    .font(.system(size: 15))
                            }
                            HStack () {
                                //Text("Phase 3")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "3")
                                Text("\u{2022} Light Cycling \n\u{2022} Moderate Strength & Flexibility Exercise \n\u{2022} Light Balancing Exercise \n \u{2022} Assisted Functional Activity \n")
                                    .font(.system(size: 15))
                            }
                            HStack () {
                                //Text("Phase 4")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "6")
                                Text("\u{2022} Full weight bearing \n\u{2022} Unassisted Functional Activity \n\u{2022} Machine-Based Resistance Training \n\u{2022} Continued Mobility Exercises \n")
                                    .font(.system(size: 15))
                            }
                            HStack () {
                                //Text("Phase 5")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "12")
                                Text("\u{2022} Return to Full Work Duties \n\u{2022} Return to Recreational Activity \n\u{2022} Continued Rehabilitation \n")
                                    .font(.system(size: 15))
                            }
                            
                            HStack () {
                                //Text("Phase 6")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "26")
                                Text("\u{2022} Knee Strength Normalized \n\u{2022} Flexibility Exceeds Pre-surgical Levels \n\u{2022} Patient's Quality of Life Maximized \n")
                                    .font(.system(size: 15))
                            }
                        }
                        .padding()
                        .background(Color.clear)
                    }
            }
            
        }
            .padding()
    }
        
}

struct Nodes: View {
    var text: String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(hex : "73AF91"))
                .frame(width: 50, height: 50)
                .padding()
                .shadow(color: .gray, radius: 5, x: 0, y: 2)
            Text(text)
                .foregroundColor(Color.white)
                .fontWeight(.bold)
        }
    }
}
struct Information: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack{
                VStack (alignment: .leading){
                    Text("Call 911 if you have:")
                        .fontWeight(.bold)
                        //.offset(x : -20)
                        .foregroundColor(Color.black)
                    HStack(alignment : .top) {
                        Text("\u{2022}")
                            .font(.headline)
                            .foregroundColor(.blue)
                        Text("Chest pain")
                    }
                    HStack(alignment : .top) {
                        Text("\u{2022}")
                            .font(.headline)
                            .foregroundColor(.blue)
                        Text("Shortness of Breath")
                    }
                }
                Link(destination: URL(string: "tel://911")!) {
                    HStack {
                        Image(systemName: "phone")
                        Text(" Call 911")
                    }
                    .padding(10)
                    .background(Color(hex: "73AF91"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .offset(x: 10)
            }
            VStack (alignment: .leading) {
                Text("Consult your caregiver if you have:")
                    .fontWeight(.bold)
                    //.offset(x : -20)
                    .foregroundColor(Color.black)
                HStack(alignment : .top) {
                    Text("\u{2022}")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Hip pain that gets worse")
                }
                HStack(alignment : .top) {
                    Text("\u{2022}")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Pain or swelling in your calf or leg near your incision")
                }
                HStack(alignment : .top) {
                    Text("\u{2022}")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Swelling or redness at the incision site that gets worse")
                }
                HStack(alignment : .top) {
                    Text("\u{2022}")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Fluid or bad smell from the incision site")
                }
                HStack(alignment : .top) {
                    Text("\u{2022}")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Fever of 100.4°F (38°C) or higher, or as advised by your healthcare provider")
                }
                HStack(alignment : .top) {
                    Text("\u{2022}")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Shaking chills")
                }
                HStack(alignment : .top) {
                    Text("\u{2022}")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Other medical or dental procedures during your recovery")
                }
            }
        }
        .padding()
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}


public struct Care: View {
    public var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack (alignment : .leading) {
//                        Text("Support")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color.black)
//                            .padding()
                        VStack {
                            //Image(systemName: "questiondiamond")
                                //.font(.system(size: 60))
                                //.foregroundColor(Color.black)
                            Text("Worried about your results?")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            
                            Text("Confirm if you need a follow up visit by sharing data with your doctor")
                                .foregroundColor(Color.gray)
                                .offset( y : -30)
                                .padding(20)
                            
                            Button(action: {
                                // Add action to upload data here
                            }) {
                                HStack {
                                    Image(systemName: "arrow.up.circle")
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                  
                                    Text("Send Data")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                }
                                //.padding(5)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color(hex: "73AF91"))
                                .cornerRadius(10)
                            }
                            .padding()
                            .offset(y : -60)
                            
                            Text("Post Surgery Timeline")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .offset( y : -40)
                            
                            Text("Experiencing unusal symptoms?")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .offset( y : 680)
                            Graphic()
                                .offset(y : -110)
                            Information()
                                .offset(y : -90)
                            //.padding(.leading, 20)
                        }
                    }
                }
            }.navigationTitle(String(localized: "CONTACTS_NAVIGATION_TITLE", bundle: .module))
       
        }

    }

    public init() {}
}

struct Care_Previews: PreviewProvider {
    static var previews: some View {
        Care()
    }
}

