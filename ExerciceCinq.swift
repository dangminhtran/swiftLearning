//
//  ExerciceDeux.swift
//  ExerciceNavigation
//
//  Created by Zohra Achour on 07/05/2023.
//

import SwiftUI

// MARK: BOSS FIGHT !
// Regardez attentivement l'interface avant de commencer cet exo.
// 1 - Vous avez un array d'élément Weather, afficher chacun des éléments dans le ForEach si dessous.
// 2 - Naviguer et envoyez la donnée vers l'interface WeatherDetail afin d'afficher pour afficher le temps sélectionné.

struct Weather: Identifiable {
    var id = UUID()
    var icon: String
    var name: String
    var color: Color
}

struct ExerciceCinq: View {
    
    var potentialWeather = [
        Weather(icon: "bolt.fill", name: "Orageux", color: .yellow),
        Weather(icon: "cloud.fill", name: "Nuageux", color: .gray),
        Weather(icon: "drop.fill", name: "Pluvieux", color: .cyan),
        Weather(icon: "sun.max.fill", name: "Ensoleillé", color: .orange),
    ]
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 60) {
                Text("Quel temps fait-il aujourd'hui ?")
                
                ForEach(potentialWeather) { banana in
                    WeatherListRow(name: banana.name, icon : banana.icon, color: banana.color)
                }
            }
        }
    }
}

struct WeatherListRow: View {
    
    let name: String
    let icon: String
    let color: Color
    
    var body: some View {
        NavigationLink(destination: WeatherDetail(name: name, icon: icon, color: color)) {
            HStack {
                Image(systemName: icon)
                Text(name)
            }
            .padding()
            .background(color)
            .foregroundColor(.black)
            .cornerRadius(20)
        }
    }
}

struct WeatherDetail: View {
    
    let name: String
    let icon: String
    let color: Color
    
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            VStack {
                Image(systemName: icon)
                    .font(.largeTitle)
                Text(name)
            }
        }
    }
}

struct ExerciceCinq_Previews: PreviewProvider {
    static var previews: some View {
        ExerciceCinq()
    }
}


