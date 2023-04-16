//
// This source file is part of the CS342 2023 PAWS Team Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import PAWSContacts
import PAWSNotificationScreen
import PAWSSharedContext
import SwiftUI
import PAWSSchedule

enum Tabs: String {
    case schedule
    case home
    case contact
    case mockUpload
}

public struct HomeView: View {
    @AppStorage(StorageKeys.homeTabSelection) var selectedTab = Tabs.home

    public var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tag(Tabs.home)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            MockUploadList()
                .tag(Tabs.mockUpload)
                .tabItem {
                    Label("All Data", systemImage: "heart.text.square.fill")
                }
            ScheduleView()
                .tag(Tabs.schedule)
                .tabItem {
                    Label("Tasks", systemImage: "list.clipboard")
                }
            Care()
                .tag(Tabs.contact)
                .tabItem {
                    Label("Support", systemImage: "person.fill")
                }
        }
    }
    public init() {}
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
