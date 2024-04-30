//
//  Movie.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 26/4/2024.
//

// Movie.swift
import Foundation
/*
struct Movie: Hashable, Codable {
    let originalLanguage: String
    let originalTitle: String
    let overview: String
    let backdropPath: String
    let homepage: String?
    
    private enum CodingKeys: String, CodingKey {
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case backdropPath = "backdrop_path"
        case homepage
    }
}

struct APIResponse: Codable {
    let page: Int
    let results: [Movie]
    let totalPages: Int
    let totalResults: Int
}


//class Movie
class MovieModel: ObservableObject {
    @Published var movies: [Movie] = []
    
    func fetch() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/550?api_key=44168f84ee3d112a8f53f7ff56dde896")
        else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
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
                    self?.movies = response.results
                }
            } catch {
                print("data", data)
                print(error)
            }
        }
        task.resume()
    }
}

struct Response: Codable {
    let results: [Movie]
}
*/

struct Movie: Codable ,Identifiable{
    let id: Int
    let title: String
    let posterPath: String?
    let overview: String
    let releaseDate: String
}


