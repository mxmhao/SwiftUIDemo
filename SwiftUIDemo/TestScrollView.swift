//
//  TestScrollView.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/9.
//

import SwiftUI

struct TestScrollView: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    let data2 = [MyData(name: "apple"),
                 MyData(name: "xiaomi"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei"),
                 MyData(name: "oppo"),
                 MyData(name: "xiaomi"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei"),
                 MyData(name: "oppo"),
                 MyData(name: "xiaomi"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei"),
                 MyData(name: "oppo"),
                 MyData(name: "xiaomi"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei"),
                 MyData(name: "oppo"),
                 MyData(name: "xiaomi"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei"),
                 MyData(name: "oppo"),
                 MyData(name: "xiaomi"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei"),
                 MyData(name: "oppo"),
                 MyData(name: "huawei")]
    
    var body: some View {
        /*
         ScrollView 并不必须与 Stack 视图（如 VStack 或 HStack）一起使用。虽然最常见的用法是将 ScrollView 与 Stack 结合，以便在滚动时排列多个视图，但你也可以将其他类型的视图直接放入 ScrollView 中。
         
         使用 ScrollView 配合 Stack 视图（如 VStack 或 HStack）有以下几个好处：

         自动排列：Stack 视图能够自动排列其子视图，简化了布局的管理。你可以轻松地添加、删除或修改视图，而不必手动计算位置。

         灵活的布局：通过 VStack 和 HStack，可以轻松实现纵向或横向的排列，ScrollView 则允许用户在需要时滚动查看内容，尤其适合内容较多的场景。

         可自定义间距：Stack 提供了 spacing 参数，可以很方便地设置子视图之间的间隔，使得布局更具美观性和可读性。

         动态内容：结合 ForEach 使用时，可以轻松展示动态生成的列表或集合，例如从数组中读取数据并呈现，增强了代码的可复用性。

         适应不同屏幕尺寸：Stack 可以根据屏幕的大小和方向自动调整布局，这使得应用在不同设备上更加适应。

         兼容性：Stack 视图与其他 SwiftUI 组件（如 Spacer、Divider）配合使用，可以创建更加复杂的布局，同时保持简洁性和可读性。
         */
        ScrollView(.vertical, // 滚动方向
                   showsIndicators: false // 是否显示滚动条
        )
        {
            LazyVStack { // 当数据量很多的时候使用 Lazy 可以改善性能
                ForEach(data2) { d in
                    Text(d.name)
                        .frame(width: 100, height: 30)
                        .background(Color.blue)
                }
            }
        }
        .frame(width: appW, height: appH)
    }
}

#Preview {
    TestScrollView()
}
