//
//  ContentView.swift
//  Patience
//
//  Created by  Ixart on 24/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var offsetY1: CGFloat = 3
    @State private var offsetY2: CGFloat = 2
    @State private var offsetY3: CGFloat = 3
    @State private var showNewButton = false
    @State private var isAnimating = true


    var body: some View {
        VStack {
            if !showNewButton {
                Button(action: {
                    withAnimation {
                        showNewButton = true
                    }
                }) {
                    VStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 150, height: 80)
                                .foregroundColor(.gray.opacity(0.3))
                                .cornerRadius(20)
                            
                            HStack {
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .offset(y: offsetY1)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .offset(y: offsetY2)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .offset(y: offsetY3)
                            }
                        }
                        Text("Arrêter")
                    }
                }
            } else {
                NewButtonView()
            }
        }
        .onAppear {
            if isAnimating {
                withAnimation(Animation.easeInOut(duration:0.34).repeatForever(autoreverses: true)) { offsetY1 = -10 }
                withAnimation(Animation.easeInOut(duration:0.35).repeatForever(autoreverses: true)) { offsetY2 = -10 }
                withAnimation(Animation.easeInOut(duration:0.36).repeatForever(autoreverses: true)) { offsetY3 = -10 }
            } // FIN ISANIMATING
        }// FIN ONAPPER
    } // FIN BODY
} // FIN STRUCT



struct NewButtonView: View {
    var body: some View {
        Button("commencer ") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        Text("")
        
        
        
        
        
    }// FIN BODY
} // FIN STRUCT












#Preview {
    ContentView()
}
