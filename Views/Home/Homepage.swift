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
                    .frame(maxWidth: 380, maxHeight: 50, alignment: .topLeading)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                
                
                VStack(alignment: .leading){
                    
                    //Groupbox for the Where you left off
                    GroupBox(label: Text("CONTINUE WHERE YOU LEFT OFF")
                        .font(.system(size: 15))
                        .fontWeight(.bold)){
                        
                            
                            VStack(alignment: .leading){
                                //render the lesson where you left off
                                Text("Lesson 3 · Family & People")
                                    .font(.system(size:20))
                                    .padding(.top, 3)
                                Text("6 of 12 words learned")
                                
                                ProgressBarView(progress: 0.60)
                                    .padding(.bottom, 8)
                                ContinueLessonButton(size: 10, action: {
                                    path.append("lesson3")
                                })
                                
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    .frame(width: 380, alignment: .top)
                    
                    //Groupbox for the Where you left off
                    GroupBox(label: Text("CONTINUE WHERE YOU LEFT OFF")
                        .font(.system(size: 15))
                        .fontWeight(.bold)){
                    }
                    .frame(width: 380, alignment: .leading)
                    
            

                }
                .frame(maxWidth:.infinity, maxHeight:.infinity)


                }
            .navigationDestination(for: String.self) { currentLesson in
                LessonPageView(lessonId: currentLesson)
            }
            
            }


        }
    }


#Preview {
    HomepageView()
}
