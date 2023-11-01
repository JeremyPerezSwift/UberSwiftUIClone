//
//  LocationSearchActivationView.swift
//  UberSwiftUIClone
//
//  Created by Jérémy Perez on 01/11/2023.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack {
            
            Circle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundStyle(Color(.darkGray))
            
            Spacer()
            
        }
        .frame(width: UIScreen.main.bounds.width - 64, height: 50)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: .gray, radius: 6)
        )
        
    }
}
