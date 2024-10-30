//
//  ListaView.swift
//  Aula6
//
//  Created by Turma01-23 on 30/10/24.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationView {
            List {
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")
                    
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                    
                }
            }
            .navigationTitle("Lista")
        }
        
    }
}

#Preview {
    ListaView()
}
