//
//  ContentView.swift
//  shape
//
//  Created by win603 on 29/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            Circle()
                .stroke(Color.blue, lineWidth: 4)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            Rectangle()
                .stroke(Color.blue, lineWidth: 4)
                .frame(width: 50, height: 50)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.pink).frame(width: 50, height: 40)
            Capsule()
                .fill(Color.green).frame(width: 50, height: 25).opacity(0.8)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 50, height: 25)
            Capsule()
                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                .frame(width: 40, height: 10)
            Capsule()
                .frame(width: 40, height: 10)
                .foregroundColor(.accentColor)
                .overlay {
                    Capsule().stroke(lineWidth: 2)
                }
        }.padding(100)
        
        HStack{
            
            ScrollView{
                VStack{
                    ZStack{
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                        
                        HStack{
                            Capsule()
                                .fill(Color.blue)
                                .frame(width: 170 , height: 50)
                        }
                    }
                }
            }
            
            ScrollView{
                VStack{
                    ZStack{
                        Circle()
                            .fill(Color.green)
                            .frame(width: 100, height: 100)
                        
                        HStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 30 , height: 30)
                        }
                    }
                }
            }
            
            ScrollView{
                VStack{
                    ZStack{
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                        
                        Circle()
                            .fill(Color.green)
                            .frame(width: 50 , height: 50)
                        
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 20 , height: 20)
                        
                        Circle()
                            .fill(Color.red)
                            .frame(width: 10 , height: 10)
                    }
                }
            }
        }
        
        HStack{
            
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 150, height: 100).overlay(
                            
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 150, height: 50), alignment: .bottomTrailing)
                        .overlay(
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 150 , height: 25), alignment: .bottom)
                }
            }
            
            VStack {
                ZStack {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                    
                    Circle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                        .offset(x: 80)
                    
                    Ellipse()
                        .fill(Color.yellow)
                        .overlay(
                            Ellipse().stroke(Color.black, lineWidth: 1)
                        )
                        .frame(width: 30, height: 60)
                        .offset(x: 40)
                }
            }
        }
        HStack{
            
            VStack(spacing: -30){
                HStack(spacing: -15){
                    Circle()
                        .stroke(Color.blue, lineWidth: 8)
                        .frame(width: 80, height: 80)
                    Circle()
                        .stroke(Color.black, lineWidth: 8)
                        .frame(width: 80, height: 80)
                    Circle()
                        .stroke(Color.red, lineWidth: 8)
                        .frame(width: 80, height: 80)
                }
                
                HStack(spacing: -15){
                    Circle()
                        .stroke(Color.yellow, lineWidth: 8)
                        .frame(width: 80, height: 80)
                    Circle()
                        .stroke(Color.green, lineWidth: 8)
                        .frame(width: 80, height: 80)
                    
                }
                
            }
        }
    }
        
}

#Preview {
    ContentView()
}
