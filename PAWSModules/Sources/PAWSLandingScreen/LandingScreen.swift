//
// This source file is part of the CS342 2023 PAWS Team Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct LandingScreen: View {
    private let backgroundGradient = LinearGradient(
        colors: [.blue, .green, .yellow, .orange],
        startPoint: .leading,
        endPoint: .trailing
    )
    @Binding private var launchStatus: Bool
    public var body: some View {
        VStack{
                VStack {
                    Image("hip_tracks_logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 230, height: 230)
                    Text("A simpler way to monitor")
                        .fontWeight(.bold)
                        .padding(10)
                    Text("your hip health")
                        .fontWeight(.bold)
                        .offset(y: -20)
                }
            Button(
                action: {
                    launchStatus = true
                }, label: {
                Text("Tap to get started")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color("CustomBlue"))
                    .border(backgroundGradient, width: 3)
                    .cornerRadius(5)
                    .offset(y: -20)
                   
                }
            )
        }
    }
    
    
    public init(pressedStart: Binding<Bool>) {
        self._launchStatus = pressedStart
    }
}


struct LandingScreen_Previews: PreviewProvider {
    @State private static var pressedStart = false
    
    static var previews: some View {
        LandingScreen(pressedStart: $pressedStart)
    }
}
