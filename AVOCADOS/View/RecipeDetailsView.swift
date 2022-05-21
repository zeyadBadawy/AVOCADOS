//
//  RecipeDetailsView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct RecipeDetailsView: View {
    //MARK: PROPERTIES
    var recipe:Recipe
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing:16) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .background(Color.white)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
                
                Text(recipe.title)
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                RecipeRatingView(recipe: recipe)
                
                RecipeCookingView(recipe: recipe)
                
                //MARK: INGREDIENS
                Text("Ingrediens")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(recipe.ingredients , id: \.self) { item in
                        Text(item)
                            .font(.footnote)
                        Divider()
                    }
                }
                .padding()
                
                //MARK: INSTRUCTIONS
                Text("Instructions")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(recipe.instructions , id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            
                            HStack {
                                Spacer()
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .imageScale(.large)
                                    .font(Font.title.weight(.ultraLight))
                                    .foregroundColor(Color("ColorGreenAdaptive"))
                                Spacer()
                            }
                            
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight:100)
                        }
                    }
                }
                .padding()
                
            }//: VStack
        }//: ScrollView
        .onAppear() {
          self.pulsate.toggle()
        }
        .edgesIgnoringSafeArea(.all)
        .overlay(
            VStack {
                HStack {
                    Spacer()
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    }
                }
                Spacer()
            }
                .padding()
        )//: overlay
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: recipesData[0])
    }
}
