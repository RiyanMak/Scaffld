//
//  Homepage.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 7/13/26.
//

import SwiftUI

struct HomepageView: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
                
            NavigationStack(path: $path){
            
                //all the page contents will go here
                ScrollView(.vertical){
                    
                        Text("Hola, Riyan")
                            .frame(maxWidth: 380, maxHeight: 80, alignment: .topLeading)
                            .font(.custom("Newsreader14pt-SemiBold", size: 35))
                            .padding(.top, 20)
                            .padding(.leading, 20)
                        Text("Day 3 · Spanish")
                            .frame(maxWidth: 380, maxHeight: 80, alignment: .leading)
                            .font(.custom("Newsreader14pt-Regular", size: 15))
                            .padding(.leading, 20)
                            .padding(.bottom, 20)
                    
                        
                        GroupBox{
                            VStack(alignment: .leading){
                                Text("CONTINUE WHERE YOU LEFT OFF")
                                    .font(.system(size: 10, weight: .semibold))
                                    .tracking(1.4)
                                    .foregroundStyle(.inkFaint)
                                    .padding(.bottom, 4)
                                Text("Greetings")
                                    .font(.custom("Newsreader14pt-Medium", size: 25))
                                    .fontWeight(.medium)
                                    .foregroundStyle(.ink)
                                    .padding(.bottom, 2)
                                Text("2 of 4 words learned")
                                    .font(.custom("Newsreader14pt-Regular", size:15))
                                    .fontWeight(.regular)
                                    .foregroundStyle(.inkMuted)
                                ProgressBarView(progress:0.5)
                                    .padding(.bottom, 4)
                                ContinueLessonButton() {}
                
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: 360, maxHeight: 220)
                        .backgroundStyle(Color.surface)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.cardBorder, lineWidth: 2)
                        )
            
                    }
                    .background(Color.paper.ignoresSafeArea())
                    .navigationDestination(for: String.self) { currentLesson in LessonPageView(lessonId: currentLesson)}
                
                }

        }

    }


#Preview {
    HomepageView()
}
