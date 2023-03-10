//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Yoshino Hayashi on 2023/02/08.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // シンバルの音源データを読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    // ギターの音源データを読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    // ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            // シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            // シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    
    func guitarPlay() {
        do {
            // ギター用のプレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            
            // ギターの音源再生
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
}
