//
//  TestSafeArea.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/9.
//

import SwiftUI

struct TestSafeArea: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    var body: some View {
        Color.blue
            .frame(width: appW, height: appH) // 如果设置成全屏，下面的安全区域忽略可能无效
//            .ignoresSafeArea() // 忽略所有的安全区域
//            .ignoresSafeArea(.all) // 忽略所有的安全区域
//            .ignoresSafeArea(edges: .bottom) // 只忽略底部
//            .ignoresSafeArea(edges: .leading) // 只忽略开头
    }
}

#Preview {
    TestSafeArea()
}
