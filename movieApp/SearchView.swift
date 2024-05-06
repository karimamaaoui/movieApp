//
//  SearchView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 3/5/2024.
//


import SwiftUI

struct SearchView: View {
    @State var txt=""
    var body: some View {
        HStack (spacing: 15) {
            Image("magnifyingglass").font(.body)
            TextField("Search Movie",text: $txt)
        }.padding()
            .foregroundColor(.black)
            .background(.blueSecond).cornerRadius(20)
    }
}

#Preview {
    SearchView()
}
