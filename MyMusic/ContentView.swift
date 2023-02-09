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
            // 背景画像を指定
            Image("background")
            // リサイズする
                .resizable()
            // セーフエリア外まで表示されるよう指定
                .ignoresSafeArea()
            // アスペクト比を維持してビューをその親に合わせてスケーリングする
                .scaledToFill()
            
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
