//
//  ContentView.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 1/11/26.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    //instance declared here to be reusable
    let synthesizer = AVSpeechSynthesizer()
    

    var vocab = [
          "Hola": "Hello",
          "Adiós": "Goodbye",
          "Gracias": "Thank you",
          "Por favor": "Please",
          "Sí": "Yes",
          "No": "No",
          "Buenos días": "Good morning",
          "Buenas noches": "Good night",
          "¿Cómo estás?": "How are you?",
          "Bien": "Good/Well",
          "Mal": "Bad/Badly",
          "Yo": "I/Me",
          "Tú": "You",
          "Nosotros": "We/Us",
          "Agua": "Water",
          "Comida": "Food",
          "Casa": "House/Home",
          "Amigo": "Friend",
          "Familia": "Family",
          "Trabajo": "Work/Job",
          "Dinero": "Money",
          "Tiempo": "Time",
          "Mucho": "Much/A lot",
          "Poco": "Little/Few",
          "Grande": "Big/Large",
          "Pequeño": "Small"
      ]
    
    var body: some View {
        
        
        displayFlashcards()
        
    }
        

    func displayFlashcards () -> some View {
        
        
        ForEach(Array(vocab), id: \.key){ key, value in
            GroupBox(label: Text("Vocab Flashcard") .padding(.bottom, 50)
            ){
                //flashcard contents
                VStack (spacing: 40){
                    Text(key)
                    Text(value)
                    Button("Speak", action: { speak(word: key)})
                }
                
            }
            .frame(width:300, height:300)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color.gray)
        }
    }
        
    
    //for speaking the word and using the library
    func speak (word: String) {
        let utterance = AVSpeechUtterance(string: word)
        synthesizer.speak(utterance)
        
    }
    

}

#Preview {
    ContentView()
}
