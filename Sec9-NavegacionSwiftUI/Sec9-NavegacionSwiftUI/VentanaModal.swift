//
//  VentanaModal.swift
//  Sec9-NavegacionSwiftUI
//
//  Created by nelson tapia on 23-08-23.
//

import SwiftUI

struct VentanaModal: View {
    
    @Environment(\.presentationMode) var back
    var texto: String
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack{
                Text(texto)
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
        }
    }
}


