//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by macmini on 2024/9/30.
//

import SwiftUI

struct TestText: View {
    var body: some View {
        Text("你好，ontentView.swift asdfasdfasasdfa \n sdfasfefasgase")
            .font(.title)
            .multilineTextAlignment(.trailing)//多行对齐
            .padding()
        
    }
}

#Preview {
    TestText()
}
