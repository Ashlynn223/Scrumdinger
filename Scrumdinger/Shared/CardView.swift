//
//  CardView.swift
//  Scrumdinger (iOS)
//
//  Created by Ashlynn Mitchell on 2/17/22.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack {
            HStack {
                Text(scrum.title)
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                    //^^Voice over will read scrum title and then say "heading"
                Spacer()
            }.padding(.bottom, 5)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                .labelStyle(.trailingIcon)
            }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    //was not able to log this line ^^
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 90))
    }
}
