//
//  LessonNumber.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 8/24/26.
//

import SwiftUI

struct LessonNumber: View {

    let lessonNumber: Int
    var isLocked: Bool = false

    var body: some View {

        ZStack {
            if isLocked {
                
                Circle()
                    .strokeBorder(Color.lockRing, lineWidth: 1)
            } else {
                Circle()
                    .fill(Color.accent)
            }

            Text("\(lessonNumber)")
                .font(.custom(isLocked ? "Newsreader14pt-Regular"
                                       : "Newsreader14pt-SemiBold",
                              size: 15))
        }
        .frame(width: 30, height: 30)
    }
}

#Preview {
    HStack(spacing: 14) {
        LessonNumber(lessonNumber: 1)
        LessonNumber(lessonNumber: 2, isLocked: true)
    }
    .padding()
    .background(Color.paper)
}
