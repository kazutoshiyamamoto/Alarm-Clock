//
//  SettingViewController.swift
//  AlarmClock2
//
//  Created by home on 2018/02/07.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // 設定値を覚えるキーを設定
    let settingKey = "timer_value"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    // alarmSettingPickerのデリゲートになる
    alarmSettingPicker.delegate = self
    // alarmSettingPickerのデータソースになる
    alarmSettingPicker.dataSource = self
    
    // UserDefaultsの取得
    let settings = UserDefaults.standard
    let timerValue = settings.integer(forKey: settingKey)
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func alarmSettingPicker(_ sender: Any) {
        
        //日付のフォーマットを指定する。
        let format = DateFormatter()
        format.dateFormat = "M月d日 HH:mm"
        
        //日付をStringに変換する
        let sDate = format.string(from: alarmSettingPicker.date)
        
    }
    
    @IBAction func decisionButtonAction(_ sender: Any) {
        // 前画面に戻る
        _ = navigationController?.popViewController(animated: true)
    }
}


// ユーザーデフォルトでシーン感のデータ受け渡しを行う
// もし現在時刻と設定した時刻が合致したら音を鳴らす
