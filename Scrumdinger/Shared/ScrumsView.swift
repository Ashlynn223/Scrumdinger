//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Ashlynn Mitchell on 2/21/22.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                } .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle(Text("Daily Meetings"))
        .padding(.bottom, 5)
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
