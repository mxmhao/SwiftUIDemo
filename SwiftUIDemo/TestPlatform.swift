//
//  TestPlatform.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/8.
//

import SwiftUI

struct TestPlatform: View {

#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 100)
                .background(Color.blue)
        }
        .frame(width: appW, height: appH)
    }
}

#Preview {
    TestPlatform()
}
