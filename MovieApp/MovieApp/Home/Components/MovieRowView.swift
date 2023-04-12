//
//  MovieRowView.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 4.03.2023.
//

import SwiftUI

struct MovieRowView: View {
    
    var data: MovieModelResult?
    
    @StateObject private var movieViewModel = MovieViewModel()
    
    var body: some View {
        
        column
        
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MovieRowView()
                .previewLayout(.sizeThatFits)
            
            MovieRowView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
        }
    }
}

extension MovieRowView {
    
    private var column: some View {
        
        HStack {
            
            Spacer()
            
            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original/" + (data?.posterPath ?? "" )), scale: 30.0)
            
                .padding(.leading)
                .font(.caption)
                .frame(minWidth: 50, minHeight: 50)
            
            Spacer()
            Spacer()

            
            Text("\(data?.title ?? "")")
                .font(.caption)
                .foregroundColor(Color.theme.purple)
            
            Spacer()
            
            VStack {
                Text("IMDB")
                Text("\(data?.voteAverage ?? 0) ".prefix(3))
                
            }
            .font(.caption)
            .foregroundColor(Color.theme.secondaryText)
            .padding(.trailing, 10)
            
        }
        .onAppear {
            movieViewModel.getMovie()
        }
    }
}


