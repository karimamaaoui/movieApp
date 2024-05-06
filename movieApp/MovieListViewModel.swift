//
//  MovieListViewModel.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 30/4/2024.
//

import Foundation

struct Response: Codable {
    let results: [Movie]
}

class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    
    func fetchMovies() {
        
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=44168f84ee3d112a8f53f7ff56dde896") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                
                // Decode the JSON response
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                // Decode the dictionary response into a Response object
                let response = try decoder.decode(Response.self, from: data)
            
                
                // Extract the movies array from the response and assign it to the movies property
                DispatchQueue.main.async {
                    self.movies = response.results
                }
                
                DispatchQueue.main.async {
                    self.movies = response.results
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

