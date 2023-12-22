//
//  ContentView.swift
//  Clock
//
//  Created by Aizada on 22.12.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
      
        VStack(spacing: 5) {
            Text("Time is 13:17:02")
            
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 56, height: 56)
                .padding(10)
            
            HStack(spacing: 5) {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                
            }
            HStack(spacing: 5) {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 74, height: 32)
                    .padding(5)
                
            }
            
            HStack(spacing: 5){
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 32)
                
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 32)
                
//                Rectangle()
//                    .foregroundColor(.yellow)
//                    .frame(width: 20, height: 32)
            }
            HStack(spacing: 5) {
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 74, height: 32)
                    .padding(5)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 74, height: 32)
                    .padding(5)
                
            }
            HStack(spacing: 5) {
                    Text("Insert Time")
                    .padding(20)
                Spacer()
                    Text("09:41")
                    .padding(20)
                
                }
            Spacer()
            }
        }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
