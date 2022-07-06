//
//  ScreenTwo.swift
//  5Temmuz
//
//  Created by Yusuf İhsan Görgel on 6.07.2022.
//

import SwiftUI

struct ScreenTwo: View {
    
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 20) {
            
            Text("Screen 2")
                .bold()
                .foregroundColor(.white)
                
                Button{
                    router.change(to: .one)
                }label: {
                    Text("Switch to screen 1")
                }
               
                
            }
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity).background(.pink).clipped()
    }
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo()
            .environmentObject(TabRouter())
    }
}
