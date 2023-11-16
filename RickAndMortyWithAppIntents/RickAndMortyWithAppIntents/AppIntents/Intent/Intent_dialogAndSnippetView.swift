//
//  Intent_dialogAndSnippetView.swift
//  RickAndMortyWithAppIntents
//
//  Created by Игорь Чумиков on 16.11.2023.
//

import Foundation
import AppIntents
import SwiftUI

struct Intent_dialogAndSnippetView: AppIntent {
    
    // Название интента для отображения в приложении.
    static var title: LocalizedStringResource = "In-app Intent dialogAndSnippetView"

    // Описание интента, помогающее пользователю понять его функционал.
    static var description = IntentDescription("dialogAndSnippetView")

    // Указывает, не требуется ли открывать приложение при активации интента.
    static var openAppWhenRun: Bool = false

    // Основная функция интента, выполняющаяся при его активации.
    func perform() async throws -> some ProvidesDialog & ShowsSnippetView {
        
        // Возвращает результат выполнения интента: диалоговое окно и представление.
        return .result(
            dialog: "This is a dialog", // Текст диалогового окна.
            view: DisplayTextView(viewStr: "This is a new view") // Представление со строкой.
        )
    }
}
