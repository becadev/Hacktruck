//
//  ContentView.swift
//  exercicioAula01
//
//  Created by Turma01-23 on 23/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Text("      ")
                .font(.largeTitle)
                .padding()
                .background(
                    Circle()
                        .fill(.red)
                        .frame(width: 200, height: 200))
                .clipped()
            Spacer()
            Text("      ")
                .font(.largeTitle)
                .padding()
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 200, height: 200))
                .clipped()
            } // Chave do primeiro HStack
        Spacer()
        HStack{
            Text("      ")
                .font(.largeTitle)
                .padding()
                .background(
                    Circle()
                        .fill(.green)
                        .frame(width: 200, height: 200))
                .clipped()
            Spacer()
            Text("      ")
                .font(.largeTitle)
                .padding()
                .background(
                    Circle()
                        .fill(.yellow)
                        .frame(width: 200, height: 200))
                .clipped()
        }
    }
}
#Preview {
    ContentView()
}
