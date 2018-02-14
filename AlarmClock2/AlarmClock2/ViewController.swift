//
//  ViewController.swift
//  AlarmClock2
//
//  Created by home on 2018/02/06.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // アラームの変数を作成
    var timer : Timer?
    // カウント（経過時間）の変数を作成
    var count = 0
    // 設定値を扱うキーを設定
    let settingKey = "timer_value"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UserDefaultsのインスタンスを生成
        let settings = UserDefaults.standard
        // UserDefaultsに初期値を登録
        settings.register(defaults: [settingKey: NSDate()])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var alarmLabel: UILabel!
    
    @IBAction func settingButtonAction(_ sender: Any) {
        // アラームをアンラップしてnowTimerに代入
        if let nowTimer = timer {
            // もしアラームが、実行中だったら停止
            if nowTimer.isValid == true {
                // アラーム停止
                nowTimer.invalidate()
            }
        }
        // 画面遷移を行う
        performSegue(withIdentifier: "goSetting", sender: nil)
    }
    
    @IBAction func switchButtonAction(_ sender: Any) {
    }
}

// 画面切り替えのタイミングで処理を行なう
override func viewDidAppear(_ animated: Bool) {
    // カウント(経過時間)をゼロにする
    count = 0
    // アラームの表示を更新する
    _ = displayUpdate()
}
