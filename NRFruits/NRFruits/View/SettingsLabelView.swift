//
//  SettingsLabelView.swift
//  NRFruits
//
//  Created by Tai Phan Van on 02/08/2021.
//  Copyright © 2021 November. All rights reserved.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }// hstack
    }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "NSFruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
