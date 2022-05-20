//
//  RowItemView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct RowItemView: View {
    //MARK: PROPERTIES
    var icon:String
    var text:String
    //MARK: BODY
    var body: some View {
        VStack {
            HStack {
                Image(icon)
                    .resizable()
                    .modifier(IconModifier())
                Spacer()
                Text(text)
            }//: HStack
            Divider()
        }//: VStack
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
    }
}

struct RowItemView_Previews: PreviewProvider {
    static var previews: some View {
        RowItemView(icon: "icon-guacamole", text: "Toasts")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct IconModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(width: 42, height: 42, alignment: .center)
  }
}
