//
//  temperatures.swift
//  ExercicesConditions
//
//  Created by Apprenant 133 on 19/06/2024.
//

import SwiftUI

struct temperatures: View {
    @State private var temperature: Double = 15
    
    @State private var cold: Color = .blue
    @State private var warm: Color = .orange
    @State private var hot: Color = .red
    
    
    var body: some View {
        
        
        ZStack {
            
            /*    if temperature < 10 {
             Rectangle()
             .foregroundStyle(cold)
             Text("It's cold")
             } else if temperature > 35 {
             Rectangle()
             .foregroundStyle(hot)
             Text("It's hot")
             } else {
             Rectangle()
             .foregroundStyle(warm)
             Text("It's great ! ")
             }*/
            
            switch temperature {
            case -10...10:
                //Rectangle()
                //  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                cold
                Text("It's cold")
            case 32...40:
                // Rectangle()
                //     .foregroundColor(.red)
                hot
                Text("It's hot")
            default:
                // Rectangle()
                //     .foregroundColor(.orange)
                warm
                Text("It's great")
            }
            
            VStack {
                
                Text("\(Int(temperature))°C")
                    .font(.title2)
                    .bold()
                Slider(value: $temperature, in: -10...40)
                    .padding(.top, 30)
                
                //Changer la couleur du slider
                    .accentColor(.green)
                
                
            }
        }.ignoresSafeArea()
    }
}


#Preview {
    temperatures()
}
