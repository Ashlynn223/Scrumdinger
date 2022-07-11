//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Ashlynn Mitchell on 3/3/22.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName: String = ""
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lengthInMinutes, in: 5...30, step: 1)
                        .accessibilityValue("\(Int(data.lengthInMinutes)) minutes")
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
                }
                Button(action: {
                    withAnimation {
                        let attendee = DailyScrum.Attendee(name: newAttendeeName)
                        data.attendees.append(attendee)
                        newAttendeeName = ""
                    }
                }){
                    HStack {
                        Text("New Attendee")
                        Spacer()
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(newAttendeeName.isEmpty ? .gray : .purple)
                            .accessibilityLabel("Add attendee")
                    }
                }.disabled(newAttendeeName.isEmpty)
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
