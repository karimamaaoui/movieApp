//
//  MovieListView.swift
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
                VStack(alignment: .leading) {
                    Text(movie.title)
                    Text(movie.releaseDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Movies")
        }
    }
}

#Preview {
    MovieListView(viewModel: MovieListViewModel())}
