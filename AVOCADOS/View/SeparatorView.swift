//
//  SeparatorView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct SeparatorView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
          HStack {
            Divider()
          }
          
          Image(systemName: "heart.circle")
            .font(Font.title.weight(.ultraLight))
            .imageScale(.large)
          
          HStack {
            Divider()
          }
        }
    }
}

struct SeparatorView_Previews: PreviewProvider {
    static var previews: some View {
        SeparatorView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
