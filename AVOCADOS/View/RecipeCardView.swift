//
//  RecipeCardView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: PROPERTIES
    var recipe:Recipe
    //MARK: BODY
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
                    .overlay(
                        VStack {
                            HStack {
                                Spacer()
                                Image(systemName: "bookmark")
                                    .font(Font.title.weight(.light))
                                    .foregroundColor(.white)
                                    .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
                            }
                            Spacer()
                        }
                            .padding()
                )
                
                VStack(alignment: .leading, spacing: 12) {
                    //MARK: TITLE
                    Text(recipe.title)
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    //MARK: HEADLINE
                    Text(recipe.headline)
                        .font(.system(.body, design: .serif))
                        .foregroundColor(.gray)
                        .italic()
                    //MARK: RATE
                    RecipeRatingView(recipe: recipe)
                    
                    RecipeCookingView(recipe: recipe)
                    
                }//: VStack
                .padding()
                .padding(.bottom , 12)
            }
        }//: VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}
//MARK: PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
