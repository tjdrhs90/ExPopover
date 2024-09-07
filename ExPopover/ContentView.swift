//
//  ContentView.swift
//  ExPopover
//
//  Created by 심성곤 on 9/7/24.
//

import SwiftUI

// 팝오버
struct ContentView: View {
    
    @State private var showPopover = false
    
    var body: some View {
        Button("Popover") {
            showPopover.toggle()
        }
        .popover(isPresented: $showPopover) {
            PopoverView()
                .presentationCompactAdaptation(.popover)
        }
    }
}

struct PopoverView: View {
    var body: some View {
        Text("팝오버")
    }
}

#Preview {
    ContentView()
}
