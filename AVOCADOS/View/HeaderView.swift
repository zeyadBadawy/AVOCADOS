//
//  HeaderView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK: PROPERTIES
    @State private var showHeadline:Bool = false
    var header:Header

    var slideInAnimation:Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    //MARK: BODY
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .scaledToFill()
            
            HStack(alignment: .top, spacing: 0) {
                
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width:4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif)).fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .foregroundColor(.white)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .shadow(radius: 3)
                }//: VStack
                .padding(.horizontal , 20)
                .padding(.vertical , 0)
                .frame(width: 281, height: 105, alignment: .center)
                .background(Color("ColorBlackTransparentLight"))
                
            }//: HStack
            .frame(width: 281, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(self.slideInAnimation, value: showHeadline)
            .onAppear {
                showHeadline.toggle()
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
        
    }//: ZStack
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[0])
            .previewLayout(.sizeThatFits)
    }
}
