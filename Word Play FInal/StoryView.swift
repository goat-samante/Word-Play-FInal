//
//  StoryView.swift
//  Word Play FInal
//
//  Created by Samuel Amante on 10/7/24.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        ZStack {
            Color.green
            Text(writeStory(words: words))
        }
    }
}

func writeStory(words: Words) -> String {
    return "Winter is so much fun because you can \(words.verb0) and \(words.verb1) in the \(words.adjective0) snow. " + "It's important to dress in \(words.articleofclothing0) and \(words.articleofclothing1) in order to stay \(words.adjective1) outdoors. " + "There are many \(words.adjective2) winter sports, like \(words.sport0) and \(words.sport1). " + "It's also fun to build a \(words.noun0) and dress him in \(words.articleofclothing2), with a \(words.noun1) for a \(words.partofthebody0). " + "It's nice to \(words.verb2) by a warm \(words.noun2) enjoy a cup of \(words.adjective3) \(words.drink0) after \(words.verbing0) in the snow all day"
}

#Preview {
    StoryView(words: Words())
}
