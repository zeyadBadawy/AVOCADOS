//
//  SettingsView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @State private var enableNotfication = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack {
            VStack(spacing:5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(.top)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .fontWeight(.bold)
                .modifier(TitleModifier())
            }//: VStack
            .padding(.top ,50)
            
            //MARK: FORM
            Form {
                // MARK: - SECTION #1
                Section {
                    Toggle(isOn: $enableNotfication) {
                        Text("Enable  Notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background  Refresh")
                    }
                } header: {
                    Text("General Settings")
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                  if enableNotfication {
                    HStack {
                      Text("Product").foregroundColor(Color.gray)
                      Spacer()
                      Text("Avocado Recipes")
                    }
                    HStack {
                      Text("Compatibility").foregroundColor(Color.gray)
                      Spacer()
                      Text("iPhone & iPad")
                    }
                    HStack {
                      Text("Developer").foregroundColor(Color.gray)
                      Spacer()
                      Text("Zeyad Badawy")
                    }
                    HStack {
                      Text("Designer").foregroundColor(Color.gray)
                      Spacer()
                      Text("Robert Petras")
                    }
                    HStack {
                      Text("Website").foregroundColor(Color.gray)
                      Spacer()
                      Text("@zeyadtaher5")
                    }
                    HStack {
                      Text("Version").foregroundColor(Color.gray)
                      Spacer()
                      Text("1.0.0")
                    }
                  } else {
                    HStack {
                      Text("Personal message").foregroundColor(Color.gray)
                      Spacer()
                      Text("👍 Happy Coding!")
                    }
                  }
                }
            }
            .edgesIgnoringSafeArea(.all
            )
            
            Spacer()
        }//: VStack
        .frame(maxWidth:640)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
