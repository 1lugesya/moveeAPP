//
//  HomeMovieView.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 4.03.2023.
//

import SwiftUI

struct HomeMovieView: View {
    
    @StateObject private var movieViewModel = MovieViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List {
                Text("Movies in Theatres")
                    
                ScrollView (.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        ForEach(movieViewModel.moviePlayingData ?? [PlayingMoviesModelResult]() , id: \.self ) { moviePlaying in
                            
                            NavigationLink(destination: DetailPage(title: moviePlaying.title, voteAverage: moviePlaying.voteAverage, overview: moviePlaying.overview, img: moviePlaying.posterPath)) {
                                PlayingMovieRowView(dataPlaying: moviePlaying)
                            }
                        }
                    }
                }
                
                ZStack {
                    Color.theme.background
                        .ignoresSafeArea()
                    
                    VStack {
                        
                        Text("Populer Movies")
                        
                        ForEach(movieViewModel.movieData ?? [MovieModelResult]() , id: \.self ) { movie in
                            
                            NavigationLink(destination: DetailPage(title: movie.title, voteAverage: movie.voteAverage, overview: movie.overview, img: movie.posterPath)) {
                                MovieRowView(data: movie)
                            }
                        }
                    }
                    .listStyle(.plain)
                }
            }
            .onAppear {
                movieViewModel.getMovie()
                movieViewModel.getPlayingMovies()
            }
        }
    }
}

struct HomeMovieView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMovieView()
    }
    
}


//extension Double {
//    private var numberFormatter: NumberFormatter {
//
//        let formatter = NumberFormatter()
//        formatter.minimumFractionDigits = 1
//        formatter.maximumFractionDigits = 1
//        return formatter
//
//    }
//    ///Converts a Double into a number  as a String with 1 decimal places
//    ///```
//    ///Convert 1234.56 to "$1,234.5"
//    ///```
//
//    func asNumberWithDecimals() -> String {
//        let number = NSNumber(value: self)
//        return numberFormatter.string(from: number) ?? "0"
//
//
//    }
//
//}
