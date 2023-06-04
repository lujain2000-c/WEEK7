//
//  TimerView.swift
//  AlarmClock
//
//  Created by لجين إبراهيم الكنهل on 14/11/1444 AH.
//

import SwiftUI

struct TimerView: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    
    @State var Selection = 2
    
    var body: some View {
        TabView(selection: $Selection) {
            
            SelectStopwatchView()
                .foregroundColor(Color.orange)
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }.tag(1)
            
            ContentView()
                .tabItem {
                    Image(systemName: "alarm")
                    Text("Alarm")
                }.tag(2)
            
            StopwatchView()
                .tabItem {
                    Image(systemName: "stopwatch")
                    Text("Stopwatch")
                }.tag(3)
            
            SelectStopwatchView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }.tag(4)
            
        }
        .accentColor(Color.orange)
    }
}
struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
