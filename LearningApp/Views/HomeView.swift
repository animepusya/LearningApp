//
//  ContentView.swift
//  LearningApp
//
//  Created by Руслан Меланин on 03.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                
                ScrollView {
                    LazyVStack {
                        ForEach(model.modules) { module in
                            
                            VStack(spacing: 20) {
                                
                                HomeViewRow(image: module.content.image, title: "Learn\(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lesson", time: module.content.time)
                                
                                HomeViewRow(image: module.test.image, title: "\(module.category) Test", description: module.test.description, count: "\(module.test.questions.count) Lesson", time: module.test.time)
                                
                            } 
                        }
                    }.padding()
                }
            }.navigationTitle("Get Started")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
