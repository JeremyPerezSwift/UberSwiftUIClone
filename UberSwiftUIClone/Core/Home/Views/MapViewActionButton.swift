//
//  MapViewActionButton.swift
//  UberSwiftUIClone
//
//  Created by Jérémy Perez on 01/11/2023.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var mapState: MapViewState
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                actionForState(mapState)
            }
        }, label: {
            Image(systemName: imageNameForState(mapState))
                .font(.title2)
                .foregroundStyle(Color.black)
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 6)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func actionForState(_ state: MapViewState) {
        switch state {
        case .noInput:
            print("DEBUG: No input")
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected:
            mapState = .noInput
        }
    }
    
    func imageNameForState(_ state: MapViewState) -> String {
        switch state {
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected:
            return "arrow.left"
        }
    }
    
}
