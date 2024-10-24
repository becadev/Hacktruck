//
//  ContentView.swift
//  Instagram
//
//  Created by Turma01-23 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack{
            HStack{
                ZStack(){ // Foto de perfil
                    Image("Fernanda")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .padding(2)
                    ZStack(){
                        Circle() // Circulo de adicionar story (falta o maizinho)
                            .fill(Color.blue)
                            .frame(width: 20.0, height: 20.0)
                            .offset(x:40, y:50)
                        Image(systemName:"plus")
                            .foregroundColor(.white)
                            .offset(x:40, y:50)
                            .padding()
                    }
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
                            Text("2k")
                                .bold()
                            Text("Follows")
                        }
                        VStack{
                            Text("100")
                                .bold()
                            Text("Following")
                        }
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        Text("Profile editor")
                            .bold()
                            .border(Color.gray.opacity(0.25))
                            .frame(width: 200, height: 30)
                            .background(Color.gray.opacity(0.25))
                            .cornerRadius(5.0)
                        Spacer()
                    }
                }
            } // Fim de perfil + seguidores + profile
            VStack{
                Text("Fernanda Torres\n").bold() + Text("Atriz, escritora, cronista e roteirista brasileira.") .font(.system(size: 15))
            }
        }
    }
}
#Preview {
    ContentView()
}
