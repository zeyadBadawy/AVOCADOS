//
//  DishesView.swift
//  AVOCADOS
//
//  Created by Zeyad Badawy on 20/05/2022.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                RowItemView(icon: "icon-toasts", text: "Toasts")
                RowItemView(icon: "icon-tacos", text: "Tacos")
                RowItemView(icon: "icon-salads", text: "Salads")
                RowItemView(icon: "icon-halfavo", text: "Spreads")
            }
            SeparatorView()
            VStack(alignment: .leading, spacing: 4) {
                RowItemView(icon: "icon-guacamole", text: "Guacamole")
                RowItemView(icon: "icon-sandwiches", text: "Sandwich")
                RowItemView(icon: "icon-soup", text: "Soup")
                RowItemView(icon: "icon-smoothies", text: "Smoothie")
            }
        }
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
            .padding()
    }
}
