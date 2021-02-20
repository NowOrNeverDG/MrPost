//
//  ContentView.swift
//  MrPoDemo
//
//  Created by Ge Ding on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView().environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//一个变量加上?指这个变量可能为空 = optinal 类型 = 其实是一种枚举类型

//aspect ratio 宽高比
//widget 小控件
//enumeration 枚举
