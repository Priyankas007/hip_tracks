//
//  information.swift
//  hip_tracks
//
//  Created by Priyanka Shrestha on 4/15/23.
//

import SwiftUI

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

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
