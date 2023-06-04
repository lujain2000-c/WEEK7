
import SwiftUI

struct StopwatchView: View {
    
    @StateObject private var vm = StopwatchViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ZStack{

                    Text("\(vm.countFormat)")
                        .font(.system(size: 80))
                        .fontWeight(.light)
                    
                      .padding(.top,150)
                  
                        .foregroundColor(Color.white)

                }
                
                ButtonView(viewModel: vm)
                  
                    .padding(.bottom, -80.0)
                    .padding(.top, 50)
                
                Spacer()
            }
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
