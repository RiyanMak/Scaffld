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
    
    struct vocabCard {
        let spanish: String
        let english: String
    }
    
    var vocabArray: [vocabCard] = [
        vocabCard(spanish: "Hola", english: "Hello"),
        vocabCard(spanish: "Adiós", english: "Goodbye"),
        vocabCard(spanish: "Gracias", english: "Thank you"),
        vocabCard(spanish: "Por favor", english: "Please"),
        vocabCard(spanish: "Sí", english: "Yes"),
        vocabCard(spanish: "No", english: "No"),
        vocabCard(spanish: "Buenos días", english: "Good morning"),
        vocabCard(spanish: "Buenas noches", english: "Good night"),
        vocabCard(spanish: "¿Cómo estás?", english: "How are you?"),
        vocabCard(spanish: "Bien", english: "Good/Well"),
        vocabCard(spanish: "Mal", english: "Bad/Badly"),
        vocabCard(spanish: "Yo", english: "I/Me"),
        vocabCard(spanish: "Tú", english: "You"),
        vocabCard(spanish: "Nosotros", english: "We/Us"),
        vocabCard(spanish: "Agua", english: "Water"),
        vocabCard(spanish: "Comida", english: "Food"),
        vocabCard(spanish: "Casa", english: "House/Home"),
        vocabCard(spanish: "Amigo", english: "Friend"),
        vocabCard(spanish: "Familia", english: "Family"),
        vocabCard(spanish: "Trabajo", english: "Work/Job"),
        vocabCard(spanish: "Dinero", english: "Money"),
        vocabCard(spanish: "Tiempo", english: "Time"),
        vocabCard(spanish: "Mucho", english: "Much/A lot"),
        vocabCard(spanish: "Poco", english: "Little/Few"),
        vocabCard(spanish: "Grande", english: "Big/Large"),
        vocabCard(spanish: "Pequeño", english: "Small"),
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
