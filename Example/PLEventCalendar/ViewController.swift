//
//  ViewController.swift
//  PLEventCalendar
//
//  Created by 1248667206@qq.com on 09/07/2020.
//  Copyright (c) 2020 1248667206@qq.com. All rights reserved.
//

import UIKit
import PLEventCalendar

class ViewController: UIViewController {
    
    lazy var addEventBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("添加日历", for: .normal)
        btn.addTarget(self, action: #selector(advEventClick), for: .touchUpInside)
        return btn
    }()
    
    lazy var removeEventBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .green
        btn.setTitle("移除日历", for: .normal)
        btn.addTarget(self, action: #selector(removeEventBtnClick), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(addEventBtn)
        view.addSubview(removeEventBtn)
        addEventBtn.frame = CGRect(x: 100, y: 50, width: 80, height: 80)
        removeEventBtn.frame = CGRect(x: 100, y: 200, width: 80, height: 80)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func advEventClick() {
        PLEventManger.shared.openCalendarReminder(remindCount: 3)
    }
    
    @objc func removeEventBtnClick() {
        PLEventManger.shared.closeCalendarReminder()
    }

}

