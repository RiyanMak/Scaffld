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
    var trackColor: Color = Color.gray.opacity(0.2)
    var fillColor: Color = .yellow

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: height / 2)
                    .fill(trackColor)

                RoundedRectangle(cornerRadius: height / 2)
                    .fill(fillColor)
                    .frame(width: geometry.size.width * progress)
            }
        }
        .frame(height: height)
    }
}

