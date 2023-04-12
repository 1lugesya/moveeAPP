//
//  MovieModel.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 4.03.2023.
//


struct MovieModel: Codable {
    let page: Int?
    let results: [MovieModelResult]?
    let totalPages, totalResults: Int?
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct MovieModelResult: Codable, Hashable{
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
//    let originalLanguage: OriginalLanguage?
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
//        case originalLanguage = "original_language"
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

//enum OriginalLanguage: Codable{
//    case en
//
//}

//func updateMovies() -> MovieModel {
//    
//    return MovieModel(page: page, results: results, totalPages: totalPages, totalResults: totalResults)
//    
//}
//
//func getResult(amount: Double) -> Result {
//    
//    return Result(adult: adult, backdropPath: backdropPath, genreIDS: genreIDS, id: id, originalLanguage: originalLanguage, originalTitle: originalTitle, overview: overview, popularity: popularity, posterPath: posterPath, releaseDate: releaseDate, title: title, video: video, voteAverage: voteAverage, voteCount: voteCount)
//    
//}
