//
//  HomeView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 26/4/2024.
//
// HomeView.swift
import SwiftUI


//struct URLImage: View {
  
    
    /*@State var data: Data?
    let urlString: String
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            return AnyView(
                Image(uiImage: uiimage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 70)
                    .background(Color.gray)
            )
        } else {
            return AnyView (
                Image(systemName: "video")
                    .frame(width: 130, height: 70)
                    .background(Color.gray)
                    .aspectRatio(contentMode: .fill)
                    .onAppear {
                        self.fetchData()
                    }
            )
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching image: \(error)")
                return
            }
            guard let data = data else {
                print("No data received")
                return
            }
            DispatchQueue.main.async {
                self.data = data
            }
        }
        task.resume()
    }
}*/


    struct HomeView: View {
        @ObservedObject var viewModel: MovieListViewModel
        
        // var body: some View {
        //    NavigationView {
        /*   List {
         ForEach(movieModel.movies, id: \.self) { movie in
         HStack {
         URLImage(urlString: movie.backdropPath)
         Text(movie.originalTitle).bold()
         }
         .padding(3)
         }
         }
         .navigationBarTitle("Movies")
         .onAppear {
         self.movieModel.fetch()
         }*/
        //}
        // }
     
        var body: some View {
            MovieListView(viewModel: viewModel)
                .onAppear {
                    viewModel.fetchMovies()
                }
        }
    
    }
            



/*#Preview {
   // HomeView(viewModel: <#MovieListViewModel#>)
}*/
