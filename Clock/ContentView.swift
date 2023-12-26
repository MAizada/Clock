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
                ForEach(0..<4) { index in
                    let active = getFiveHour()
                    ColoredRectangle(color: index < active ? .red : .lightRed, width: 74, height: 32)
                        .padding(5)
                }
            }
            
            HStack(spacing: 5) {
                ForEach(0..<4) { index in
                    let active = getOneHour()
                    ColoredRectangle(color: index < active ? .red : .lightRed, width: 74, height: 32)
                        .padding(5)
                }
            }
            
            HStack(spacing: 5) {
                ForEach(0..<11) { index in
                    let active = getFifteenMinute()
                    if index < active {
                        if index % 3 < 2 {
                            ColoredRectangle(color: .yellow, width: 21, height: 32)
                                .padding(3)
                        } else {
                            ColoredRectangle(color: .red, width: 21, height: 32)
                                .padding(3)
                        }
                    } else {
                        if index % 3 < 2 {
                            ColoredRectangle(color: .lightYellow, width: 21, height: 32)
                                .padding(3)
                        } else {
                            ColoredRectangle(color: .lightRed, width: 21, height: 32)
                                .padding(3)
                        }
                    }
                }
            }
            
            HStack(spacing: 5) {
                ForEach(0..<4) { index in
                    let active = getMinute()
                    ColoredRectangle(color: index < active ? .yellow : .lightYellow, width: 74, height: 32)
                        .padding(5)
                }
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
    
    func getFiveHour() -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour], from: selectedDate)
        
        if let hour = components.hour {
            return hour / 5
        }
        return 0
    }
    
    func getOneHour() -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour], from: selectedDate)
        
        if let hour = components.hour {
            return hour % 5
        }
        return 0
    }
    
    func getFifteenMinute() -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.minute], from: selectedDate)
        
        if let minute = components.minute {
            return minute / 5
        }
        return 0
    }
    
    func getMinute() -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.minute], from: selectedDate)
        
        if let minute = components.minute {
            return minute % 5
        }
        return 0
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
