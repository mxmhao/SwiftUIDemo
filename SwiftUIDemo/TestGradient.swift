//
//  TestGradient.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/9/30.
//

import SwiftUI

struct TestGradient: View {
    
    var colorStart = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
    var colorEnd = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    
    var body: some View {
        VStack {
//            LinearGradient(colors: [Color(colorStart), Color(colorEnd)], startPoint: .leading, endPoint: .trailing)
            RadialGradient(colors: [Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))], center: .topLeading, startRadius: 100, endRadius: 600)// topLeading 表示渐变点在左上角
        }
    }
}

#Preview {
    TestGradient()
}
