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

    // DatePickerのデリゲートとデータソースの通知先を設定
    datePicker.delegate = self
    datePicker.dataSource = self
    
    // UserDefaultsの取得
    let settings = UserDefaults.standard
    let timerValue = settings.integer(forKey: settingKey)
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func alarmSettingPicker(_ sender: Any) {
    }
    
    @IBAction func decisionButtonAction(_ sender: Any) {
    }
    

}
