//
//  SegundaTela.swift
//  Desafio2
//
//  Created by Turma01-23 on 30/10/24.
//

import SwiftUI

struct SegundaTela: View {
    
    @State var name : String
    @State private var lastname = ""
    
    var body: some View {
        ZStack{
            Color.teal
                .ignoresSafeArea()
            Text(" Primerio Modo ")
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 30))
                .offset(x:0, y:-300)
            ZStack{
                Text("Nome: \(name)")
                    .offset(x:1,y:-70)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                TextField("Nome", text: $name)
                    .offset(x:170,y:80)
                Text("Sobrenome: \(lastname)")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    //.background(Color.azulEscuro)
                TextField("Sobrenome", text: $lastname)
                    .offset(x:150,y:100)
                    

            }
        }
    }
}

#Preview {
    SegundaTela(name: "")
}
