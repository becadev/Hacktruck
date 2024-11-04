//
//  ContentView.swift
//  Maps
//
//  Created by Turma01-23 on 01/11/24.
//

import SwiftUI
import MapKit

struct Location : Identifiable{
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
    let flag : String
    let description : String
}


struct ContentView: View {
    @State var mostrar =  false
    @Environment(\.dismiss) private var dismiss
    @State var position = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -23.039417, longitude: -47.371599), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    ))
    @State var topname = String()
    @State var streetflag = String()
    @State var streetdescrition = String()
    
    var LocationArray = [
        
        Location(name: "Ceará", coordinate: CLLocationCoordinate2D(latitude: -3.723852, longitude: -38.571952), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Bandeira_do_Cear%C3%A1.svg/800px-Bandeira_do_Cear%C3%A1.svg.png", description: "O Ceará, um estado do nordeste brasileiro, tem um interior montanhoso e um litoral atlântico com impressionantes falésias vermelhas. O balneário de Canoa Quebrada tem enormes dunas de areia rosadas e a Rua Dragão do Mar, muito movimentada e também conhecida como Broadway. A cidade isolada de Jericoacoara, cercada pelo Parque Nacional de Jericoacoara, repleto de dunas, é famosa por suas ruas de areia, pela prática de windsurfe e pelo pôr do sol incomum em tons de verde."),
       
        Location(name: "Paraíba", coordinate: CLLocationCoordinate2D(latitude:  -7.118569477459111, longitude: -34.878279478859824), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Bandeira_da_Para%C3%ADba.svg/800px-Bandeira_da_Para%C3%ADba.svg.png", description: "Paraíba, um estado no nordeste do Brasil, é conhecido pela linha da costa tropical e pela arquitetura colonial portuguesa. A capital, João Pessoa, possui praias como a Manaíra e Tambaú, além de locais de mergulho repletos de corais ao largo da costa. Junto ao rio Paraíba, o centro histórico da cidade possui casas coloridas e a igreja de São Francisco, com uma arquitetura barroca. "),
        
        Location(name: "Rio Grande Do Norte", coordinate: CLLocationCoordinate2D(latitude: -5.810561, longitude: -35.216410), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Bandeira_do_Rio_Grande_do_Norte.svg/800px-Bandeira_do_Rio_Grande_do_Norte.svg.png", description: "Rio Grande do Norte é um estado na extremidade nordeste do Brasil. A capital, Natal, fica numa costa repleta de praias onde se encontra o Forte dos Reis Magos, em forma de estrela, um forte português do século XVI. Ponta Negra é uma praia enquadrada pela enorme duna, Morro do Careca, um símbolo da cidade. A sul, a Praia de Pipa é uma estância célebre pelo surf e pelos golfinhos. ")
    ]
    var body: some View {
        NavigationStack{
            ZStack {
                    Map(position: $position)
                            .ignoresSafeArea()

                            VStack{
                                VStack{
                                    Text("World Map")
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding()
                                        .foregroundColor(.black)
                                        .bold()
                                        .font(.system(size: 30))
                                }
                                
                                .background(Color.white.opacity(0.5))
                                Spacer()
                                HStack{
                                    ForEach(LocationArray){ e in
                                        VStack{
                                            Button{
                                                position = MapCameraPosition.region(
                                                    MKCoordinateRegion(
                                                        center: e.coordinate,
                                                        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                                                    )
                                                )
                                                topname = e.name
                                                streetflag = e.flag
                                                streetdescrition = e.description
                                                
                                            } label: {
                                                HStack{
                                                    AsyncImage(url: URL(string: e.flag)){ image in
                                                        image
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                    } placeholder: {
                                                        Color.gray
                                                    }
                                                    
                                                } // FIM HSTACK
                                            } // FIM DA LABEL
                                        } // FIM DA VSTACK
                                    } // FIM DO FOR
                                } // FIM DO HSTACK
                                Text(topname)
                                    .offset(x:0,y:-690)
                            } // FIM DO VSTACK GERAL
            }// FIM DE ZSTACK
            .sheet(isPresented: $mostrar) {
                VStack{
                    Text(topname)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    HStack{
                        AsyncImage(url: URL(string: streetflag)){ image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            Color.gray
                        }
                    }
                    .padding()
                    Text(streetdescrition)
                        .foregroundColor(.black)
                        .padding()
                }
            }.onTapGesture{
                mostrar = true
            }
        }// FIM NAVIGATIONSTACK
    }// FIM BODY
}// FIM CONTENT VIEW

#Preview {
    ContentView()
}
