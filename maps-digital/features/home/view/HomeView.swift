//
//  ContentView.swift
//  maps-digital
//
//  Created by André  Lucas on 25/03/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct HomeView: View {
    
    @ObservedObject private var controller = HomePresenter()
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -0.755940, longitude: -48.522409), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region, annotationItems: controller.locations){ location in
                MapAnnotation(coordinate: location.coordinate) {
                    Button {
                        controller.showDetails = true
                    } label: {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.green)
                            .font(.title)
                    }
                    .sheet(isPresented: $controller.showDetails){
                        Text("oiii")
                            .presentationDetents([.height(300)])
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            VStack{
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 350,height: 50)
                    .foregroundColor(.white)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            TextField("Search", text: $controller.text)
                            Image(systemName: "mic.fill")
                                .foregroundColor(.blue)
                        }
                        .padding(),
                        alignment: .center
                    )
                    .padding(.top)
                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                Spacer()
                BottomNavBar()
            }
            
        }
        .onAppear {
            controller.getLocation()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
