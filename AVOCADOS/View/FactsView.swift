//
//  FactsView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct FactsView: View {
    var fact:Fact
    //MARK: PROPERTIES
    //MARK: BODY
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading , 55)
                .padding(.trailing , 10)
                .padding(.vertical , 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(colors: [Color("ColorGreenMedium") , Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .cornerRadius(12)
                .font(.system(.footnote))
                .lineLimit(6)
            .multilineTextAlignment(.leading)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(colors: [Color("ColorGreenMedium") , Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90 , height: 90, alignment: .center)
                )
                .offset(x: -150)
            
        }//: ZStack
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factsData[0])
            .previewLayout(.fixed(width: 400, height: 220))
            .padding()
    }
}
