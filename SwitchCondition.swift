//
//  SwitchCondition.swift
//  ExercicesConditions
//
//  Created by test on 23/04/2023.
//

import SwiftUI

struct SwitchCondition: View {
    
//MARK: - Condition Switch
    
    //Créer un switch qui affiche le texte "je suis majeur" par rapport à 18 ans
    @State private var age: Int = 18
   
    //Votre switch doit contenir trois autres textes affichant ce que vous voulez
    //Indice: Vous allez devoir utiliser des Int
    
    var body: some View {
        
        VStack {
            switch age {
            case 15...17:
                Text("Tu n'es pas encore majeur")
                    .font(.title)
            case 18...60:
                Text("Tu es majeur")
                    .font(.title)
                
            case 60...100:
                Text("A la retraite")
                    .font(.title)
                
            default:
                Text("Tu es un bébé")
                    .font(.title)
            }
        }
        
        
   
    }
}

struct SwitchCondition_Previews: PreviewProvider {
    static var previews: some View {
        SwitchCondition()
    }
}
