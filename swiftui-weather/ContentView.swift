//
//  ContentView.swift
//  swiftui-weather
//
//  Created by almayo ibrahim  on 13/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNightModeOn = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNightModeOn: isNightModeOn)

            VStack {
                CityName(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNightModeOn ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 76)
            Spacer()
            
            // Next days data
            HStack (spacing: 20) {
                VStack{
                    Text("TUE")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    Image(systemName: "cloud.sun.fill")
                        .symbolRenderingMode(.multicolor)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("76°")
                        .font(.system(size: 40, weight: .medium))
                        .foregroundColor(.white)
                }
                VStack{
                    Text("WED")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("75°")
                        .font(.system(size: 40, weight: .medium))
                        .foregroundColor(.white)
                }
                VStack{
                    Text("THU")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    Image(systemName: "wind.snow")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("74°")
                        .font(.system(size: 40, weight: .medium))
                        .foregroundColor(.white)
                }
                VStack{
                    Text("FRI")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    Image(systemName: "sunset.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("75°")
                        .font(.system(size: 40, weight: .medium))
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
            Button(action: {
                isNightModeOn.toggle()
            }, label: {
                ButtonLayout(title: "Change Day Time",
                             textColor: .blue,
                             backgroundColor: .white)
            })
            Spacer()
        }
    }
    
    }
}

#Preview {
    ContentView()
}



// extracted views

struct BackgroundView: View {
    
    var isNightModeOn: Bool
    
    var body: some View {
    
//        LinearGradient(gradient: Gradient(colors: [isNightModeOn ? .black : .blue,
//                                                   isNightModeOn ? .gray : Color("lightBlue")]),              startPoint: .topLeading,
//                                                        endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        
        // new ios 16 updates for gradient -------------------------------
        ContainerRelativeShape()
            .fill(isNightModeOn ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityName: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


