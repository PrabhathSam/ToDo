//
//  temp.swift
//  ToDo
//
//  Created by Prabhath Samarathunga on 2020-12-17.
//

import Foundation


/*
 //
 //  ContentView.swift
 //  ToDo
 //
 //  Created by Prabhath Samarathunga on 2020-12-16.
 //

 import SwiftUI
 import CoreData
 import struct Kingfisher.KFImage

 struct ContentView: View {
     @State var light = Color.green
     
     var body: some View {
         ZStack{
             Rectangle()
                 .foregroundColor(light)
                 .edgesIgnoringSafeArea(.all)
             
             VStack{
                 Text("Hello, World!")
                     .padding()
                 
                 CircleImage()
                     .padding(.top, 50.0)
                 
                 SubmitButton(title: "btn-1", action: {
                     print("btn 1")
                 })
                     .padding(.top, 50.0)
                 SubmitButton(title: "btn-2", action: {
                     print("btn 2")
                 })
                     .padding(.top, 50.0)
             }
             
         }.foregroundColor(.white)
     }
     
     func action (){
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

 struct CircleImage: View {
     var body: some View {
         Image("img-1")
             .resizable()
             .scaledToFill()
             .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
             .clipShape(Circle())
             .overlay(Circle().stroke(Color.white, lineWidth: 4))
             .shadow(radius: 7)
     }
 }



 struct SubmitButton: View {
     var title:String
     var action: () -> Void

     var body: some View {
         Button( action: action) {
             Text(title)
                 .bold()
                 .frame(maxWidth: .infinity)
                 .frame(height: 50)
 //                .padding([.trailing, .leading], 50)
                 .background(Color.pink)
                 .cornerRadius(25)
         }
         .padding(.horizontal, 20.0)

         
     }
 }

 */
