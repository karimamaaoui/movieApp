//
//  RegisterView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 26/4/2024.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct RegisterView: View {
    @State private var passwordTextField = ""
    @State private var emailTextField = ""

    init() {
        FirebaseApp.configure()

    }
    var body: some View {
        Text("Hello, Register")
    }
}

#Preview {
    RegisterView()
}
