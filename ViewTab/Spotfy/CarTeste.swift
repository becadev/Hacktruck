
import SwiftUI

struct CarModel: Identifiable {
    let id: Int
    let modelName: String
    let imageURL: String
}

struct CarTeste: View {
    let cars: [CarModel] = [
        CarModel(id: 1, modelName: "Carro A", imageURL: "https://i.pinimg.com/564x/e1/2f/9c/e12f9c14ed0b242bf5582b89a87a3e22.jpg"),
        CarModel(id: 2, modelName: "Carro B", imageURL: "car_b_image_url"),
        // Adicione mais carros conforme necessário
    ]

    var body: some View {
        NavigationView {
            List(cars) { car in
                NavigationLink(destination: CarDetailsView(car: car)) {
                    HStack {
                        // Utilizando AsyncImage para carregar imagens de forma assíncrona
                        AsyncImage(url: URL(string: car.imageURL)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            // Adicione aqui um placeholder de sua escolha
                            Color.gray
                        }
                        .frame(width: 50, height: 50)
                        
                        Text(car.modelName)
                    }
                }
            }
            .navigationTitle("Carros de Aluguel")
        }
    }
}

struct CarDetailsView: View {
    let car: CarModel

    var body: some View {
        VStack {
            // Detalhes do carro
            Text("Detalhes do Carro")
                .font(.title)
                .padding()

            // Informações específicas do carro, se necessário
            // ...

            // Exibição da imagem do carro em detalhes
            AsyncImage(url: URL(string: car.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                // Adicione aqui um placeholder de sua escolha
                Color.gray
            }
            .frame(maxHeight: 200)
            .padding()

            Spacer()
        }
        .navigationTitle(car.modelName)
    }
}

#Preview {
    CarTeste()
}
