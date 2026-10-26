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
        Button(action: action) {
            Text("Continue lesson →")
                .font(.custom("Newsreader14pt-Medium", size: 17))
                .foregroundStyle(Color.buttonLabel)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .background(Color.buttonFill, in: RoundedRectangle(cornerRadius: 8))
        }
        .buttonStyle(PressableButtonStyle())
    }
}

// dims + shrinks slightly while a finger is down, since .plain gives no feedback
private struct PressableButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.8 : 1)
            .scaleEffect(configuration.isPressed ? 0.98 : 1)
            .animation(.easeOut(duration: 0.12), value: configuration.isPressed)
    }
}

#Preview {
    ContinueLessonButton {}
        .padding()
        .background(Color.paper)
}
