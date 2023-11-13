//
//  Service.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 08.11.2023.
//

import Foundation
import Combine

// MARK: - Service

final class Service: Sendable {
    // Создайте базовый URL
    let baseURL = "https://rickandmortyapi.com/api/character"
    
    func getCharacters() -> [Character] {
        guard let url = URL(string: baseURL) else { return [] }
        
        let data = try? Data(contentsOf: url)
        let response = data.flatMap { try? JSONDecoder().decode(CharacterResponse.self, from: $0) }
        return response?.results ?? []
    }
    
    func getCharactersAsync() async -> [Character] {
         guard let url = URL(string: "Your API Endpoint") else { return [] }
         
         do {
             let (data, _) = try await URLSession.shared.data(from: url)
             let response = try JSONDecoder().decode(CharacterResponse.self, from: data)
             return response.results
         } catch {
             print(error)
             return []
         }
     }
    
    func getCharacterByName(characterName: String) async -> [Character] {
         let urlString = "\(baseURL)?name=\(characterName.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"
         
         guard let url = URL(string: urlString) else { return [] }
         
         do {
             let (data, _) = try await URLSession.shared.data(from: url)
             let response = try JSONDecoder().decode(CharacterResponse.self, from: data)
             return response.results
         } catch {
             print("Ошибка при выполнении запроса или разборе JSON: \(error)")
             return []
         }
     }
}
