//
//  ContentView.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 1/11/26.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State var currentIndex: Int = 0
    
    //instance declared here to be reusable
    let synthesizer = AVSpeechSynthesizer()
    
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
            displayFlashcards()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
    

    func displayFlashcards () -> some View {
    
        return VStack{
            //the actual container
            GroupBox(label: Text("Vocab Flashcard")){
                
                var currentSpanishWord: String = vocabArray[currentIndex].spanish
                
                //content inside of the container
                VStack(spacing: 20){
                    Text(vocabArray[currentIndex].spanish)
                    Text(vocabArray[currentIndex].english)
                    Button("Pronunciation", action: { speak(word: currentSpanishWord) })
                }
                
            }
            .padding(.vertical, 100)
            .frame(maxWidth: 300, maxHeight: 300)
            
            
            //logic for next and previous flashcard with arrows
            HStack{
                Button{
                    if currentIndex == 0 {
                        //for debugging remove later
                        print("You cannot go further back this is the first Flashcard")
                        return
                    }
                    currentIndex -= 1
                    
                } label:{
                    Image(systemName: "arrow.left.circle")
                }
                
                Button{
                    //for debugging remove later
                    print(currentIndex, "This is the actual current Index")
                    if currentIndex >= vocabArray.count - 1{
                        Text("You have reached the end of the Flashcards")
                        return
                    }
                    else {
                        currentIndex += 1
                        print(currentIndex, "This is the index update")
                    }
                    
                } label: {
                    Image(systemName: "arrow.right.circle")
                }
            }
            
            
        }
            
    }
    
    
    //for speaking the word and using the library
    @MainActor
    func speak (word: String) {
        let utterance = AVSpeechUtterance(string: word)
        synthesizer.speak(utterance)
        
    }
    

}

#Preview {
    ContentView()
}
