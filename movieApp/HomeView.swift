//
//  HomeView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 26/4/2024.
//
// HomeView.swift
import SwiftUI




    struct HomeView: View {
        @ObservedObject var viewModel = MovieListViewModel()
        
        var body: some View {
            SearchView()
            MovieListView(viewModel: viewModel)
        
        }
    
    }
            


/*#Preview {
   // HomeView(viewModel: <#MovieListViewModel#>)
}*/
