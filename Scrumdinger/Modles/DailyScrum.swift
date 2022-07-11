//
//  File.swift
//  Scrumdinger (iOS)
//
//  Created by Ashlynn Mitchell on 2/17/22.
//

import Foundation

struct DailyScrum: Identifiable {
    var id = UUID()
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.attendees = attendees.map { Attendee(name: $0) }
        self.theme = theme
        self.title = title
        self.lengthInMinutes = lengthInMinutes
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        var id: UUID
        var name: String

        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
        
    }
    struct Data {
        var title: String = ""
        var lengthInMinutes: Double = 5
        var attendees: [Attendee] = []
        var theme: Theme = .seafoam
    }
    
    var data: Data {
        Data(title: title, lengthInMinutes: Double(lengthInMinutes), attendees: attendees, theme: theme)
    }
}
extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Food", attendees: ["Mylo", "Skit", "Kemoo"], lengthInMinutes: 10, theme: .sky),
        DailyScrum(title: "Animation", attendees: ["Sky", "Bright", "Yakayaka", "Crispin"], lengthInMinutes: 10, theme: .lavender),
        DailyScrum(title: "Costumes", attendees: ["Tim", "Renee", "Alfonso", "Kacee", "Rudy", "Bella"], lengthInMinutes: 5, theme: .buttercup)
    ]
}
