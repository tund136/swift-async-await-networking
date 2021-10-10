//
//  CharacterViewModel.swift
//  AsyncAwaitNetworking
//
//  Created by Danh Tu on 10/10/2021.
//

import Foundation

class CharacterViewModel: ObservableObject {
    enum State {
        case na
        case loading
        case success(data: [Character])
        case failed(error: Error)
    }
    
    @Published private(set) var state: State = .na
    
    private let service: CharacterService
    
    init(service: CharacterService) {
        self.service = service
    }
    
    func getCharacters() async {
        self.state = .loading
        
        do {
            let characters = try await service.fetchCharacters()
            self.state = .success(data: characters)
        } catch {
            self.state = .failed(error: error)
        }
    }
}
