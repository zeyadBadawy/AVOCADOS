//
//  RipeningStagesView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: PROPERTIES
    var ripenings = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
              Spacer()
              HStack(alignment: .center, spacing: 25) {
                ForEach(ripenings) { item in
                  RipeningStageView(ripening: item)
                }
              }
              .padding(.vertical)
              .padding(.horizontal, 25)
              Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
