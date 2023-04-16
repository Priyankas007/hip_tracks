//
// This source file is part of the CS342 2023 PAWS Team Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

/// Displays the recoded uploads collected by the ``MockDataStorageProvider``.
public struct MockUploadList: View {
    @EnvironmentObject var mockDataStorageProvider: MockDataStorageProvider

    public var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Text("All Data")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.top], 10)
                    .padding(.leading, 10)
                    
                Image("all_vitals")
                    .resizable()
                    .frame(width: 350, height: 650)
            }
            
        }
   
    }

    public init() {}

    private func format(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .long
        return dateFormatter.string(from: date)
    }
}

struct MockUploadsList_Previews: PreviewProvider {
    static var previews: some View {
        MockUploadList()
            .environmentObject(MockDataStorageProvider())
    }
}
