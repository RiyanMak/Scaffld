//
//  Lesson.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 10/25/26.
//

import SwiftUI

enum LessonStatus {
    case locked
    case inProgress
    case completed
    
    var label: String {
        switch self {
            case .locked: return "Locked"
            case .inProgress: return "In Progress"
            case .completed: return "Completed"
        }
    }

}

struct Lesson: Identifiable{
    let id: Int
    let lessonNumber: Int
    let title: String
    let words: [VocabCard]
    let status: LessonStatus
}

// hardcoded lesson content until it comes from Supabase
extension Lesson {
    static let lessons: [Lesson] = [
        Lesson(
            id: 1,
            lessonNumber: 1,
            title: "Greetings",
            words: [
                VocabCard(spanish: "Hola", english: "Hello"),
                VocabCard(spanish: "Adiós", english: "Goodbye"),
                VocabCard(spanish: "Buenos días", english: "Good morning"),
                VocabCard(spanish: "¿Cómo estás?", english: "How are you?"),
            ],
            status: .inProgress
        ),
        Lesson(
            id: 2,
            lessonNumber: 2,
            title: "Family & People",
            words: [
                VocabCard(spanish: "Familia", english: "Family"),
                VocabCard(spanish: "Amigo", english: "Friend"),
                VocabCard(spanish: "Yo", english: "I/Me"),
                VocabCard(spanish: "Tú", english: "You"),
                VocabCard(spanish: "Nosotros", english: "We/Us"),
            ],
            status: .locked
        ),
        Lesson(
            id: 3,
            lessonNumber: 3,
            title: "Food & Drink",
            words: [
                VocabCard(spanish: "Agua", english: "Water"),
                VocabCard(spanish: "Comida", english: "Food"),
                VocabCard(spanish: "Mucho", english: "Much/A lot"),
                VocabCard(spanish: "Poco", english: "Little/Few"),
            ],
            status: .locked
        ),
    ]
}

