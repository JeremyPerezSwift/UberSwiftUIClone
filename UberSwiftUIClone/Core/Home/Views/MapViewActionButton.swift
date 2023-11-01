//
//  MapViewActionButton.swift
//  UberSwiftUIClone
//
//  Created by Jérémy Perez on 01/11/2023.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearchView: Bool
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                showLocationSearchView = false
            }
        }, label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundStyle(Color.black)
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 6)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
