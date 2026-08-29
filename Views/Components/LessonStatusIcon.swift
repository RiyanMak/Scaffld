//
//  LessonStatusIcon.swift
//  Scaffld
//

import SwiftUI

struct LessonStatusIcon: View {

    var isLocked: Bool

    var body: some View {
        Image(systemName: isLocked ? "lock" : "chevron.right")
            .font(.system(size: isLocked ? 16 : 18, weight: .light))
            .foregroundStyle(isLocked ? Color.inkMuted : Color.inkFaint)
    }
}

#Preview {
    VStack(spacing: 20) {
        LessonStatusIcon(isLocked: true)
        LessonStatusIcon(isLocked: false)
    }
    .padding()
    .background(Color.paper)
}
