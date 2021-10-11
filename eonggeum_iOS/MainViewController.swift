import UIKit
import FirebaseAuth
class MainViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var resetPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // navigation 바 보이거나, 제스처로 뒤로 가기가 가능하면 안된다.
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // navi bar 숨기기
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? "someone"
        welcomeLabel.text = """
    \(email) 진입
"""
        let isEmailSignIn = Auth.auth().currentUser?.providerData[0].providerID == "password" // 로그인 방식이 패스워드라면 true
        resetPasswordButton.isHidden = !isEmailSignIn // 패스워드 방식이라면 숨기면 안됨.
    }


    @IBAction func logoutButtonTapped(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            self.navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("ERROR : signout \(signOutError.localizedDescription)")
        }
    }
    
    @IBAction func resetPasswordButtonTapped(_ sender: Any) {
        // 현재 사용자의 이메일로 비밀번호를 리셋할 수 있도록 메일 전송
        let email = Auth.auth().currentUser?.email ?? ""
        Auth.auth().sendPasswordReset(withEmail: email, completion: nil)
    }
}
