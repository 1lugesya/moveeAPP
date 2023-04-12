//
//  MovieViewModel.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 4.03.2023.
//

import Foundation


final class MovieViewModel: ObservableObject{
    
    @Published var moviePlayingData: [PlayingMoviesModelResult]?
    @Published var movieData: [MovieModelResult]?
    
    func getMovie() {
        
        MovieStore.shared.fetchPopulerMovies { MovieResult in
            switch MovieResult {
            case .success(let success):
                self.movieData = success.results
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
        
    }
    
    
    func getPlayingMovies() {
        
        PlayingMovies.shared.fetchPlayingMovies { playingMovieResult in
            switch playingMovieResult {
            case .success(let successResult) :
                print(successResult.results)
                self.moviePlayingData = successResult.results
            case .failure(let failurePlayingMovies) :
                print(failurePlayingMovies.localizedDescription)
            }
        }
        
    }
     
}


