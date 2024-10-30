//
//  ContentView.swift
//  Desafio2
//
//  Created by Turma01-23 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var lastname = ""
    @State private var mostrar = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.teal
                    .ignoresSafeArea()
                Image(.logo)
                    .resizable()
                    .frame(width: 200,height: 150)
                    .offset(x:0, y:-300)
                VStack{
                    NavigationLink (destination: SegundaTela(name: " ")){
                        Text("Primeiro Modo")
                            .frame(width: 150,height: 20)
                            .padding(20)
                            .background(Color.azulEscuro)
                            .foregroundColor(.white)
                            .bold()
                            .shadow(color: .azulfundo, radius: 10, x: 1, y: 5)
                        
                    }
                    NavigationLink (destination: TerceiraTela()){
                        Text("Segundo Modo")
                            .frame(width: 150,height: 20)
                            .padding(20)
                            .background(Color.azulEscuro)
                            .foregroundColor(.white)
                            .bold()
                            .shadow(color: .azulfundo, radius: 10, x: 1, y: 5)
                    }
                    
                    NavigationLink (destination: QuartaTela()){
                        Button("Terceiro Modo") {
                            mostrar = true
                               
                            
                        } .frame(width: 150,height: 20)
                            .padding(20)
                            .background(Color.azulEscuro)
                            .bold()
                            .shadow(color: .azulfundo, radius: 10, x: 1, y: 5)
                        .sheet(isPresented: $mostrar) {
                            ZStack {
                                Rectangle()
                                    Color.teal
                                    .ignoresSafeArea(.all)
                                    Text("Nome: ")
                                        .offset(x:0, y:-50)
                                    Text("Sobrenome: ")
                                Button(" ___ ") {
                                    mostrar = false // Dispensa a Sheet
                                }
                                .offset(x:0, y:-350)
                                
                            }
                            
                        }
                    }
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
