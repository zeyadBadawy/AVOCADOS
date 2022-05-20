//
//  ContentView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    var headers = headersData
    var facts = factsData
    var recipes = recipesData
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false ) {
            VStack(alignment: .center, spacing: 20) {
                //MARK: HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers , id:\.self.id ) { item in
                            HeaderView(header: item)
                        }
                    }//: HStack
                    
                }//: ScrollView
                //MARK: DISHES
                Text("Avocados Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .padding()
                
                //MARK: Facts View
                Text("Avocados Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                                .padding(.leading , 60)
                                .padding(.trailing , 20)
                                .padding(.vertical)
                        }
                    }
                }
                
                //MARK: RECIPES
                Text("Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
               
                VStack(alignment: .center, spacing: 12) {
                        ForEach(recipes , id: \.self.id) { item in
                            RecipeCardView(recipe:item )
                        }
                    }
                    .padding()
                
                //MARK: FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        
                }//: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom , 85)
            }//: VStack
        }//: ScrollView
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

struct TitleModifier:ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
