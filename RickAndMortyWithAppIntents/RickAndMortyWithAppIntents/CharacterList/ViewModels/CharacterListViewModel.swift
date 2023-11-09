//
//  CharacterListViewModel.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 08.11.2023.
//


import SwiftUI
import Combine

// MARK: - CharacterListViewModel

final class CharacterListViewModel: ObservableObject {
    // MARK: - Properties
    
    @Published var characters: [Character] = []
    @Published var characterName: String = "" {
        didSet {
            getCharacterName(name: characterName)
        }
    }

    // MARK: - Private properties

    private let service: Service
    
    // MARK: - Init
    
    init(service: Service) {
        self.service = service
    }
    
    // MARK: - Functions

    func getCharacters() {
        self.characters = service.getCharacters()
    }
    
    private func getCharacterName(name: String) {
        Task {
            self.characters = await service.getCharacterByName(characterName: name)
        }
    }
}
