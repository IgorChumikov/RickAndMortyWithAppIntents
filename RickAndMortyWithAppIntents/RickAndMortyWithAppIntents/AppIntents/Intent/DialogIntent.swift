//
//  DialogIntent.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 13.11.2023.
//

import Foundation
import AppIntents

struct DialogIntent: AppIntent {
    
    static var title: LocalizedStringResource = "Get Numbers"

    func perform() async throws -> some ProvidesDialog {
        // Создаем диалог с числами
        let dialog = IntentDialog("Первое число: 1, Второе число: 2, Третье число: 3, Четвертое число: 4.")
        // Возвращаем диалоговый результат
        return .result(dialog: dialog)
    }
}

