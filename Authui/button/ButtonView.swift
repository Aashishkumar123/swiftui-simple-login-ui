import SwiftUI

struct ButtonView: View {
    
    var button_text: String
    var screen: String
    var bgcolor:Color
    var fgcolor:Color
    var lw: Int
    
    @State private var showingCredits = false
    
    var body: some View {
        Button(button_text){
            showingCredits.toggle()
        }
        .padding(10)
        .frame(maxWidth: .infinity, alignment: Alignment.center)
        .fontWeight(.regular)
        .background(bgcolor)
        .foregroundColor(fgcolor)
        .cornerRadius(10)
        .font(.system(size: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.pink, lineWidth: 1)
        )
        .sheet(isPresented: $showingCredits) {
            if(screen == "signup"){
                SignupView()
                    .presentationDetents([.medium])
            }
            else if(screen == "login"){
                LoginView()
                    .presentationDetents([.medium])
            }
            else {
                
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(button_text: "", screen: "", bgcolor: Color.white, fgcolor: Color.white, lw: 1)
    }
}
