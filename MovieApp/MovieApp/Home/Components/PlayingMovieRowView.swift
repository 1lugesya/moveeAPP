//
//  PlayingMovieRowView.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 9.04.2023.
//

import SwiftUI


struct PlayingMovieRowView: View {
    
    var dataPlaying: PlayingMoviesModelResult?
    
    @StateObject private var movieViewModel = MovieViewModel()
    
    var body: some View {
        
        
        VStack {
            
            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original/" + (dataPlaying?.posterPath ?? "" )), scale: 40.0)
            
                .frame(minWidth: 50, minHeight: 50)
                .font(.caption)
                .cornerRadius(20)
            
            Text("\(dataPlaying?.title ?? "")")
                .font(.caption)
                .foregroundColor(Color.blue)
            
            VStack {
                Text("IMDB")
                Text("\(dataPlaying?.voteAverage ?? 0) ".prefix(3))
                
            }
            .font(.caption)
            .foregroundColor(Color.theme.secondaryText)
            .frame(minWidth: 30)
            .padding()
            
        }
        .onAppear {
            movieViewModel.getPlayingMovies()
            
        }
    }
}


struct PlayingMovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayingMovieRowView()
                .previewLayout(.sizeThatFits)
            
            PlayingMovieRowView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
        }
    }
}

