//
//  ContentView.swift
//  Aula6
//
//  Created by Turma01-23 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    @State  private  var selectedIndex: Int  =  0
    var body: some View {
        TabView {
            RosaView()
                .tabItem {
                    Label ("Rosa",systemImage: "paintbrush")
    
            }
            AzulView()
                .tabItem {
                    Image(systemName: "paintbrush.pointed.fill")
                    Text("Azul")
                }
            CinzaView()
                .tabItem {
                    Image(systemName: "paintpalette.fill")
                    Text("Cinza")
                }
            ListaView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Lista")
                        
                }
            
        }
    }
}

#Preview {
    ContentView()
}
