//
//  WeatherView.swift
//  Weather App
//
//  Created by Kamila Sultanova on 06.07.2024.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack{
            Color.background
                .ignoresSafeArea()
            
            // MARK: Weather View
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20){
                    ForEach(Forecast.cities){forecast in
                        WeatherWidget(forecast: forecast)
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay{
            NavigationBar()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    WeatherView()
        .preferredColorScheme(.dark)
}
