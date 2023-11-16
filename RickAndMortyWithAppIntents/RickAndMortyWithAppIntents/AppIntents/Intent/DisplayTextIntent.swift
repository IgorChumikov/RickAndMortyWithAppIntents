//
//  DisplayTextIntent.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 16.11.2023.
//

import Foundation
import AppIntents
import SwiftUI

struct DisplayTextIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Rick and Morty"
    
    // Определяет, должно ли приложение открываться, когда интент активируется.
    static var openAppWhenRun: Bool = true
    
    @Parameter(title: "View String")
    var viewStr: String?

    // Основной метод, который выполняется, когда интент активируется.
    @MainActor
    func perform() async throws -> some IntentResult {
        // Стандартная строка для демонстрации.
        let str: String = "Hello, Rambo."
        // Проверка, установлен ли параметр `viewStr`. Если нет, запрашивает его у пользователя.
        guard let viewStr = viewStr else {
            print("Exception")
            throw $viewStr.requestValue("What date would you like to use?")
        }
        // Выводит стандартную строку и значение параметра `viewStr`.
        print(str, viewStr)
        // Возвращает результат интента, который отображает строку в приложении.
        return .result() {
            DisplayTextView(viewStr: viewStr)
        }
    }
}
