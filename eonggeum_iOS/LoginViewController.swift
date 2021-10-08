//
//  LoginViewController.swift
//  eonggeum_iOS
//
//  Created by YOONJONG on 2021/10/08.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailLoginButton: UIButton!
    @IBOutlet weak var googleLoginButton: UIButton!
    @IBOutlet weak var appleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        [emailLoginButton, googleLoginButton, appleLoginButton].forEach {
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.layer.cornerRadius = 30
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Navigation bar 숨기기
        navigationController?.navigationBar.isHidden = true
    }

    @IBAction func googleLoginButtoonTapped(_ sender: Any) {
        // firebase 인증 코드
    }
    @IBAction func appleLoginButtonTapped(_ sender: Any) {
        // firebase 인증 코드
    }
    
}
