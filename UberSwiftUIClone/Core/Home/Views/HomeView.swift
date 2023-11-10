//
//  HomeView.swift
//  UberSwiftUIClone
//
//  Created by Jérémy Perez on 01/11/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        ZStack(alignment: .top) {
            
            UberMapViewRepresentable(mapState: $mapState)
                .ignoresSafeArea()
            
            if mapState == .searchingForLocation {
                LocationSearchView(mapState: $mapState)
            } else  if mapState == .noInput {
                LocationSearchActivationView()
                    .padding(.top, 90)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            mapState = .searchingForLocation
                        }
                    }
                    .animation(.spring(), value: mapState)
            }
            
            MapViewActionButton(mapState: $mapState)
                .padding()
                .padding(.leading, 8)
            
            
        }
    }
}
