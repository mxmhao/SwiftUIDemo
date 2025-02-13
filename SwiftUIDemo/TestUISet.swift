//
//  TestUISet.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/8.
//

import SwiftUI

//
struct TestUISet: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //---------这两个设置的顺序会影响背景色的范围，可以交互顺序调试----------------
                .background(Color.blue)
                .frame(width: 100, height: 50, alignment: .bottomLeading)
            //-----------------------
            
            // 多设置几次会有叠加效果，逐步打开下面的代码试试
//                .frame(width: 100, height: 50, alignment: .trailing)
//                .background(Color.yellow)
            
//                .frame(width: 300, height: 50)
//                .background(Color.green)
        }
        .frame(width: 600, height: 400)
    }
}

#Preview {
    TestUISet()
}
