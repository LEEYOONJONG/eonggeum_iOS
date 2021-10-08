//
//  MainViewController.swift
//  eonggeum_iOS
//
//  Created by YOONJONG on 2021/10/09.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // navigation 바 보이거나, 제스처로 뒤로 가기가 가능하면 안된다.
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // navi bar 숨기기
        navigationController?.navigationBar.isHidden = true
    }


    @IBAction func logoutButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
