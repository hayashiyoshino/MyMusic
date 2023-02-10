//
//  BackgroundView.swift
//  MyMusic
//
//  Created by Yoshino Hayashi on 2023/02/10.
//

import SwiftUI

struct BackgroundView: View {
    // 画像ファイル名
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
    }
}
