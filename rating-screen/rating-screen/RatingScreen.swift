//
//  RatingScreen.swift
//  rating-screen
//
//  Created by Émilio Williame on 03/11/2023.
//


import SwiftUI

struct RatingScreen: View {
    @State var oRating = 0
    @State var lRating = 0
    @Environment (\.dismiss) var dismiss
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            //Background gradient
            Image("bgGradient")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            

                ZStack {
                    
                    //Dégradé blanc
                    LinearGradient(colors: [.customBW, .clear], startPoint: .center, endPoint: .top)
                    VStack(spacing: 20) {
                        
                        //Question
                        Text("✅")
                            .font(.system(size: 63))
                        Text("Ça s'est bien passé ?")
                            .font(.title)
                        Text("Tu viens de participer à un évènement, dévérouille ta récompense en le notant !")
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.secondary)
                        
                        RatingStars(rating: 0, label: "L'organisateur ?")
                        RatingStars(rating: 0, label: "Le loisir ?")
                        
                        Button(action: {
                            dismiss()
                        }, label: {
                            FloatingButton(label: "Valider")
                        })
                        .buttonStyle(CustomButtonAnimation())
                        .padding(.top, 30)
                    }
                }

        }
    }
}

#Preview {
    RatingScreen()
}
