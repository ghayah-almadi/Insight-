import SwiftUI


struct MainScreen: View {
    var body: some View {
        
        TabView {
           
            Home()
                .tabItem{
                    Label("", systemImage: "house")
                }

        
            Express()
                .tabItem{
                    Label("", systemImage: "plus.circle.fill")

                }
            Profile()
                .tabItem{
                    Label("", systemImage: "person")

                }
         
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
