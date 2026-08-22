//
//  Button.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 7/20/26.
//

import SwiftUI

struct ContinueLessonButton: View {
    
    var action: () -> Void
    
    var body: some View {
        
        GroupBox {
            Text("Continue lesson →")
                .font(.custom("Newsreader14pt-Medium", size:17))
                .fontWeight(.medium)
                .frame(maxWidth:.infinity)
                .foregroundStyle(Color("ButtonLabel"))
                .onTapGesture {
                    action()
                }
                
        }
        .backgroundStyle(Color.buttonFill)
        .frame(width: 300, height: 80)

    }
        
    
}

#Preview {
    ContinueLessonButton() {}
}
