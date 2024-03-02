//
//  ContentView.swift
//  hello world
//
//  Created by Aryan Pawar on 30/11/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var isnight=false
    var body: some View {
        VStack {
            VStack {
                ZStack{
                    backgroundview(topcolor: isnight ? .black : .blue ,
                                   bottomcolor: isnight ? .gray: Color("light blue"))
                        
                    Button{
                        print("tapped")
                        isnight.toggle()
                    } label: {
                          wbutton(title: "Change Day  Time",
                                textcolor: .blue,
                                backgroundcolor: .white)
                    }

                    .padding(.top, 600.0)
                
                    
                    VStack{
                        citytextview(cityname: "India,Mumbai")
                        
                        mainstatus(imagename: isnight ? "moon.fill" :"cloud.sun.fill",
                                  tempname: 30)
                      
                        
                    }
                    .padding(.bottom, 500.0)
                    
                
                
                    
                          HStack(spacing:-40){
                       wheatherDay(week: "Tue",
                                   image: "cloud.sun.rain.fill",
                                   temp: 28)
                        .padding(.trailing)
                        
                        wheatherDay(week: "Wed",
                                    image: "cloud.sun.bolt.fill",
                                    temp: 26)
                         
                        wheatherDay(week: "Thurs",
                                    image: "cloud.sun.rain.fill",
                                    temp: 31)
                            .padding(.horizontal)
                         
                        wheatherDay(week: "Fri",
                                    image: "cloud.sun.fill",
                                    temp: 30)
                            .padding(.horizontal)
                            
                         
                        wheatherDay(week: "Sat",
                                    image: "cloud.sun.rain.fill",
                                    temp: 27)
                            .padding(.leading)
                            
                          }
                          .padding(.top, 150.0)
                 
                }
                
            }
            
            
        }
            }
}
         

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.sizeCategory, .medium)
                .previewDevice("iPhone 11")
           
        }
    }
}

struct wheatherDay: View {
    
    var week: String
    var image: String
    var temp: Int
    var body: some View {
        VStack{
            Text(week)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            
            
            
            Image(systemName:image)
                .renderingMode(/*@START_MENU_TOKEN@*/.original/*@END_MENU_TOKEN@*/)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
                .frame(width:85.0,height:85.0)
            Text("\(temp)°")
                
                .foregroundColor(Color.white)
                .font(.system(size:35))
                .multilineTextAlignment(.center)

    }
       
}
   
}

struct backgroundview: View {
    
    var topcolor:Color
    var bottomcolor:Color
    
    var body: some View {
        LinearGradient(gradient:Gradient(colors:[topcolor,bottomcolor]),
                       startPoint: .top,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct citytextview:View{
    
    var cityname:String
    
    var body: some View{
    Text(cityname)
        .font(.title)
        .fontWeight(.semibold)
        .foregroundColor(Color.white)
        .padding(.vertical)
    }
    
    
}
struct mainstatus:View {
    
    var imagename :String
    var tempname:Int
    var body:some View{
        Image(systemName:imagename)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 180.0)
        
        Text("\(tempname)°")
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .font(.system(size:80))
            .padding(.top, -25.0)
            
    }
}

