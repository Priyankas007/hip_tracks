//
// This source file is part of the Stanford CardinalKit Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import FHIR
import Foundation
import Scheduler

public typealias PAWSApplicationScheduler = Scheduler<FHIR, PAWSApplicationTaskContext>

extension PAWSApplicationScheduler {
    public convenience init() {
        self.init(
            tasks: [
                Task(
                    title: String(localized: "TASK_SOCIAL_SUPPORT_QUESTIONNAIRE_TITLE", bundle: .module),
                    description: String(localized: "TASK_SOCIAL_SUPPORT_QUESTIONNAIRE_DESCRIPTION", bundle: .module),
                    schedule: Schedule(
                        start: Calendar.current.startOfDay(for: Date()),
                        dateComponents: .init(hour: 0, minute: 1), // Every Day at 12:01 AM
                        end: .numberOfEvents(356)
                    ),
                    context: PAWSApplicationTaskContext.questionnaire(Bundle.module.questionnaire(withName: "SocialSupportQuestionnaire"))
                ),
                Task(
                    title: String(localized: "TASK_PHOTO_TITLE", bundle: .module),
                    description: String(localized: "TASK_PHOTO_DESCRIPTION", bundle: .module),
                    schedule: Schedule(
                        start: Calendar.current.startOfDay(for: Date()),
                        dateComponents: .init(hour: 0, minute: 1), // Every Day at 12:01 AM
                        end: .numberOfEvents(356)
                    ),
                    context: PAWSApplicationTaskContext.researchKitTask(ResearchKitTaskContext.woundphoto)
                ),
                Task(
                    title: String(localized: "TASK_WALK_TITLE", bundle: .module),
                    description: String(localized: "TASK_WALK_DESCRIPTION", bundle: .module),
                    schedule: Schedule(
                        start: Calendar.current.startOfDay(for: Date()),
                        dateComponents: .init(hour: 0, minute: 1), // Every Day at 12:01 AM
                        end: .numberOfEvents(356)
                    ),
                    context: PAWSApplicationTaskContext.researchKitTask(ResearchKitTaskContext.walktest)
                )
            ]
        )
    }
}
