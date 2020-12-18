//
//  ContentView.swift
//  ToDo
//
//  Created by Prabhath Samarathunga on 2020-12-16.
//

import SwiftUI
import CoreData
import struct Kingfisher.KFImage


struct TaskModel: Hashable {
    let topic: String
    let note: String
}


struct ContentView: View {
    
    @State var numberOfTask:Int = 10
    @State var tasksName:String = "My Task"
    @State var profileImage:String = "person-1"
    @State var tasksText:String?
    
    @State var regularFontSize:Int = 17

    
    let tasks: [TaskModel] = [
        TaskModel(
            topic: "Mark Zuckerberg",
            note: "Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!"
        ),
        TaskModel(
            topic: "Zuckerberg",
            note: "Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!"
        ),
        TaskModel(
            topic: "Zuckerberg Mark",
            note: "Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!Hey guys I made this cool website called thefacebook to see if Im cool or not!"
        ),
    ]
    
    
    func changeTastTitle(numberOfTask:Int){
        switch numberOfTask {
        case 0:
            tasksText = "You have no task today!"
        case 1:
            tasksText = "You have 1 task today!"
        default:
            tasksText = "You have \(numberOfTask) tasks today!"
        }
    }
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Spacer()
                Rectangle()
                    .foregroundColor(Color.red)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                Text(tasksName)
                                    .font(.system(size: 48, weight: .bold, design: .default))
                                    .padding()
                                Spacer()
                                
                                Button(action: {
                                    print("Profile")
                                }, label: {
                                    ProfilePicture(image: profileImage)
                                })
                            }
                            HStack{
                                Text(tasksText ?? "")
                                    .font(.system(size: 20, weight: .regular, design: .default))
                                    .frame(height: 18, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding()
                                    .padding(.top,0)

                                Spacer()
                            }.frame(height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(y: /*@START_MENU_TOKEN@*/-18.0/*@END_MENU_TOKEN@*/)
                        }
                    }
                    Spacer()

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(tasks, id: \.self) {task in
                                TaskView(taskModel: task).onTapGesture {
                                    print(task.topic)
                                }
                            }
                        }
                        .padding()
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        print("Add")
                    }, label: {
                        AddButton()
                    }).padding()
                }


                Spacer()
            }.foregroundColor(.white)
            
            
            
            .navigationTitle("Main")
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            print("ContentView appeared!")
            numberOfTask = tasks.count
            changeTastTitle(numberOfTask:numberOfTask)
        }.onDisappear {
            print("ContentView disappeared!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ProfilePicture: View {
    var image:String
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50, alignment: .center)
            .cornerRadius(25)
            .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.2), radius: 10, x: 0.0, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            .offset(y: 1)
            .padding()
    }
}

struct AddButton: View {
    var body: some View {
        Image(systemName: "plus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30, alignment: .center)
            .foregroundColor(.red)
            .frame(width: 70, height: 70, alignment: .center)
            .background(Color.white)
            .cornerRadius(35)
            .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.33), radius: 10, x: 0.0, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}


