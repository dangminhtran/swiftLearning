//
//  Temperatures.swift
//  ExerciceNavigation
//
//  Created by Apprenant 133 on 26/06/2024.
//

import SwiftUI

struct Temperatures: View {
    @State private var celsius: Double = 0
    @State private var farhenheit: Double = 0
    @State private var kelvin: Double = 0
    
    
    
    var body: some View {
        
        ZStack {
            //      VStack {
            HStack(spacing: 0) {
                Color.orange
                Color.blue
                Color.purple
                
            }
            HStack {
                VStack {
                    Text("Celsius")
                        .bold()
                    Text("\(String(format: "%.2f", celsius))°C")
                }.foregroundColor(.white)
                    .padding(.trailing, 50)
             
                Farhenheit(farhenheit: $farhenheit, celsius: $celsius)
                Kelvin(kelvin: $kelvin, celsius: $celsius)
            }
            
            VStack {
                Slider(value: $celsius, in: -10...40)
                //Changer la couleur du slider
                    .accentColor(.white)
                    .padding(.top, 600)
            }
            
        }.ignoresSafeArea()
  
        
    }
}
    
//}



struct Farhenheit: View {
    @Binding var farhenheit: Double
    @Binding var celsius: Double
    
    var body: some View {

        VStack {
        
                Text("Fahrenheit")
                    .bold()
                Text("\(String(format: "%.2f", celsius*9/5 + 32))")
            }.foregroundColor(.white)
            .padding(.trailing, 40)
        }
            
    
}



struct Kelvin: View {
    @Binding var kelvin: Double
    @Binding var celsius: Double
    
    var body: some View {
        
   
       VStack{
                Text("Kelvin")
                    .bold()
                Text("\(String(format: "%.2f", celsius + 273,15))")
            }.foregroundColor(.white)
            .padding(.trailing, 30)
        }
          
    }





#Preview {
    Temperatures()
}
