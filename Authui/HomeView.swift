import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("bird")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 30)
                    
                
                VStack {
                    Text("SAVE BIRDS")
                    Text("SAVE ENVIRONMENT")
                }
                .font(
                    .custom(
                    "verdana",
                    fixedSize: 20)
                    .weight(.bold)
                )
                
                VStack {
                    Text("save birds life by just your small contribution")
                }
                .font(
                    .custom(
                    "verdana",
                    fixedSize: 13)
                    .weight(.regular)
                )
                .padding(.top, 0.1)
                
                HStack {
                    Spacer()
                    ButtonView(button_text: "Signup", screen: "signup", bgcolor: .pink, fgcolor: .white, lw: 0)
                    Spacer()
                    ButtonView(button_text: "Login", screen: "login", bgcolor: .white, fgcolor: .pink, lw: 1)
                    Spacer()
                }
                .padding(20)
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
