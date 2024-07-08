//
//  ListViewViewModel.swift
//  Spotify-clone
//
//  Created by Piyush saini on 25/06/24.
//

import Foundation
import Combine

class ListViewViewModel: ObservableObject {
    @Published var listItem: [listItems] = []

    func fetchPosts() {
        guard let url = URL(string: "https://en.wikipedia.org/wiki/Music_to_Be_Murdered_By") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }
            
            let listItem = try? JSONDecoder().decode([listItems].self, from: data)
            
            DispatchQueue.main.async {
                self.listItem = listItem ?? []
            }
        }.resume()
    }
}
