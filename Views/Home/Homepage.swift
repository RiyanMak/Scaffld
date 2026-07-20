//
//  Homepage.swift
//  Scaffld
//
//  Created by Riyan Maknojia on 7/13/26.
//

import SwiftUI

struct HomepageView: View {
    
    var body: some View {
        Text("Hi, Riyan")
            .frame(maxWidth: 380, maxHeight: 50, alignment: .topLeading)
            .font(.system(size: 35))
            .fontWeight(.bold)
        
        
        
        //all the page contents will go here
        ScrollView(.vertical){
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
                            
                            
                                
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .frame(width: 380, height: 100, alignment: .top)
    

            }


            }
        }
    }


#Preview {
    HomepageView()
}
