//
// This source file is part of the CS342 2023 PAWS Team Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import Account
import class FHIR.FHIR
import FirebaseAccount
import Foundation
import SwiftUI
import Views
import PAWSSchedule
import Scheduler
import PAWSSharedContext

public struct HomeScreen: View {
    private let backgroundGradient = LinearGradient(
        colors: [.red, .pink, .orange, .yellow],
        startPoint: .leading,
        endPoint: .trailing
    )

    @EnvironmentObject var account: Account
    @EnvironmentObject var firebaseAccountConfiguration: FirebaseAccountConfiguration<FHIR>
    @EnvironmentObject var mockDataStorageProvider: MockDataStorageProvider
    @AppStorage(StorageKeys.homeTabSelection) var selectedTab = Tabs.home
    
    public var body: some View {
        let name = firebaseAccountConfiguration.user?.displayName ?? "Name Needed"

        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Hello, Susan!")
                            .padding([.top], 10)
                            .font(.title)
                            .fontWeight(.bold)
//                        Text(firstName(fullName: name))
//                        Text("Susan!")
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .padding([.top], 0)
//                            .padding([.bottom], 10)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading, .trailing], 10)
                Divider().frame(maxWidth: .infinity)
                questionaire
//                recording
//                aboutstudy
            }.frame(maxHeight: .infinity, alignment: .top)
        }
    }
    @ViewBuilder var questionaire: some View {
        VStack(alignment: .leading) {
            Text("Latest Data")
                .font(.title)
                .fontWeight(.bold)
                .padding([.top], 10)
                .padding(.leading, 10)
                .foregroundColor(.gray)
            VStack(alignment: .leading) {
                HStack {
                    Text("Hip Mobility Questionnaire")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding([.top], 5)
                        .padding(.leading, 10)
                        .foregroundColor(.gray)
                        .padding(.trailing, 60)
                    Button("Submit new", action: {selectedTab = Tabs.schedule})
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 140, height: 30)
                        .background(.teal)
                        .cornerRadius(10)
                }
               
                Image("dials")
                    .resizable()
                    .frame(width: 360, height: 130)
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Walk Test Results")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding([.top], 10)
                        .padding(.leading, 10)
                        .padding(.trailing, 30)
                        .foregroundColor(.gray)
                    Button("Submit new", action: {selectedTab = Tabs.schedule})
                        .foregroundColor(.white)
                        .padding()
                  
                        .frame(width: 140, height: 30)
                        .background(.teal)
                        .cornerRadius(10)
                }
               
                Image("walk_test")
                    .resizable()
                    .frame(width: 360, height: 160)
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Vitals & Mobility")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding([.top], 10)
                        .padding(.leading, 10)
                        .padding(.trailing, 40)
                        .foregroundColor(.gray)
                    
                    Button("View all data", action: {selectedTab = Tabs.mockUpload})
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 140, height: 30)
                        .background(.teal)
                        .cornerRadius(10)
                }
                
                Image("vitals")
                    .resizable()
                    .frame(width: 360, height: 190)
            }
        }
        .padding([.top, .leading, .trailing], 10)
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
//    @ViewBuilder var recording: some View {
//        if mockDataStorageProvider.mockUploads.isEmpty {
//            VStack(spacing: 32) {
//                Text("No Recordings Uploaded")
//                    .multilineTextAlignment(.center)
//                    .fontWeight(.bold)
//            }
//            .frame(maxWidth: .infinity)
//            .padding(32)
//        } else {
//            VStack(alignment: .leading) {
//                Text("Latest Recording")
//                    .font(.title3)
//                    .fontWeight(.bold)
//                    .padding([.top], 10)
//                    .padding(.leading, 10)
//                    .foregroundColor(.gray)
//                let uploadList = mockDataStorageProvider.mockUploads
//                let latest = uploadList[0]
//                LatestRecording(mockUpload: latest)
//            }
//            .padding([.top, .leading, .trailing], 10)
//            .frame(maxWidth: .infinity, alignment: .topLeading)
//        }
//    }
//    @ViewBuilder var aboutstudy: some View {
//        VStack(alignment: .leading) {
//            Text("About The Study")
//                .font(.title3)
//                .fontWeight(.bold)
//                .padding([.top], 10)
//                .padding(.leading, 10)
//                .foregroundColor(.gray)
//            AboutStudy()
//        }
//        .padding([.top, .leading, .trailing], 10)
//        .frame(maxWidth: .infinity, alignment: .topLeading)
//    }

    public init() {}

    func firstName(fullName: String) -> String {
        var names = fullName.components(separatedBy: " ")
        let first = names.removeFirst()
        return first.capitalized + "!"
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
