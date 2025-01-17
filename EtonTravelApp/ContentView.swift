//
//  ContentView.swift
//  EtonTravelApp
//
//  Created by Андрей Горяинов on 17.01.2025.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        DestinationView(destination: wuhuIsland)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}