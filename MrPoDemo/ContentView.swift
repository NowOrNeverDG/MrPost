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

//?指可能为空
