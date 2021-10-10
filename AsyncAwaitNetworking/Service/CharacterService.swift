//
//  CharacterService.swift
//  AsyncAwaitNetworking
//
//  Created by Danh Tu on 09/10/2021.
//

import Foundation

struct CharacterService {
    enum CharacterServiceError: Error {
        case failed
        case failedToDecode
        case invalidStatusCode
    }
    
    // Breaking down the benefits of using Swift Concurrency's Async/Await
    //    func fetchCharacters(completion: @escaping (Result<[Character], Error>) -> Void) {
    //        let session = URLSession.shared.dataTask(with: .init(url: URL(string: "https://rickandmortyapi.com/api/character")!)) { data, response, error in
    //            guard let response = response as? HTTPURLResponse
    //            else {
    //                return
    //            }
    //
    //            guard response.statusCode == 200
    //            else {
    //                completion(.failure(CharacterServiceError.invalidStatusCode))
    //                return
    //            }
    //
    //            guard let data = data, let decodedData = try? JSONDecoder().decode(CharacterServiceResult.self, from: data)
    //            else {
    //                completion(.failure(CharacterServiceError.failedToDecode))
    //                return
    //            }
    //
    //            completion(.success(decodedData.results))
    //        }
    //
    //        session.resume()
    //    }
}
