import SwiftUI

struct exercicio3App: View {
  var body: some View{
    HStack{ 
      ZStack(alignment: bottomLeading){ // Foto de perfil
        Image("Image")
          .resizable()
          .frame(width: 150, height: 150)
          .clipShape(Circle())
        Circle() // Circulo de adicionar story (falta o maizinho)
          .fill(Color.blue)
          .frame(width: 10.0, height: 10.0)
          .border(Color.white)
      }
      VStack{ //quadradinhos + profile editor
        HStack{ //quadradinhos
          Spacer()
          VStack{
            Text("0")
              .bold()
            Text("Photos")
          }
          VStack{
            Text("0")
              .bold()
            Text("Follows")
          }
          VStack{
            Text("0")
              .bold()
            Text("Following")
          }
          Spacer()   
        }
        HStack{
          Spacer()
          Text("Profile editor")
            .bold()
            .background(Color.gray.opacity(0.25))
            .cornerRadius(14.0)
            .padding(14)
          Spacer()
        }
      }
    }
  }
}
#Preview{
  exercicio3App()
}
