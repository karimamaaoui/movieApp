//
//  SplashScreenView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 27/4/2024.
//

import SwiftUI
import Lottie

struct SplashScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        LottieView(animationFileName: "cinema", loopMode: .loop)
                            .frame(width: 270, height: 200)
                        .padding(.top, 24)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Start")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 160, height: 60)
                            .background(Color.red)
                            .cornerRadius(12)
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    SplashScreenView()
}
