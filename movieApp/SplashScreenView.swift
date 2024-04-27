//
//  SplashScreenView.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 27/4/2024.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
                NavigationView {
                    VStack {
                        Image("work-from-home")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 370, height: 300)
                            .padding(.top,24)
                        Spacer()
                        Text("Discover You Dream Job Here")
                            .font(.system(size: 35 , weight:.bold))
                            .multilineTextAlignment(.center).foregroundColor(Color("primaryBlue")).padding(.bottom, 8)
                        Text("Explore all the existing jbo roles based on your interst and study major").font(.system(size: 14 , weight:.regular)).multilineTextAlignment(.center).foregroundColor(.black)
                            
                        Spacer()
                        HStack (spacing: 12){
                           
                             NavigationLink(destination: ContentView()){
                            
                                 Text("Start").font(.system(size: 20, weight: .semibold)).foregroundColor(.white)
                            }
                                .frame(width: 160, height: 60).background(Color("primaryBlue")).cornerRadius(12)
                            
                            .frame(width: 160, height: 60)
                        }
                        
                        Spacer()
                     
                        
                        }
                    .padding()
                    .navigationBarHidden(true)
                    
                        
                                
                }
            }
        }

#Preview {
    SplashScreenView()
}
