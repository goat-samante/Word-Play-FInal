//
//  ContentView.swift
//  Word Play FInal
//
//  Created by Samuel Amante on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView() {
            VStack {
                Text("Please Enter Requested Words Below")
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb0)
                    CustomTextField(placeholder: "verb", variable: $words.verb1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                }
                HStack {
                    CustomTextField(placeholder: "articleofclothing", variable: $words.articleofclothing0)
                    CustomTextField(placeholder: "articleofclothing", variable: $words.articleofclothing1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "sport", variable: $words.sport0)
                    CustomTextField(placeholder: "sport", variable: $words.sport1)
                }
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "articleofclothing", variable: $words.articleofclothing2)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                }
                HStack {
                    CustomTextField(placeholder: "partofthebody", variable: $words.partofthebody0)
                    CustomTextField(placeholder: "verb", variable: $words.verb2)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                    CustomTextField(placeholder: "drink", variable: $words.drink0)
                    CustomTextField(placeholder: "verb-ing", variable: $words.verbing0)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

#Preview {
    ContentView()
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct Words {
    var verb0 = ""
    var verb1 = ""
    var adjective0 = ""
    var articleofclothing0 = ""
    var articleofclothing1 = ""
    var adjective1 = ""
    var adjective2 = ""
    var sport0 = ""
    var sport1 = ""
    var noun0 = ""
    var articleofclothing2 = ""
    var noun1 = ""
    var partofthebody0 = ""
    var verb2 = ""
    var noun2 = ""
    var adjective3 = ""
    var drink0 = ""
    var verbing0 = ""
}
