//
//  TestImage.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/9/30.
//

import SwiftUI

struct TestImage: View {
    var color = Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) // 这里能用#colorLiteral()
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
//                .renderingMode(.original)//.original 会导致 foregroundColor 无效？
                .font(.largeTitle)
                .scaledToFit()
//                .scaledToFill()
                .background(Color.white)
                .foregroundColor(color)// 这里好像用不了 #colorLiteral()，真是扯淡，有些地方能用，有些不能用
//                .cornerRadius(30) // 圆角
                .clipShape(
//                    Circle()
                    RoundedRectangle(cornerRadius: 20)
                ) // 裁剪
//                .clipShape(Path(CGRect(x: 0, y: 0, width: 400, height: 200)))
                .shadow(color: .blue.opacity(0.5), radius: 10) // 阴影
                .overlay(// 覆盖物
                    Circle().fill(.red).frame(width: 100)
                        .overlay(// 覆盖物里再加覆盖
                            Text("100")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                                
                        )
                    , alignment: .bottomLeading // 对齐
                )
        }
        .frame(width: 400, height: 300)
    }
}

#Preview {
    TestImage()
}
