//
//  Button.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 7/20/26.
//

import SwiftUI

struct ContinueLessonButton: View {
    
    let size: Double
    
    var body: some View {
        Text("Continue lesson →")
            .background(
                RoundedRectangle(cornerRadius: size)
                    .fill(.yellow)
                    .frame(width: 160, height: 40)
            )
            .padding(.leading, 10)
            .fontWeight(.bold)
    }
    
}

