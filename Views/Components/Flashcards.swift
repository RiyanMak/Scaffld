//
//  ContentView.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 1/11/26.
//

import SwiftUI

struct FlashcardsView: View {
    
    var vocabArray: [VocabCard] = [
        VocabCard(spanish: "Hola", english: "Hello"),
        VocabCard(spanish: "Adiós", english: "Goodbye"),
        VocabCard(spanish: "Gracias", english: "Thank you"),
        VocabCard(spanish: "Por favor", english: "Please"),
        VocabCard(spanish: "Sí", english: "Yes"),
        VocabCard(spanish: "No", english: "No"),
        VocabCard(spanish: "Buenos días", english: "Good morning"),
        VocabCard(spanish: "Buenas noches", english: "Good night"),
        VocabCard(spanish: "¿Cómo estás?", english: "How are you?"),
        VocabCard(spanish: "Bien", english: "Good/Well"),
        VocabCard(spanish: "Mal", english: "Bad/Badly"),
        VocabCard(spanish: "Yo", english: "I/Me"),
        VocabCard(spanish: "Tú", english: "You"),
        VocabCard(spanish: "Nosotros", english: "We/Us"),
        VocabCard(spanish: "Agua", english: "Water"),
        VocabCard(spanish: "Comida", english: "Food"),
        VocabCard(spanish: "Casa", english: "House/Home"),
        VocabCard(spanish: "Amigo", english: "Friend"),
        VocabCard(spanish: "Familia", english: "Family"),
        VocabCard(spanish: "Trabajo", english: "Work/Job"),
        VocabCard(spanish: "Dinero", english: "Money"),
        VocabCard(spanish: "Tiempo", english: "Time"),
        VocabCard(spanish: "Mucho", english: "Much/A lot"),
        VocabCard(spanish: "Poco", english: "Little/Few"),
        VocabCard(spanish: "Grande", english: "Big/Large"),
        VocabCard(spanish: "Pequeño", english: "Small"),
    ]
    
    var body: some View {
        let translated = vocabArray[0].english
        let targeted = vocabArray[0].spanish
        Button(translated){
            Speech(word: targeted)
            Text("test this hoe")
        }
        .foregroundStyle(.black)
        
        
        
    }

}

#Preview {
    FlashcardsView()
}
