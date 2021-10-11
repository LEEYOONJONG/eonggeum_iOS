//
//  LoginViewController.swift
//  eonggeum_iOS
//
//  Created by YOONJONG on 2021/10/08.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController {

    @IBOutlet weak var emailLoginButton: UIButton!
    // gidsigninbutton 은 uibutton 역시 상속함
    @IBOutlet weak var googleLoginButton: GIDSignInButton!
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
        // Google SignIn에서 웹뷰를 띄울 컨트롤러는 이 로그인뷰컨트롤러다.는 것을 선언
        GIDSignIn.sharedInstance().presentingViewController = self
    }

    @IBAction func googleLoginButtoonTapped(_ sender: Any) {
        // firebase 인증 코드
        GIDSignIn.sharedInstance().signIn()
    }
    @IBAction func appleLoginButtonTapped(_ sender: Any) {
        // firebase 인증 코드
    }
    
}
