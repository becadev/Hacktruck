//
//  ContentView.swift
//  Imc
//
//  Created by Turma01-23 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0.00
    @State private var altura: Double = 0.00
    @State private var imagename : String = ""
    @State private var imc: Double = 0.00
    @State private var cor: Color = .gray

    var body: some View {
            ZStack{
               cor
                    .ignoresSafeArea()

                Text("Calculadorade de IMC")
                    .offset(x:1,y:-240)
                    .bold()
                    .font(.system(size: 30))
                Spacer()
                VStack{ // PESO + Altura
                    
                    TextField("Peso", value: $peso, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .multilineTextAlignment(.center)
                    TextField("Altura", value: $altura, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .padding()

                    Button(action: {
                        
                        imc = 10000*((peso)/(altura*altura))
                        
                        if (imc <= 18.5){
                            cor = Color(.baixopeso)
                            imagename = "Baixo Peso"
                        }
                        if (18.5 <= imc && imc <= 24.99){
                            cor = Color(.orange)
                            imagename = "Normal"
                        }
                        if(imc >= 25 && imc < 29.99){
                            cor = Color(.sobrepeso)
                            imagename = "Sobrepeso"
                        }
                        if(imc>30){
                            cor = Color(.obesidade)
                            imagename = "Obesidade"
                        }
                    }, label: {
                        Text("Calcular")
                    })
                  .padding()
                  .foregroundColor(.white)
                  .background(.blue)
                  .cornerRadius(10)
                    
                    Text(imagename)
                        .offset(x:1,y:100)
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 30))

                    
                    //Text("\(imc)")
                                        
                }
                .offset(x:1,y:-80)
                
                
               // Color.green
                //.ignoresSafeArea()
                
                // Your other content here
                // Other layers will respect the safe area edges
            }
        Image(.tabela)
            .resizable()
            .frame(width:400.0, height: 200)
        }
    }


#Preview {
    ContentView()
}
