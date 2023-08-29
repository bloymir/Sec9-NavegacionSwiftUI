//
//  ContentView.swift
//  Sec9-NavegacionSwiftUI
//
//  Created by nelson tapia on 23-08-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false
    @State private var texto = ""
    
    var body: some View {
        NavigationView{
            VStack {
                TextField("Texto", text: $texto)
                NavigationLink(destination: SegundaVista(texto: texto)) {
                    Text("Segunda Vista")
                }
                Button("Abrir Modal"){
                    show.toggle()
                }
                .sheet(isPresented: $show) {
                    VentanaModal(texto: texto)
                }.navigationTitle("Navegacion")
                    .toolbar {
                        HStack{
                            NavigationLink(destination: SegundaVista(texto: texto)) {
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: TercerVista()) {
                                Image(systemName: "camera")
                            }
                        }
                    }
            }.padding(.all)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
