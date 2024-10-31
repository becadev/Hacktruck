//
//  ContentView.swift
//  Aula7
//
//  Created by Turma01-23 on 31/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var enviar : String = ""
    var body: some View {
        NavigationStack{
            VStack {
                TextField("ëscreva", text: $enviar) .multilineTextAlignment(.center)
                Text(enviar)
                NavigationLink(destination:SwiftUIView(recebe : enviar)){
                    Text("Proxima tela:")
                }
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
