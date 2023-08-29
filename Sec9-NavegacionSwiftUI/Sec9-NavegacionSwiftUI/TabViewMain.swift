//
//  TabViewMain.swift
//  Sec9-NavegacionSwiftUI
//
//  Created by nelson tapia on 24-08-23.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            Vista2().tabItem {
                Label("Vista2", systemImage: "plus")
            }
            TercerVista().tabItem {
                Label("Tercer Vista", systemImage: "camera")
            }
        }
    }
}

