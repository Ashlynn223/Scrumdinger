//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Ashlynn Mitchell on 2/18/22.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}

//Self refers to the type that conforms to the protocol of LabelStyle(String, Int, etc)... so what ever the type of TrailingIconLabelStyle is, not sure how we would tell of it's type though and how that would be useful to see that the type of TrailingIconLabelStyle is equal to the type of TrailingIconLabelStyle...

//what is Configuration?
