//
//  DetailsView.swift
//  maps-digital
//
//  Created by André  Lucas on 26/03/23.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack{
            Image("praia")
                .resizable()
                .frame(width: .infinity,height: 200)
                .cornerRadius(10)
            HStack{
                Text("Praia Grande")
                    .fontWeight(.bold)
                Spacer()
                Text("4,5")
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            .padding([.top,.bottom])
            
            RoundedRectangle(cornerRadius: 50)
                .frame(height: 60)
                .foregroundColor(.green)
                .overlay{
                    HStack{
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.white)
                        Text("Navegar")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
        }
        .padding()
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
