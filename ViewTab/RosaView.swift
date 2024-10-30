//
//  RosaView.swift
//  Aula6
//
//  Created by Turma01-23 on 30/10/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
                //.ignoresSafeArea()
            Image(systemName:"paintbrush")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(50)
                .background(Color.black)
                .foregroundColor(.pink)
                .cornerRadius(150)
        }
    }
}
    
#Preview {
    RosaView()
}
