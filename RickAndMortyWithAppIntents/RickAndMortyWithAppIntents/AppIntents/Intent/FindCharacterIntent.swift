//
//  FindCharacterIntent.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 13.11.2023.
//

import Foundation
import AppIntents
import SwiftUI

struct FindCharacterIntent: AppIntent {
    static var title: LocalizedStringResource = "Find a Character in Rick and Morty"

    @Parameter(title: "Character Name")
    var characterName: String
    
    static var parameterSummary: some ParameterSummary {
        Summary("Find \(\.$characterName) in Rick and Morty")
    }


    func perform() async throws -> some IntentResult {
        let service: Service = Service()
        
        let characters = await service.getCharacterByName(characterName: characterName)
        
        if let character = characters.first {
            return .result(dialog: "Character \(character.name) exists in Rick and Morty.")
        } else {
            return .result(dialog: "Character \(characterName) does not exist in Rick and Morty.")
        }
    }
}
