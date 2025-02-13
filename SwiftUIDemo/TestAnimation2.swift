//
//  TestAnimation2.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/11.
//

import SwiftUI

// 这个在iOS下查看动画效果
struct TestAnimation2: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    @State var isShow = true
    
    var body: some View {
        VStack {
            Spacer()
            Button("Click") {
                withAnimation(.easeInOut(duration: 1.0)) {
                    isShow.toggle()
                }
            }
            .foregroundColor(.white)
//            .buttonStyle(.bordered)
            Spacer()
            if isShow {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.yellow)
                    .frame(width: appW, height: appH/2)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .opacity.animation(.easeInOut(duration: 0.6)))) // asymmetric 不对称动画，出入不一样的动画
            }
        }
        .frame(width: appW, height: appH)
        .background(Color.gray)
        .ignoresSafeArea(edges: .bottom)
        
    }
}

#Preview {
    TestAnimation2()
}
