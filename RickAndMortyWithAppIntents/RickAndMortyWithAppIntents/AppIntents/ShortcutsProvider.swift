//
//  ShortcutsProvider.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 13.11.2023.
//

import Foundation
import AppIntents

struct ShortcutsProvider: AppShortcutsProvider {
    
    @AppShortcutsBuilder
    static var appShortcuts: [AppShortcut] {
        // Этот интент просто открывает приложение, специфические действия не требуются.
        AppShortcut(intent: OpenAppIntent(), phrases: [
            "Open Rick and Morty",
            "Hey Siri, start Rick and Morty app"
        ],
                    shortTitle: "Open Rick and Morty",
                    systemImageName: "tv"
        )
        
        // Выводит числа с низу экрана
        AppShortcut(intent: DialogIntent(), phrases: [
            "Hey Siri, show numbers in \(.applicationName)"
        ],
        shortTitle: "Show Numbers",
        systemImageName: "number")
    }
}
