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
    let settingKey = "alarm_value"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

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
        
        let calendar = Calendar.current
        let date = Date()
        
        // 明日の日付を取得
        let day_tomorrow = calendar.date(
            byadding: .day, value 1, to: calendar.startOfDay(for: date))
        // 昨日の日付を取得
        let day_yesterday = calendar.date(
            byadding: .day, value -1, to: calendar.startOfDay(for: date))
        
        // 現在の日付を取得
        let date :Date =Date()
        
        // 日付のフォーマットを指定する
        let format = DateFormatter()
        format.dateFormat = "yyyy/MM/dd"
        
    }
    
    @IBAction func decisionButtonAction(_ sender: Any) {
        Label.text = "\(Picker.date)"
    }
    

}
