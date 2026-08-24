//
//  LessonNumber.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 8/24/26.
//

import SwiftUI

struct LessonNumber: View {
    
    var lessonNumber: Int
    
    var body: some View {
        
        ZStack {
            Circle()
                .fill(Color("Accent"))
                .frame(width:30, height:30)
            Text("\(lessonNumber)")
                .font(.custom("Newsreader14pt-SemiBold",size:15))
        }

        
    }
}

#Preview {
    LessonNumber(lessonNumber: 1)
}
