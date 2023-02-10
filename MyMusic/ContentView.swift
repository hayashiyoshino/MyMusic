//
//  ContentView.swift
//  MyMusic
//
//  Created by Yoshino Hayashi on 2023/02/05.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            BackgroundView(imageName: "background")
            // 横方向にレイアウト
            HStack {
                Button {
                    // ボタンをタップした時のアクション
                    // シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                } label: {
                    Image("cymbal")
                }
                Button {
                    // ボタンをタップした時のアクション
                    // ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                } label: {
                    Image("guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
