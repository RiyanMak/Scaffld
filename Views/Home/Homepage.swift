//
//  Homepage.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 7/13/26.
//

import SwiftUI

struct HomepageView: View {
    
    var body: some View {
        Text("Hi, User")
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .font(.custom("TrebuchetMS-bold", size: 35))
    }

    
}

#Preview {
    HomepageView()
}
