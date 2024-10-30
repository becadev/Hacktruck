//
//  CinzaView.swift
//  Aula6
//
//  Created by Turma01-23 on 30/10/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
                //.ignoresSafeArea()
            Image(systemName:"paintpalette.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(50)
                .background(Color.black)
                .foregroundColor(.gray)
                .cornerRadius(150)
        }
    }
}

#Preview {
    CinzaView()
}
