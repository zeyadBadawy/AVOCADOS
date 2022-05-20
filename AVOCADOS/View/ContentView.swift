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
