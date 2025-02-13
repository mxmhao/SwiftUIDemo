//
//  TestAnimation.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/11.
//

import SwiftUI

struct TestAnimation: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    @State var isShow = true
    @State var degree = 0.0
    
    var body: some View {
        HStack {
            Button("Click") {
                withAnimation(.easeInOut(duration: 2.0)) {
                    isShow.toggle()
//                    degree += 360
                }
//                withAnimation(Animation.default.repeatForever(autoreverses: false)) {
//                    isShow.toggle()
//                    degree += 360
//                }
            }
            Spacer()
            if (isShow) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(degree)) // 角度动画
//                .scaleEffect() // 伸缩动画
//                .transformEffect(.identity) // 平移动画
                .onAppear() { // 在出现的时候
                    withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: false)) {
                        degree = 360
                    }
                }
            Rectangle()
                .fill(Color.yellow)
                .frame(width: isShow ? 100 : 40, height: 100)
                .animation(.spring(response: 1.0, dampingFraction: 0.2, blendDuration: 0.3)) // 弹簧动画
        }
        .frame(width: appW, height: appH)
    }
}

#Preview {
    TestAnimation()
}
