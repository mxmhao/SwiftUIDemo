//
//  TestPresent.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/11.
//

import SwiftUI

// iOS 和 macOS的显示效果有点不一样，要自己看情况适配。macOS上要直接运行，不能在#Preview看效果
struct TestPresent: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    @State var isShow = false
    
    var body: some View {
        ZStack {
            Button("Click1") {
                withAnimation(.easeInOut(duration: 1.0)) {
                    isShow.toggle()
                }
            }
            .foregroundColor(.white)
//            .sheet(isPresented: $isShow, content: { // 弹sheet框
//                SecondView()
//            })
//            .fullScreenCover(isPresented: $isShow, content: {
//                SecondView()
//            })
            // ios15 以前的alert
//            .alert(isPresented: $isShow, content: {
//                Alert(title: Text("标题"), message: Text("消息"), primaryButton: .default(Text("要的"), action: {
//                    print("primaryButton")
//                }), secondaryButton: .cancel({
//                    print("secondaryButton")
//                }))
//            })
            // ios15 开始的alert
//            .alert("Title", isPresented: $isShow, actions: { // 2
//                // 3
//                Button("Cancel", role: .cancel, action: {})
//                Button("要的", role: .destructive, action: {})
//                Button("不要的", action: {})
//            }, message: {
//                // 4
//                Text("Message")
//            })
        }
        .frame(width: appW, height: appH)
        .background(Color.gray)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TestPresent()
}

struct SecondView: View {
    // 用到了环境
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.yellow
            Button("pop") {
                mode.wrappedValue.dismiss() // 退出当前全屏框
            }
            .foregroundColor(.white)
            .font(.title)
        }
        .ignoresSafeArea(edges: .bottom)
    }
}
