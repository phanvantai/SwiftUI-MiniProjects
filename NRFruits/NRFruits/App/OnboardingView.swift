//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Tai Phan Van on 02/08/2021.
//  Copyright © 2021 November. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [FruitModel] = fruitData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { index in
                FruitCardView(fruit: fruits[index])
            } //: Loop
            
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
