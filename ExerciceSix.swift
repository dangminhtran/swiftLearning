//
//  ExerciceCinq.swift
//  ExerciceNavigation
//
//  Created by Zohra Achour on 07/05/2023.
//

import SwiftUI

// MARK: BOSS FIGHT !
// Utiliser le NavigationPath pour naviguer puis retourner vers la vue parente sans passer par les "Back" en haut des interfaces.
// L'action du Button dans InterfaceEnfantDeux() renvoyer vers la première interface.

struct ExerciceSix: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                NavigationLink(destination: InterfaceEnfantUne(path: $path)) {
                    Text("En avant vers de nouvelles aventures !")
                }.navigationBarBackButtonHidden(true)
                    .navigationDestination(for: String.self) { route in
                        switch route {
                        case "ExerciceSix":
                            ExerciceSix()
                        case "InterfaceEnfantUne":
                            InterfaceEnfantUne(path: $path)
                        case "InterfaceEnfantDeux":
                            InterfaceEnfantDeux(path: $path)
                        default :
                            Text("Cette destination n'existe pas")
                        }
                    }
            }
        }
    }
}

struct InterfaceEnfantUne: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack {
            NavigationLink(destination: InterfaceEnfantDeux(path: $path)) {
                Text("Weeee~")
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct InterfaceEnfantDeux: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack {
            Button {
                path.append("ExerciceSix")
                
            } label: {
                Text("Retourner au début de la fin")
            }
        }.navigationBarBackButtonHidden(true)

    }
}


struct ExerciceSix_Previews: PreviewProvider {
    static var previews: some View {
        ExerciceSix()
    }
}
