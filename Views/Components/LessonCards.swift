//
//  LessCardView.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 8/29/26.
//

import SwiftUI

struct LessonCards: View{
    var isLocked: Bool
    let currentLesson: String
    let lessonNumber: Int
    
    
    var body: some View {
        HStack{
            LessonNumber(lessonNumber: lessonNumber, isLocked:isLocked)
            VStack (alignment: .leading) {
                Text(currentLesson)
                    .font(.custom("Newsreader14pt-Medium", size: 20))
                    .fontWeight(.medium)
                    .foregroundStyle(.ink)
                
                Text(isLocked ? "Locked": "In Progress")
                    .font(.custom("Newsreader14pt-Regular", size:15))
                    .fontWeight(.regular)
                    .foregroundStyle(.inkMuted)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            LessonStatusIcon(isLocked: isLocked)
            
            //Hstack ending
            }
            .frame(maxWidth: 350)
            .padding(.bottom, 15)
    }
    
}

