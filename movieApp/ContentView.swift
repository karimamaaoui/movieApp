//
//  ContentView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 26/4/2024.
//

import SwiftUI
import Firebase
import FirebaseAuth


struct ContentView: View {
    @ObservedObject var viewModel = MovieListViewModel()

    @State private var selectedIdx = 0
   // @State private var options = ["Login", "Create Account"]
    @State private var emailTextField = ""
    @State private var passwordTextField = ""
    @State private var isClicked = false
    
    init() {
        FirebaseApp.configure()

    }
    var body: some View {
        
        NavigationStack() {
            
            ScrollView  {
                
                
                VStack {
                    Spacer()
                    VStack (spacing : 12){
                        Text("Login here")
                                     .font(.system(size: 30, weight: .bold))
                                     .foregroundColor(.red)
                                     .padding(.bottom)
                                 
                                 Text("Welcome back you've been missed!")
                                     .font(.system(size: 16, weight: .bold))
                                     .foregroundColor(.white)
                                     .multilineTextAlignment(.center).padding(.bottom , 80)
                                 
                                 TextField("Email", text: $emailTextField)
                                 .padding()
                                 .background(Color("blueSecond"))
                                 .cornerRadius(12)
                                 .background(
                                     RoundedRectangle(cornerRadius: 12)
                                         //.stroke(Color(isValidEmail ? "primaryBlue" : "secondaryBlue"), lineWidth: 3)
                                 ).padding(.horizontal)
                        Spacer()

                        SecureField("Passowrd" , text: $passwordTextField)
                                     .padding()
                                     .background(Color("blueSecond"))
                                     .cornerRadius(12)
                                     .background(
                                         RoundedRectangle(cornerRadius: 12)
                                     
                                         //.stroke(!isValidPassword ? .red :focusedField ==.passowrd ? Color("primaryBlue"): .white , lineWidth: 3)
                                                )
                                     .padding(.horizontal)
                        Spacer()

                    }
                }

                Button(action: {
                    login()
                } , label: {
                               Text("Login")
                        .foregroundColor(.white)
                                   .font(.system(size: 20 , weight: .semibold))
                               
                           })
                .foregroundColor(.white)
                .font(.system(size: 20 , weight: .semibold))
                .padding()
                .frame(maxWidth: .infinity)
                .background(.red)
                .cornerRadius(12)
                .padding(.horizontal)
              
                HStack {
                   
                    
                    Button(action:{
                       isClicked = true
                    },label: {
                        Text("Register")
                    })
                    .fullScreenCover(isPresented: $isClicked, content: {
                        RegisterView()
                    })
                    
        
                    
                }
                
                BottomView(googleAction: {}, facebookAction: {}, appleAction: {})

            } .background(Color.black)
        }
        
        }
        func login() {
        Auth.auth().signIn(withEmail: emailTextField, password: passwordTextField) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success login")
                UserDefaults.standard.set(emailTextField,forKey: "email")
                openn()

            }
        }
            
            
    }
    
private func openn()
  {
     if let window = UIApplication.shared.windows.first {
          window.rootViewController = UIHostingController(rootView : HomeView())
          window.makeKeyAndVisible()
      }
      

  }
    
     
    
    
}


#Preview {
    ContentView()
}



