//
//  DetailsMovieView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 3/5/2024.
//

import SwiftUI

struct DetailsMovieView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.title)
                .font(.title)
                .padding()
            
            if let posterPath = movie.posterPath {
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(posterPath)")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200 , height: 300)
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200 , height: 100 )
            }
            
            Text(movie.overview)
                .padding()
            
            Spacer()
        }
        .navigationTitle(movie.title)
    }
}


/*
#Preview {
    DetailsMovieView()
}
**/
