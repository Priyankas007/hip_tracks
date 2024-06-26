//
// This source file is part of the CS342 2023 PAWS Team Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import Onboarding
import SwiftUI

struct InterestingModules: View {
    @Binding private var onboardingSteps: [OnboardingFlow.Step]

    var body: some View {
        VStack {
            Image(systemName: "pawprint.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .foregroundColor(.red)
                .offset(y: 20)
            SequentialOnboardingView(
                title: "INTERESTING_MODULES_TITLE".moduleLocalized,
                subtitle: "INTERESTING_MODULES_SUBTITLE".moduleLocalized,
                content: [
                    .init(
                        title: "INTERESTING_MODULES_AREA1_TITLE".moduleLocalized,
                        description: "INTERESTING_MODULES_AREA1_DESCRIPTION".moduleLocalized
                    ),
                    .init(
                        title: "INTERESTING_MODULES_AREA2_TITLE".moduleLocalized,
                        description: "INTERESTING_MODULES_AREA2_DESCRIPTION".moduleLocalized
                    ),
                    .init(
                        title: "INTERESTING_MODULES_AREA3_TITLE".moduleLocalized,
                        description: "INTERESTING_MODULES_AREA3_DESCRIPTION".moduleLocalized
                    )
                ],
                actionText: "INTERESTING_MODULES_BUTTON".moduleLocalized,
                action: {
                    #if targetEnvironment(simulator) && (arch(i386) || arch(x86_64))
                    print("PKCanvas view-related views are currently skipped on Intel-based iOS simulators due to a metal bug on the simulator.")
                    onboardingSteps.append(.accountSetup)
                    #else
                    onboardingSteps.append(.consent)
                    #endif
                }
            )
        }
    }

    init(onboardingSteps: Binding<[OnboardingFlow.Step]>) {
        self._onboardingSteps = onboardingSteps
    }
}

struct ThingsToKnow_Previews: PreviewProvider {
    @State private static var path: [OnboardingFlow.Step] = []

    static var previews: some View {
        InterestingModules(onboardingSteps: $path)
    }
}
