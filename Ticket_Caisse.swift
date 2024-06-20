//
//  Ticket_Caisse.swift
//  ExerciceOperateur
//
//  Created by Apprenant 133 on 18/06/2024.
//

import SwiftUI

struct Ticket_Caisse: View {
    
    
    var priceNachos: Double = 7.50
    var priceBieres: Double = 5.50
    
    var nbNachos: Double = 3
    var nbBieres: Double = 7
    
    //var totalBieres: Double = 7*5.50
    //var totalNachos: Double = 3*7.50
    
  
    let background = Color.black
    
    
    var body: some View {
        
        ZStack {
            background.ignoresSafeArea()
            Text(".: Le bar de Greg :.")
                .foregroundStyle(Color.white)
                .padding(.bottom, 150)
                .padding(.leading, -150)
                .fontDesign(.monospaced)
               
            
            Text("___________________")
                .padding(.bottom, 100)
                .padding(.leading, -150)
                .foregroundStyle(Color.white)
                .fontDesign(.monospaced)
                
            
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(String(format: "%.0f", nbNachos))x Nachos \(String(format: "%.2f",priceNachos)) €")
                    
                    
                    Text("\(String(format: "%.0f", nbBieres))x Bières \(String(format: "%.2f",priceBieres)) €")
                }
                .foregroundStyle(Color.white)
                .fontDesign(.monospaced)
                
                
                
                VStack {
                    Text("| Total: \(String(format: "%.2f", nbNachos*priceNachos)) €")
                    Text("| Total: \(String(format: "%.2f", nbBieres*priceBieres)) €")
                }
                .foregroundStyle(Color.white)
                .fontDesign(.monospaced)
                
            }
            Text("Total \(String(format: "%.2f", nbBieres*priceBieres + nbNachos*priceNachos)) €")
                .foregroundStyle(Color.white)
                .padding(.top, 80)
                .padding(.leading, -170)
                .fontDesign(.monospaced)
            
            
            
        }
        
    }
}

#Preview {
    Ticket_Caisse()
}
