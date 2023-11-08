//
//  Location.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 08.11.2023.
//

import Foundation

// MARK: - Character

public struct Location: Codable {
    // MARK: - Properties
    
    public let name: String
    public let url: String
    
    // MARK: - Init
    
    public init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}
