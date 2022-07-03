//
//  DetailsView.swift
//  NightWatchLists
//
//  Created by Camilla Cidral on 20/06/22.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "map")
                Text("Placeholder for motel floor plan")
            }
            Text(task.name)
            if verticalSizeClass == .regular {
            Divider()
            Text("test")
            Divider()
            Button("Mark Complete") {
                task.isComplete = true
            }
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailsView(task: Binding<Task>.constant( Task(name: "Test task", isComplete: false, lastCompleted: nil)))
                .previewInterfaceOrientation(.portraitUpsideDown)
            DetailsView(task: Binding<Task>.constant( Task(name: "Test task", isComplete: false, lastCompleted: nil)))
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/667.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/))
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
