//
//  GreetingView.swift
//  Apple-FrameWorks
//
//  Created by Egor Mironov on 07.04.2024.
//

import SwiftUI

struct GreetingView: View {
    @State private var isAnimating = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.gray, Color.black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea(.all)
                VStack {
                    Image(systemName: "globe.europe.africa")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaleEffect(isAnimating ? 0.5 : 1.0)
                        .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                        .onAppear {
                            isAnimating = true
                        }
                    Text("Добро пожаловать")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.top, 100)
                    Spacer()
                    NavigationLink(destination: FrameworkGridView()) {
                        Text("Продолжить")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .frame(width: 200, height: 50)
                                .background(Color.white)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                                .padding(.bottom, 100)
                        }
                }
            }
        }
    }
}


struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}


