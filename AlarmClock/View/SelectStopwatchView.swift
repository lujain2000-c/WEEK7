

import SwiftUI

struct SelectStopwatchView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("Select Stopwatch")
                .font(.title)
                .lineLimit(1)
           
                .minimumScaleFactor(0.1)
                .foregroundColor(Color.orange)
        }
    }
}

struct SelectStopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        SelectStopwatchView()
    }
}

