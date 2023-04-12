//
//  PlayingMoviesModel.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 8.04.2023.
//

import Foundation

struct PlayingMoviesModel: Codable {
    let page: Int?
    let results: [PlayingMoviesModelResult]?
    let totalPages, totalResults: Int?
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
      
}

struct PlayingMoviesModelResult: Codable, Hashable{
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let originalTitle, overview: String?
    let popularity: Double?
    let posterPath, releaseDate, title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    
    enum CodingKeys: String, CodingKey {
        
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id = "id"
        case originalTitle = "original_title"
        case overview = "overview"
        case popularity = "popularity"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title = "title"
        case video = "video"
        case voteAverage  = "vote_average"
        case voteCount  = "vote_count"
        
    }
}
