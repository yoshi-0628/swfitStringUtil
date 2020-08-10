//
//  ViewController.swift
//  Utils
//
//  Created by USER on 2020/08/08.
//  Copyright © 2020 Yoshihisa Iijima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onpress(_ sender: Any) {
        
        let DocumentsPath = NSHomeDirectory() + "/Documents"
        
        let fullPath = URL(fileURLWithPath: DocumentsPath).appendingPathComponent("sample.jpg")
        print("フルパス　\(fullPath)")
        
        let fileName = UrlAndString().fullPathToFileName(fullPath: fullPath)
        print("ファイル名"+fileName)
        
        let filePath = UrlAndString().fullPathToFilePath(fullPath: fullPath)
        print("ファイルパス \(filePath)")
        
        let stringName = UrlAndString().urlToString(url: filePath)
        print("String型"+stringName)
        
        let urlName = UrlAndString().StringToUrl(string: stringName)
        print("URL型 \(urlName)")
    }
    
    func backUp(){
        //let path = "https://nanka-url/"
        let directory = "image"
        let imageName = "sample"
        let imageExtension = "jpg"
        let DocumentsPath = NSHomeDirectory() + "/Documents"
        
        let fullPath = URL(fileURLWithPath: DocumentsPath).appendingPathComponent("sample.jpg")
        print("フルパス　\(fullPath)")
        
        
        
        
        // 文字列をURLに変換
        let urlPath = URL(fileURLWithPath: DocumentsPath)
        print("26行目　\(urlPath)") // https:/nanka-url
        
        // URLにディレクトリを追加（isDirectoryをtrueにした場合。falseにすると末尾に/がつかない）
        let urlDirectory = urlPath.appendingPathComponent(directory, isDirectory: true)
        print("30行目　\(urlDirectory)") //https:/nanka-url/image/
        
        // URLにファイル名を追加
        let urlImageName = urlDirectory.appendingPathComponent(imageName)
        print("34行目　\(urlImageName)") // https:/nanka-url/image/sample
        
        // URLのファイル名に拡張子を追加
        let urlExtension = urlImageName.appendingPathExtension(imageExtension)
        print("38行目　\(urlExtension)") // https:/nanka-url/image/sample.jpg
        
        // URLのファイル名の拡張子を削除
        let urlDeleteExtension = urlExtension.deletingPathExtension()
        print("42行目　\(urlDeleteExtension)") // https:/nanka-url/image/sample
        
        // URLの最後の項目を削除
        let urlDeleteLastPath = urlDeleteExtension.deletingLastPathComponent()
        print("46行目　\(urlDeleteLastPath)") // https:/nanka-url/image/
        
        // URLの最後の項目名を取得
        let fileName = urlExtension.lastPathComponent
        print("50行目　\(fileName)") // sample.jpg
        
        // URLの最後の項目の拡張子を取得
        let fileExtension = urlExtension.pathExtension
        print("54行目　\(fileExtension)") // jpg
        
        // URLの各項目を配列で取得
        let component = urlExtension.pathComponents
        print("58行目\(component)") // ["/", "nanka-url", "image", "sample.jpg"]
    }
}

