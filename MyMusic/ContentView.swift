//
//  ContentView.swift
//  MyMusic
//
//  Created by Yoshino Hayashi on 2023/02/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 背景画像を指定
            Image("background")
            // リサイズする
                .resizable()
            // セーフエリア外まで表示されるよう指定
                .ignoresSafeArea()
            // アスペクト比を維持してビューをその親に合わせてスケーリングする
                .scaledToFill()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
