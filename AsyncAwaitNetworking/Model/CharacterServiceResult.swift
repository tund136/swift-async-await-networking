//
//  CharacterServiceResult.swift
//  AsyncAwaitNetworking
//
//  Created by Danh Tu on 09/10/2021.
//

import Foundation

struct CharacterServiceResult: Codable {
    let results: [Character]
}

struct Character: Codable {
    let id: Int
    let name: String
}
