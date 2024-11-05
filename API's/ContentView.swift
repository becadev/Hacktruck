//
//  ContentView.swift
//  APIs
//
//  Created by Turma01-23 on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewmodel = ViewModel()
    var body: some View {
    ZStack{
        AsyncImage(url: URL(string: "https://i.pinimg.com/564x/fe/1b/ec/fe1bec80f7eb8f9f3817ef93447bf73d.jpg")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        } .frame(width: 1000, height:1000)
            VStack{
                AsyncImage(url: URL(string: "https://i.pinimg.com/564x/cb/df/eb/cbdfeb3ac7202181791e6fe69daa49a5.jpg")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                } .frame(width: 200, height: 200)
                NavigationView{
                    ScrollView{
                        ForEach(viewmodel.chars){ index in
                            NavigationLink(destination: information()){
                                HStack{
                                    AsyncImage(url: URL(string: index.image!)){image in
                                        image
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                    } placeholder: {
                                        Color.gray
                                    }
                                    Text(index.name!)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                }
            }
        }
                .onAppear(){
                        viewmodel.fetch()}
        }
       
    }

#Preview {
    ContentView()
}
