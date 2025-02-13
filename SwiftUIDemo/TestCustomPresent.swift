//
//  TestCustomPresent.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/11.
//

import SwiftUI

struct TestCustomPresent: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    @State var isShow = false
    
    var body: some View {
        ZStack { // 这个很重要
            Button("Click1") {
                withAnimation(.easeInOut(duration: 1.0)) {
                    isShow.toggle()
                }
            }
            .foregroundColor(.white)
            if (isShow) {
                SecondView2(isShow: $isShow)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
            }
//            SecondView2(isShow: $isShow)
//                .padding(.top, 100)
//                .offset(y: isShow ? 0 : appH)
//                .transition(.move(edge: .bottom))
            
        }
        .frame(width: appW, height: appH)
        .background(Color.gray)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TestCustomPresent()
}

struct SecondView2: View {
    // 用到了环境
    @Environment(\.presentationMode) var mode
    @Binding var isShow: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.yellow.cornerRadius(25)
                .ignoresSafeArea(edges: .bottom)
            Button("pop") {
                isShow.toggle()
            }
            .foregroundColor(.white)
            .font(.title)
        }
    }
}
