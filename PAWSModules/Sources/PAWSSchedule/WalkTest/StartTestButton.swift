

import SwiftUI
import HealthKit

struct SixMinuteWalkButtonView: View {
    @State private var timeRemaining = 360 // 6 minutes in seconds
    @State private var isTimerRunning = false
    @State private var distanceTraveled = 0.0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(timeRemaining / 60) minutes \(timeRemaining % 60) seconds")
                .font(.largeTitle)
                .padding()
            Button(action: {
                if !isTimerRunning {
                    isTimerRunning = true
                }
            }) {
                Text(isTimerRunning ? "Stop" : "Start")
                    .padding()
            }
            Text(String(format: "%.2f meters", distanceTraveled))
                .font(.headline)
                .padding()
        }
        .onReceive(timer) { time in
            if isTimerRunning {
                if timeRemaining > 0 {
                    timeRemaining -= 1
                    distanceTraveled += 1.5 // assuming average pace of 1.5 meters/second
                } else {
                    isTimerRunning = false
                }
            }
        }
    }
}
