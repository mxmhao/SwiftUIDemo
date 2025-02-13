//
//  TestButton.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/10.
//

import SwiftUI

struct TestButton: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    @State var title = "click1"
    
    var body: some View {
        VStack {
            Button(title) {
                print("click1")
                title = "click3"
            }
            .accentColor(.blue)
            .font(.system(size: 20, weight: .bold))
            
            
            Button(action: {
                print("click2")
            }, label: {
                Text("Click2")
                    .frame(width: 100, height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))
                    .cornerRadius(10)
            })
//            .buttonStyle(.borderless) // 去掉边框
//            .buttonStyle(.borderedProminent) // 点击时背景高亮效果
//            .tint(.blue)
        }
        .frame(width: appW, height: appH)
    }
}

#Preview {
    TestButton()
}
