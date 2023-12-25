//
//  ContentView.swift
//  Clock
//
//  Created by Aizada on 22.12.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var selectedDate = Date()
    
    var formattedTime: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter.string(from: selectedDate)
    }
    
    var body: some View {
        
        VStack(spacing: 5) {
            Text("Time is \(formattedTime)")
            
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 56, height: 56)
                .padding(5)
            
            HStack(spacing: 5) {
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
            }
            
            HStack(spacing: 5) {
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightRed, width: 74, height: 32)
                    .padding(5)
            }
            
            HStack(spacing: 5) {
                HStack(spacing: 5) {
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                    ColoredRectangle(color: .lightRed, width: 21, height: 32)
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                    ColoredRectangle(color: .lightRed, width: 21, height: 32)
                }
                .padding(5)
                
                HStack(spacing: 5) {
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                    ColoredRectangle(color: .lightRed, width: 21, height: 32)
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                    ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                }
                .padding(5)
            }
            HStack(spacing: 5) {
                ColoredRectangle(color: .lightYellow, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightYellow, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightYellow, width: 74, height: 32)
                    .padding(5)
                ColoredRectangle(color: .lightYellow, width: 74, height: 32)
                    .padding(5)
            }
            
            HStack(spacing: 5) {
                DatePicker(
                    "Insert Time",
                    selection: $selectedDate,
                    displayedComponents: [.hourAndMinute]
                )
                .datePickerStyle(.automatic)
                .padding(20)
                
            }
            Spacer()
        }
    }
    
    struct ColoredRectangle: View {
        var color: Color
        var width: CGFloat
        var height: CGFloat
        
        var body: some View {
            Rectangle()
                .foregroundColor(color)
                .frame(width: width, height: height)
        }
    }
    
    func updateColors() {
    
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
