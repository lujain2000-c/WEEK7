//
//  TestView.swift
//  AlarmClock
//
//  Created by لجين إبراهيم الكنهل on 13/11/1444 AH.
//

import SwiftUI

struct TestView: View {
        var colors = ["Red", "Green", "Blue", "Tartan"]
        @State private var selectedColor = "Red"

        var body: some View {
            VStack {
                Picker("Please choose a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                Text("You selected: \(selectedColor)")
            }
        }
    }

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
