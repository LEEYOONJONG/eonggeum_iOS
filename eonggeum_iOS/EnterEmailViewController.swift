//
//  EnterEmailViewController.swift
//  eonggeum_iOS
//
//  Created by YOONJONG on 2021/10/08.
//

import UIKit

class EnterEmailViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.layer.cornerRadius = 20
        
        // 처음 들어왔을땐 다음 버튼 비활성화 되어야.
        nextButton.isEnabled = false
        
        // text값들을 받아오려면 텍스트필드 델리게이트 설정이 필요하다.
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // 화면 처음 떴을 때 커서를 텍스트필드로
        emailTextField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Navigation bar 보이기
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
    }
    
}

extension EnterEmailViewController:UITextFieldDelegate {
    // 리턴 누르면 키보드 내림
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    // 입력했으면 다음 버튼 활성화
    func textFieldDidEndEditing(_ textField: UITextField) {
        let isEmailEmpty = emailTextField.text == ""
        let isPasswordEmpty = passwordTextField.text == ""
        nextButton.isEnabled = !isEmailEmpty && !isPasswordEmpty
    }
    
}
