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
            "Hey Siri, show message in \(.applicationName)"
        ],
        shortTitle: "Show Numbers",
        systemImageName: "number"
        )
        
        /*
        Второй интент Intent_dialogAndSnippetView при выполнении возвращает диалог и представление с некоторым текстом.
        Этот интент настроен так, чтобы не открывать приложение при его запуске.
         */
        AppShortcut(intent: Intent_dialogAndSnippetView(), phrases: [
            "\(.applicationName) dialogAndSnippetView"
        ],
        shortTitle: "DisplayTextIntent",
        systemImageName: "DisplayTextIntent"
        )
        
        
        AppShortcut(intent: DisplayTextIntent(), phrases: [
            "\(.applicationName) DisplayTextIntent"
        ],
        shortTitle: "DisplayTextIntent",
        systemImageName: "DisplayTextIntent"
        )
        
    }
}
