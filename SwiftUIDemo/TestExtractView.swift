//
//  TestExtractView.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/10.
//

import SwiftUI

struct TestExtractView: View {
#if os(iOS)
    @State var appW = UIScreen.main.bounds.width
    @State var appH = UIScreen.main.bounds.height
#elseif os(macOS)
    @State var appW = NSScreen.main!.visibleFrame.width / 3.0
    @State var appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    @State var title = "click1"
    
    var body: some View {
        ExtractView(appW: $appH, appH: $appW, title: $title)
    }
}

#Preview {
    TestExtractView()
}

struct ExtractView: View {
    @Binding var appW: CGFloat
    @Binding var appH: CGFloat
    
    @Binding var title: String
    
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
