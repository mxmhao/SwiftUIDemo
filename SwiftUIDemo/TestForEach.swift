//
//  TestForEach.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/9.
//

import SwiftUI

struct TestForEach: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    let data = ["apple", "xiaomi", "oppo", "huawei", "oppo", "huawei"]
    let data2 = [MyData(name: "apple"),
                 MyData(name: "xiaomi"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei")]
    
    var body: some View {
        VStack {
//            ForEach(data, id: \.self) { d in // id以数据自身为索引，数据重复时会报错，在 #Preview 中不体现，真正运行会报错。这个时候要使用自定义id
//                Text(d)
//                    .frame(width: 100, height: 30)
//                    .background(Color.blue)
//            }
            
            // 这里是用的下标
//            ForEach(data.indices, id: \.self) { i in
//                Text(data[i])
//                    .frame(width: 100, height: 30)
//                    .background(Color.blue)
//            }
            
            // 自定义id索引
            ForEach(data2) { d in
                Text(d.name)
                    .frame(width: 100, height: 30)
                    .background(Color.blue)
            }
        }
        .frame(width: appW, height: appH)
    }
}

#Preview {
    TestForEach()
}


struct MyData: Identifiable { // Identifiable 有自定义id索引
    let id = UUID()
    var name: String
}
