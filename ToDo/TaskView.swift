//
//  TaskView.swift
//  ToDo
//
//  Created by Prabhath Samarathunga on 2020-12-18.
//

import SwiftUI

struct TaskView: View {
    
    let taskModel:TaskModel
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text(taskModel.topic)
                        .font(.system(size: 25, weight:.semibold, design: .default))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: 260)
                        .foregroundColor(.black)
                        .padding()
                }
                Spacer()
                ScrollView(.vertical, showsIndicators: false){
                    HStack{
                        Text(taskModel.note)
                            .font(.system(size: 17, weight: .regular, design: .default))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: 260)
                            .foregroundColor(.gray)
                    }
                }.padding(.bottom,10)
                .offset(y: -5)
                Spacer()
            }.padding(20)
            
        }
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.2), radius: 10, x: 0.0, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
    }
}


struct TaskView_Previews: PreviewProvider {
    static var previews: some View {

        TaskView(taskModel:TaskModel(
            topic: "Zuckerberg Mark",
            note: "Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!"
        ))
    }
}
