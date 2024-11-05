//
//  ViewModel.swift
//  APIs
//
//  Created by Turma01-23 on 04/11/24.
//

import Foundation

class ViewModel : ObservableObject{
    
    @Published var chars : [HP] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string:"https://hp-api.onrender.com/api/characters/house/gryffindor")!){
            data,_,error in
            do{
                self.chars = try JSONDecoder().decode([HP].self, from: data!)
            } catch{
                print(error)
            }
        }
        task.resume()
    }
}
