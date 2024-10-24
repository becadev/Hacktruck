//
//  ContentView.swift
//  exercicioAula02
//
//  Created by Turma01-23 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name : String = "Nome"
    @State private var showingAlert = false
    var body: some View {
        ZStack{
            Image(.image) //fundo
                .resizable()
                .opacity(0.3)
            VStack(){
                    Text("Bem vindo, \(name)!")
                        //.offset(x:1,y:-300)
                        .bold()
                        .font(.system(size: 30))
                    TextField("Enter your name", text: $name)
                        .offset(x:180,y:1)
                VStack{
                    Image(.image2) /// texto
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .offset(x:5,y:80)
                    Image(.image1) // caminhao pequeno
                            .resizable()
                            .frame(width: 300.0, height: 300.0)
                }
                VStack{
                    Button("Entrar") {
                            showingAlert = true
                        }
                       .alert(isPresented: $showingAlert) {
                           Alert(title: Text("Alerta"), message: Text("Você irá iniciar o desafio daa aula agora"), dismissButton: .default(Text("Vamos lá!")))
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
