//
//  AppDelegate.swift
//  Transliterator
//
//  Created by Loren Petrich on 10/10/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

        var TLList = [TLWindow]()
        
        var CharTrans = ["ア":"a","イ":"i","ウ":"u","エ":"e","オ":"o","カ":"ka","キ":"ki","ク":"ku","ケ":"ke","コ":"ko","ガ":"ga","ギ":"gi","グ":"gu","ゲ":"ge","ゴ":"go","サ":"sa","シ":"shi","ス":"su","セ":"se","ソ":"so","ザ":"za","ジ":"ji","ズ":"zu","ゼ":"ze","ゾ":"zo","タ":"ta","チ":"chi","ツ":"tsu","テ":"te","ト":"to","ダ":"da","ヂ":"ji","ヅ":"zu","デ":"de","ド":"do","ナ":"na","ニ":"ni","ヌ":"nu","ネ":"ne","ノ":"no","ハ":"ha","ヒ":"hi","フ":"fu","ヘ":"he","ホ":"ho","バ":"ba","ビ":"bi","ブ":"bu","ベ":"be","ボ":"bo","パ":"pa","ピ":"pi","プ":"pu","ペ":"pe","ポ":"po","マ":"ma","ミ":"mi","ム":"mu","メ":"me","モ":"mo","ヤ":"ya","ユ":"yu","ヨ":"yo","ラ":"ra","リ":"ri","ル":"ru","レ":"re","ロ":"ro","ワ":"wa","ヰ":"wi","ヱ":"we","ヲ":"wo","ャ":"ya","ュ":"yu","ョ":"yo","ン":"n","ッ":"c","ー":":"]

        func applicationDidFinishLaunching(_ aNotification: Notification) {
            // Make a window
            newDocument(self)
        }
        
        // Create an app window
        @IBAction func newDocument(_ sender: Any?) {
            let TL = TLWindow()
            TL.CharTrans = self.CharTrans
            TLList.append(TL)
            TL.showWindow(self)
        }
}
