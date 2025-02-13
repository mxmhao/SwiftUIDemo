//
//  TestVStack.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/8.
//

import SwiftUI

struct TestVStack: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    var body: some View {
        VStack(alignment: .leading, // 对齐方式
               spacing: 10   // 间隔
        )
        {
            Circle()
                .fill(Color.red)
                .frame(width: 100)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Spacer() // 空白
//            Spacer(minLength: 10) // 空白
            Image(systemName: "location")
                .resizable()
                .frame(width: 100, height: 100)
        }
        .frame(width: appW, height: appH)
        .background(Color.yellow.cornerRadius(40).shadow(color: .blue.opacity(0.5), radius: 10)) // 颜色也是可以设置圆角和阴影
//        .padding(40) // 整个
        .padding(.leading, 40) // 左边距
        .padding(.bottom, 40)   // 底部边距
//        .padding(.all, 40)
    }
}

#Preview {
    TestVStack()
}
