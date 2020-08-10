//
//  UrlAndString.swift
//  Utils
//
//  Created by USER on 2020/08/08.
//  Copyright © 2020 Yoshihisa Iijima. All rights reserved.
//

import Foundation

class UrlAndString {
    init() {
    }
    
    // URL型のフルパスからファイル名だけを抽出する
    func fullPathToFileName(fullPath : URL) -> String{
        // 最後の要素のみ取得
        return fullPath.lastPathComponent
    }
    
    // URL型のフルパスから最後の要素を削除したものを表示
    func fullPathToFilePath(fullPath : URL) -> URL {
        return fullPath.deletingLastPathComponent()
    }
    
    func urlToString(url: URL) -> String{
        return url.absoluteString
    }
    
    func StringToUrl(string: String) -> URL{
        return URL(fileURLWithPath: string)
    }
    
}
