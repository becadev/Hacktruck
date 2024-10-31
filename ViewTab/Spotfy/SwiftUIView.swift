//
//  SwiftUIView.swift
//  Aula7
//
//  Created by Turma01-23 on 31/10/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State var recebe : String = "teste1"
    var body: some View {
        Text(recebe)
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(.red)
                }
            }
        }
        
    }
}

#Preview {
    SwiftUIView()
}
