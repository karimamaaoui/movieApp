//
//  MovieListViewModel.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 30/4/2024.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel: MovieListViewModel
    
    var body: some View {
           
        NavigationView {
                   List(viewModel.movies) { movie in
                       
                       MovieCardView(movie: movie)
                   }
                   .onAppear {
                       viewModel.fetchMovies()
                   }
                   .navigationTitle("Movies")
               }
           }
       }


struct MovieCardView: View {
    let movie: Movie
    
    var body: some View {
        
        HStack(alignment: .top) {
            if let posterPath = movie.posterPath {
                // Load movie poster image
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(posterPath)")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 150)
                        .cornerRadius(8)
                } placeholder: {
                    ProgressView()
                        .frame(width: 100, height: 150)
                }
                .padding(.trailing, 10)
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 100, height: 150)
                    .cornerRadius(8)
                    .padding(.trailing, 10)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(movie.title)
                    .font(.headline)
                // Add Details button
                                   NavigationLink(destination: DetailsMovieView(movie: movie)) {
                                       Text("Details")
                                           .font(.caption)
                                           .foregroundColor(.blue)
                                   }
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    MovieListView(viewModel: MovieListViewModel())
}
