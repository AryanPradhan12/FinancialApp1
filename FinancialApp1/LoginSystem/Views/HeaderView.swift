//
//  HeaderView.swift
//  FinancialApp1
//
//  Created by Aryan Pradhan on 17/10/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.green)
                VStack {
                    Text("Financial App 1")
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .bold()
                    
                    Text("Stay Organized and track your finances!")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    
                    
                    
                }
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -100)
        }
    }
}

#Preview {
    HeaderView()
}
