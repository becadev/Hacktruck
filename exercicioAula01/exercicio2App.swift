//
//  exercicio2Aula01.swift
//  exercicioAula01
//
//  Created by Turma01-23 on 23/10/24.
//

import SwiftUI
struct exercicio2Aula01: View {
    var body: some View {
        HStack{
            Spacer()
            HStack{
                Image("Image")
                    .resizable() //Redimensiona a imagem
                    .frame(width:150,height:150) // tamanho do circulo
                    .clipShape(Circle()) // Coloca em formato de circulo
            }
            Spacer()
            VStack{
                Text("Hackatruck")
                    .foregroundColor(.red) // Muda a cor do texto
                Text("77 Universidades")
                    .foregroundColor(.blue)
                Text("5 regiões")
                    .foregroundColor(.purple)
            }
            Spacer()
        }   
    }
}

#Preview {  // Mostra a visualização do APP
    exercicio2Aula01()
}
