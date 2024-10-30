//
//  AzulView.swift
//  Aula6
//
//  Created by Turma01-23 on 30/10/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
                //.ignoresSafeArea()
            Image(systemName:"paintbrush.pointed.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(50)
                .background(Color.black)
                .foregroundColor(.blue)
                .cornerRadius(150)
        }
    }
}

#Preview {
    AzulView()
}
