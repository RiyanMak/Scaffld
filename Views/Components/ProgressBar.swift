//
//  ProgressBarView.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 7/20/26.
//

import SwiftUI

struct ProgressBarView: View {

    let progress: Double        // 0.0 to 1.0
    var height: CGFloat = 6
    var trackColor: Color = .rule
    var fillColor: Color = .accent

    // keeps the fill inside the track even if progress comes in as -0.2 or 1.5
    private var clampedProgress: Double {
        min(max(progress, 0), 1)
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: height / 2)
                    .fill(trackColor)

                RoundedRectangle(cornerRadius: height / 2)
                    .fill(fillColor)
                    .frame(width: geometry.size.width * clampedProgress)
            }
        }
        .frame(height: height)
        .accessibilityElement()
        .accessibilityLabel("Progress")
        .accessibilityValue("\(Int(clampedProgress * 100)) percent")
    }
}

#Preview {
    VStack(spacing: 20) {
        ProgressBarView(progress: 0.5)
        ProgressBarView(progress: 1.4)
    }
    .padding()
    .background(Color.paper)
}
