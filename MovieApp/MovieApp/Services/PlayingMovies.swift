//
//  nowPlayingMovies.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 8.04.2023.
//

import Foundation

class PlayingMovies {
    
    private let session: URLSession
    private let apiKey = "6d8f0870b06bd155c9e28ad81e743d9a"
    static let shared = PlayingMovies()
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func fetchPlayingMovies(completion: @escaping (Result<PlayingMoviesModel, MovieError>) -> Void) {

        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=\(apiKey)&language=en-US&page=1" )!
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(.networkError(error)))
                return
            }
            
            guard let data = data else {
                completion(.failure(.noDataAvailable))
                return
            }
            
            do {
                let decoded = try JSONDecoder().decode(PlayingMoviesModel.self, from: data)
                completion(.success(decoded))
            } catch let error as DecodingError {
                completion(.failure(.jsonParsingError(error)))
            } catch {
                completion(.failure(.unknownError))
            }
        }
        print(MovieError.self)
        task.resume()
    }
}


enum MovieError: Error {
    case networkError(Error)
    case noDataAvailable
    case jsonParsingError(Error)
    case unknownError
}
