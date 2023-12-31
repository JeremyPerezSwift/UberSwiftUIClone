//
//  LocationSearchView.swift
//  UberSwiftUIClone
//
//  Created by Jérémy Perez on 01/11/2023.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    var body: some View {
        VStack {
            
            // MARK: - Header
            
            HeaderView()
                .padding(.top, 90)
                .padding(.bottom)
            
            // MARK: - List
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.results, id: \.self) { result in
                        LocationSearchResultCell(title: result.title, subtitle: result.subtitle)
                            .onTapGesture {
                                viewModel.selectLocation(result)
                                mapState = .locationSelected
                            }
                    }
                }
            }
            
        }
        .background(.white)
    }
    
    func HeaderView() -> some View {
        HStack {
            VStack {
                Circle()
                    .fill(Color(.systemGray3))
                    .frame(width: 6, height: 6)
                
                Rectangle()
                    .fill(Color(.systemGray3))
                    .frame(width: 1, height: 24)
                
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 6, height: 6)
            }
            
            VStack {
                TextField("Current location", text: $startLocationText)
                    .frame(height: 32)
                    .background(Color(.systemGroupedBackground))
                    .padding(.trailing)
                
                TextField("Where to?", text: $viewModel.queryFragment)
                    .frame(height: 32)
                    .background(Color(.systemGray4))
                    .padding(.trailing)
            }
        }
        .padding(.horizontal)
    }
}

