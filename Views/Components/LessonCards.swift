//
//  LessCardView.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 8/29/26.
//

import SwiftUI

struct LessonCardView: View{
    var isLocked: Bool = false
    let CurrentLesson: String
    
    
    var body: some View {
        HStack{
            LessonNumber(lessonNumber: 1, isLocked: false)
            VStack (alignment: .leading) {
                Text(CurrentLesson)
                    .font(.custom("Newsreader14pt-Medium", size: 20))
                    .fontWeight(.medium)
                    .foregroundStyle(.ink)
                
                Text(isLocked ? "Locked": "In Progress")
                    .font(.custom("Newsreader14pt-Regular", size:15))
                    .fontWeight(.regular)
                    .foregroundStyle(.inkMuted)
            }
            .frame(maxWidth: 100, maxHeight: 100)
            
            Spacer()
            
            LessonStatusIcon(isLocked: false)
            
            //Hstack ending
            }
            .frame(maxWidth: 350)
            .padding(.bottom, 15)
    }
    
}

#Preview {
    LessonCardView(isLocked: true, CurrentLesson: "Greetings")
}
