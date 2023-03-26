//
//  BottomNavBar.swift
//  maps-digital
//
//  Created by André  Lucas on 26/03/23.
//

import SwiftUI

struct BottomNavBar: View {
    var body: some View {
        Rectangle()
            .frame(height: 80)
            .foregroundColor(.clear)
            .overlay(ZStack{
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 350,height: 70)
                    .foregroundColor(Color(red: 0.11, green: 0.506, blue: 0.475))
                    .overlay(
                        HStack(spacing: 25){
                            buttonBar(icon: "house.fill",action: {})
                            buttonBar(icon: "icloud.fill",action: {})
                            Spacer()
                            buttonBar(icon: "bubble.left.fill",action: {})
                            buttonBar(icon: "person.fill",action: {})
                        }
                        .padding(),
                        alignment: .center
                    )
                Circle()
                    .foregroundColor(.white)
                    .frame(height: 65)
                    .overlay(
                        buttonBar(icon: "text.justify",action: {})
                    )
                    .padding(.bottom,100)
            },
                     alignment: .center
        )
    }
    
    func buttonBar(icon: String = "", iconSize: CGFloat = 50,action: @escaping () -> Void) -> some View {
        return Button(action: action){
            Circle()
                .foregroundColor(.green)
                .frame(height: iconSize)
                .overlay(
                    Image(systemName: icon)
                        .foregroundColor(.white)
                        .font(.system(size: 30)),
                    alignment: .center
                )
        }
    }
}

struct BottomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBar()
    }
}
