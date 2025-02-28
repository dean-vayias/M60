//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by Dean Vayias on 4/22/23.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                
            
            HStack {
                
                // Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                Spacer()
                
                // Text
                VStack (alignment: .leading, spacing: 10) {
                    
                    // Headline
                    Text(title)
                        .bold()
                    
                    // Description
                    Text(description)
                        .padding(.bottom, 20)
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                    
                    // Icons
                    HStack {
                        
                        // Number of lessons/questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(count)
                            .font(Font.system(size: 10))
                        
                        Spacer()
                
                        
                    }
                }
                .padding(.leading, 20)
            }
            .padding(.horizontal, 20)
            
        }
        
        
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "ReadingMusic", title: "some title", description: "some description", count: "10 Lessons")
    }
}
