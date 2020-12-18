//
//  temp1.swift
//  ToDo
//
//  Created by Prabhath Samarathunga on 2020-12-18.
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
     
     let views = [
         [
             "topic":"topic1",
             "note":"Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.",
         ],
         [
             "topic":"topic2",
             "note":"Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.",
         ],
         [
             "topic":"topic3",
             "note":"Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.",
         ],
         
     ]
     
     
     
     var body: some View {
         ZStack{
             NavigationView {
                 VStack{
                     Spacer()
                     List(views, id: \.self) { view in
                         NavigationLink(destination: NoteDetail()) {
                             NoteRow(topic: view["topic"]!, note: view["note"]!)
                         }
                     }
                     .navigationTitle("TODO")
                     .navigationBarHidden(true)
                     
                     NavigationLink(destination: NoteDetail()) {
                         StyleButton()
                     }
                     .padding([.trailing, .leading], 50)
                     
                     
                     SubmitButton(title: "ADD +", action: {
                         
                     }).foregroundColor(.white)
                 }
             }
             .navigationViewStyle(StackNavigationViewStyle())
         }
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

 struct NoteRow: View {
     var topic:String
     var note:String
     
     var body: some View {
         VStack{
             HStack{
                 Text(topic)
                     .font(.title)
                     .fontWeight(.bold)
                     .lineLimit(1)
                     .padding(.horizontal, 20.0)
                     .padding(.vertical, 4.0)
                 Spacer()
             }
             HStack{
                 Text(note)
                     .lineLimit(1)
                     .padding(.horizontal, 20.0)
                     .frame(maxWidth: .infinity)
             }
         }.background(Color.green)
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

 struct StyleButton: View {
     var body: some View {
         Text("title")
             .bold()
             .frame(maxWidth: .infinity)
             .frame(height: 50)
             .background(Color.pink)
             .cornerRadius(25)
     }
 }

 */
