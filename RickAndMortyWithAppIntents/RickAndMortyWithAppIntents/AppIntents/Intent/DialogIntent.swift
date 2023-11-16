//
//  DialogIntent.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 13.11.2023.
//

import Foundation
import AppIntents

struct DialogIntent: AppIntent {
    
    static var title: LocalizedStringResource = "Show message"
    
    @MainActor
    func perform() async throws -> some ProvidesDialog {
        // 1 Простое сообщение:
        // let dialog = IntentDialog("Это простое сообщение для Siri, чтобы показать пользователю.")
        
        // 2 Сообщение с поддержкой:
        // let dialog = IntentDialog(full: "Полное сообщение, видимое пользователю или произносимое Siri.",
        //                                  supporting: "Дополнительное сообщение, которое может использоваться в визуальном интерфейсе.")
        
        // 3 С использованием интерполяции строк:
        let userName = "Игорь"
        let dialog = IntentDialog("Привет, \(userName)! Как я могу помочь?")
        
        
        // Возвращаем диалоговый результат
        return .result(dialog: dialog)
    }
}

// ProvidesDialog: Если ваш интент реализует этот протокол, вы можете возвращать более сложные результаты, включая диалоговые окна с пользовательскими сообщениями.
