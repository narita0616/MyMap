//
//  ContentView.swift
//  MyMap
//
//  Created by 成田陸人 on 2023/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = ""
    @State var displaySearchKey: String = "東京駅"
    var body: some View {
        VStack{
            TextField("キーワード",text: $inputText, prompt: Text("キーワードを入力してください"))
                .onSubmit {
                    displaySearchKey = inputText
                }
                .padding()
            
            
            MapView(searchKey: displaySearchKey)
        }
    }
}

#Preview {
    ContentView()
}
