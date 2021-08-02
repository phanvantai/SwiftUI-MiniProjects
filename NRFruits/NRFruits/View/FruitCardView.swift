//
//  FruitCardView.swift
//  FruitCardView
//
//  Created by Tai Phan Van on 02/08/2021.
//  Copyright © 2021 November. All rights reserved.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimate: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimate ? 1.0 : 0.6)
                // title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // headline
                Text("Blueberries are sweet, nutritious and wildy popular fruit all over the world")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // button start
                StartButtonView()
                
                
            }//: VStack
        }//: ZStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimate = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitCardView()
        }
    }
}
