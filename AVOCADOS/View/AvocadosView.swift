//
//  AvocadosView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: PROPERTIES
    @State private var isPulsateAnimation:Bool = false
    //MARK: BODY
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 0)
                .scaleEffect(isPulsateAnimation ? 1 : 0.9)
                .opacity(isPulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isPulsateAnimation)
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42 , design: .serif)).fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 0)
                Text("""
Creamy, green, and full of nutrients!
Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth:640 , minHeight: 120)
                
            }
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.isPulsateAnimation.toggle()
        }
    }
}
//MARK: PREVIEW
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
