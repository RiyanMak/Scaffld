//
//  Speech.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 10/5/26.
//

import AVFoundation

//instance declared here to be reusable
let synthesizer = AVSpeechSynthesizer()

func Speech(word: String){
    
    let utterance = AVSpeechUtterance(string: word)
    synthesizer.speak(utterance)

}

