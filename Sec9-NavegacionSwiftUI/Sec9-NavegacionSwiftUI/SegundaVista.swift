//
//  SegundaVista.swift
//  Sec9-NavegacionSwiftUI
//
//  Created by nelson tapia on 23-08-23.
//

import SwiftUI

struct SegundaVista: View {
    
    var texto: String
    
    var body: some View {
        VStack{
            Text("Segunda Vista")
                .navigationTitle(texto)
            NavigationLink("Tercera Vista"){
                TercerVista()
            }
        }
        
        
    }
}


