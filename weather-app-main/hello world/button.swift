//
//  button.swift
//  weatherApp
//
//  Created by Aryan Pawar on 04/12/22.
//

import SwiftUI

struct wbutton:View{
    
    var title:String
    var textcolor:Color
    var backgroundcolor:Color
    
    var body:some View{
            Text(title)
                .fontWeight(.bold)
                .frame(width: 350, height:60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(backgroundcolor)
                .foregroundColor(textcolor)
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .cornerRadius(14)
        }
}
            
    

