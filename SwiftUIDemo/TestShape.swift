//
//  Shape.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/9/30.
//

import SwiftUI

struct TestShape: View {
    
    // #colorLiteral() 插件的使用
    var color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)

    
    var body: some View {
//        Circle() // 圆形
//        Ellipse() // 椭圆
//        Capsule() // 胶囊型
        RoundedRectangle(cornerRadius: 25)// 圆角矩形
        // 属性设置是有顺序的，有些属性在后面设置可能点不出来，或者报错
//            .stroke(Color.yellow, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [20, 15])) // 描边
            .fill(Color.red) // 填充色， 有些低版本不支持或者和stroke冲突
            .frame(width: 400, height: 300)
            .background(Color.blue)
            .clipShape(Path(CGRect(x: 0, y: 0, width: 400, height: 200)))// 裁剪，在path内的可显示
            .shadow(color: .black.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -10, y: -10) // 阴影
            .padding()
            
    }
}

#Preview {
    TestShape()
}
