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
        [
            "topic":"topic4",
            "note":"Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.",
        ],
        
    ]
    
    var body: some View {
        
        NavigationView {
            List(views, id: \.self) { view in
                NavigationLink(destination: NoteDetail()) {
                    NoteRow(topic: view["topic"]!, note: view["note"]!)
                }
            }
            .navigationTitle("Landmarks")
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
        }
    }
}


