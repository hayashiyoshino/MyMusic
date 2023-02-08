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
    
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    }
}
