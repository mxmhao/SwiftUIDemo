//
//  TestGrid.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/10/9.
//

import SwiftUI

struct TestGrid: View {
#if os(iOS)
    let appW = UIScreen.main.bounds.width
    let appH = UIScreen.main.bounds.height
#elseif os(macOS)
    let appW = NSScreen.main!.visibleFrame.width / 3.0
    let appH = NSScreen.main!.visibleFrame.height / 3.0
#endif
    
    // 定义行列的属性
    let gridItems = [
        GridItem(.flexible(), spacing: 10, alignment: .center),
        GridItem(.flexible(), spacing: 10, alignment: .center),
        GridItem(.flexible(), spacing: 10, alignment: .center),
        GridItem(.flexible(), spacing: 10, alignment: .center),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: gridItems, // 这里就相当于4列
                alignment: .center,
                spacing: 10
            ) {
                Section(
                    header:Text("Section1")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.blue)) {
                    ForEach(0..<10) {_ in
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 100)
                            .cornerRadius(5)
                    }
                }
                Section(header: Text("Section2")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.blue)) {
                    ForEach(0..<10) {_ in
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 100)
                            .cornerRadius(5)
                    }
                }
            }
        }
        .frame(width: appW, height: appH)
    }
}

#Preview {
    TestGrid()
}
