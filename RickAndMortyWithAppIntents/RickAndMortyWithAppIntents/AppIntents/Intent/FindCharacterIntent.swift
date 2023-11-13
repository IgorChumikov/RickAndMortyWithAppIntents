////
////  FindCharacterIntent.swift
////  RickAndMortyWithAppIntents
////
////  Created by Игорь Чумиков on 13.11.2023.
////
//
//import Foundation
//import AppIntents
//
//struct FindCharacterIntent: AppIntent {
//    static var title: LocalizedStringResource = "Найдите персонажа"
//    
//    @Parameter(title: "Character Name")
//    var characterName: String
//
//    @MainActor
//       func perform() async throws -> some ProvidesDialog {
//           let service: Service = Service()
//           
//           let characters = await service.getCharacterByName(characterName: characterName)
//           if let character = characters.first {
//               return   .result(dialog:"Character name \"\(character.name)\"")
//           } else {
//               return .result(dialog: .init("Нет такого"))
//           }
//       }
//}
