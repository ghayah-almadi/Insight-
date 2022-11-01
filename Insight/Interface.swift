import SwiftUI

struct interface: View {
    
    @State private var isActive = false

    var body: some View {

        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
                               startPoint: .topLeading, endPoint: .bottomLeading) .edgesIgnoringSafeArea(.all)
                Image("L")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .padding(.bottom, 100.0)
                    .frame(width:300)
                
                VStack {
                    Text("Insight")
                        .font(.largeTitle)
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding(.top, 264.0)
                    
                }
                .padding()
                
                
                
                NavigationLink(destination: MainScreen().navigationBarBackButtonHidden(),
                               isActive: $isActive,
                               label: { EmptyView() })
            }
            .onAppear(perform: {
                self.goToMainScreen(time: 1.0)
            })
            
            
        }
    }
    
    
    func goToMainScreen(time: Double) {
         DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
             self.isActive = true
         }
     
    }
}
struct interface_Previews: PreviewProvider {
    static var previews: some View {
        interface()
    }
}
