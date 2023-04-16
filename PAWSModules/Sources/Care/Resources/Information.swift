//
//  Nodes.swift
//  hip_tracks
//
//  Created by Priyanka Shrestha on 4/15/23.
//

import SwiftUI

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

struct Nodes_Previews: PreviewProvider {
    static var previews: some View {
        Nodes(text: "weeks")
    }
}
