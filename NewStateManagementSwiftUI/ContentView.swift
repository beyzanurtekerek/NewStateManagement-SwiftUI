//
//  ContentView.swift
//  NewStateManagementSwiftUI
//
//  Created by Beyza Nur Tekerek on 6.10.2024.
//

import SwiftUI
import SwiftData

@Observable
class DarkTheme {
    var isEnabled : Bool = false
}

struct DarkChosiseView : View {
    
    @Bindable var darkTheme : DarkTheme
    
    var body: some View {
        Toggle(isOn: $darkTheme.isEnabled) {
            EmptyView()
        }.fixedSize()
    }
}

struct DarkChoiseToggleView : View {
    @Environment(DarkTheme.self) private var darkTheme: DarkTheme
    var body: some View {
        DarkChosiseView(darkTheme: darkTheme)
    }
}

struct InformationText : View {
    
    @Environment(DarkTheme.self) private var darkTheme
    
    var body: some View {
        Text(darkTheme.isEnabled ? "DARK THEME" : "LIGHT THEME")
            .font(.title2)
            .foregroundStyle(darkTheme.isEnabled ? .white : .black )
    }
}


struct ContentView: View {
    
    @Environment(DarkTheme.self) private var darkTheme

    var body: some View {
        VStack {
            DarkChoiseToggleView()
            InformationText()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(darkTheme.isEnabled ? .black : .white)
    }
}

#Preview {
    ContentView()
        .environment(DarkTheme())
}
