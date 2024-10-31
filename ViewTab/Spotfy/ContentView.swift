//
//  ContentView.swift
//  Spotfy
//
//  Created by Turma01-23 on 31/10/24.
//

import SwiftUI

struct Song : Identifiable{
    var id : Int
    var name : String
    var artist : String
    var capa : String
}
struct Recomendacao : Hashable{
    var id : Int
    var name : String
    var capa : String
}

struct ContentView: View {
    var arraySongs = [
        Song(id: 1, name: "Neyo", artist: "Luccas Carlos", capa:"https://cdn.jornaldebrasilia.com.br/wp-content/uploads/2023/11/07160743/WhatsApp-Image-2023-11-07-at-15.42.10-1024x831.jpeg"),
        Song(id: 2, name: "Devolve meu sono", artist: "Sotam, Rob, Renok", capa: "https://e-cdn-images.dzcdn.net/images/cover/daf570ad3f1f839bd56e6ec79440638e/500x500-000000-80-0-0.jpg"),
        Song(id: 3, name: "Delírios", artist: "FBC", capa: "https://monkeybuzz.com.br/wp-content/uploads/2021/11/fbc.jpg"),
        Song(id: 4, name: "Coracao de ferro", artist: "zasack", capa: "Capa_FBC"),
        Song(id: 5, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 6, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 7, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 8, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 9, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 10, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 11, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 12, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
        Song(id: 13, name: "Delírios", artist: "FBC", capa: "Capa_FBC"),
    ]
    var recomendados = [
        Recomendacao(id: 1 , name: "Love Song1", capa: "URl_capa1" ),
        Recomendacao(id: 2 , name: "Love Song2", capa: "URl_capa2" ),
        Recomendacao(id: 3 , name: "Love Song3", capa: "URl_capa3" ),
        Recomendacao(id: 4 , name: "Love Song4", capa: "URl_capa4" )
    ]
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.8), .blue,.black, .black]), startPoint: .top, endPoint: .bottom)
                }// FIM DE VSTACK FUNDO
                .ignoresSafeArea()
            ScrollView{
                VStack{
                        VStack{
                            //CAPA DA PLAYLIST
                            VStack{
                                AsyncImage(url: URL(string: "https://i.pinimg.com/564x/e1/2f/9c/e12f9c14ed0b242bf5582b89a87a3e22.jpg")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                } .frame(width: 200, height: 200)
                                // FIM DA CAPA DA PLAYLIST
                                
                                
                                // PERFIL DO DONO DA PLAYLIST
                                VStack{
                                    Text("  Slow Down")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                        .bold()
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    HStack{
                                        AsyncImage(url: URL(string: "https://i.pinimg.com/736x/92/a8/fd/92a8fd34be728e448e6ef28a51970498.jpg")) { image in
                                            image.resizable()
                                            
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(60)

                                        Text("Sun7")
                                            .foregroundColor(.white)
                                            .bold()
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                                // HSTACK NOME PLAYLIST + USER
                                .frame(maxWidth: .infinity, alignment: .leading)
                                Spacer()
                            }
                            // FIM HSTACK USER + CAPA PLAYLIST
                            VStack{
                                ForEach(arraySongs){ e in
                                    NavigationLink(destination: Musica(name : e.name, artist : e.artist, capa : e.capa)){
                                        HStack{
                                            AsyncImage(url: URL(string: e.capa)) { image in
                                                image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                            } placeholder: {
                                                // Adicione aqui um placeholder de sua escolha
                                                Color.gray
                                            }
                                            .frame(width: 50, height: 50)
                                            
                                            
                                            VStack{
                                                Text(e.name)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .bold()
                                                    .font(.system(size: 18))
                                                
                                                Text(e.artist)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .font(.system(size: 15))
                                            } // FIM VSTACK NOME + ARTISTA
                                            Spacer()
                                            Image(systemName: "ellipsis")
                                                .foregroundColor(.white)
                                                .padding()
                                        } // FIM HSTACK DE CADA SONG
                                        
                                    } // FIM VSTACK FOREACH DOS SONGS
                                    .foregroundColor(.white)
                                    Spacer()
                                } // FIM NAVIGATION LINK
                            } // FIM VSTACK DO NAVIGATION
                        } // FIM VSTACK GERAL
                    VStack{
                        Text("Sugeridos")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(recomendados, id: \.self) { capa in
                                Text("kl")
                                    .frame(width: 200, height: 200)
                                    .background(.red)
                            }
                        }
                    }
                    }
                }// FIM SCROLL
            } /// FIM ZSTACK
        }//FIM NAVIGATION
    } // FIM BODY
} // FIM STRUCT VIEW


#Preview {
    ContentView()
}


/*
ForEach(Song, id: Int){
    e in
    Text()
 
 VStack{
     ForEach(arraySongs){ e in
         HStack{
             Text(e.name)
             Image("ellipsis")
         }
 
 
 
 AsyncImage(url: URL(string: e.capa)) { image in image
         .resizable()
         .aspectRatio(contentMode: .fit)
     }
*/
