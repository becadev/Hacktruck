//
//  Musica.swift
//  Spotfy
//
//  Created by Turma01-23 on 31/10/24.
//

import SwiftUI

struct Musica: View {
    @State var name : String = "Neyo"
    @State var artist : String = "Luccas Carlos"
    @State var capa : String = "Capa"
    var body: some View {
        ZStack{
            VStack {
                LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.8), .blue,.black, .black]), startPoint: .top, endPoint: .bottom)
            }// FIM DE VSTACK FUNDO
            .ignoresSafeArea()
            VStack{
                Spacer()
                VStack{
                    HStack{
                        AsyncImage(url: URL(string: capa)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            // Adicione aqui um placeholder de sua escolha
                            Color.gray
                        }
                        .frame(width: 300, height: 300)
                    }// CAPA
                
                    Text(name)
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 30))
                    Text(artist)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                }
                
                Spacer()
                                
            }
            
            
        }
        

    }
}

#Preview {
    Musica()
}
