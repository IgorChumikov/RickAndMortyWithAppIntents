//
//  OpenAppIntent.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 13.11.2023.
//

import Foundation
import AppIntents

struct OpenAppIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Rick and Morty"

    func perform() async throws -> some IntentResult {
        // Этот интент просто открывает приложение, специфические действия не требуются.
        return .result(dialog: "Opening Rick and Morty...")
    }
}


// IntentResult: Возвращает простой результат, который может быть строкой или числом, без какого-либо дополнительного диалога.
