

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        
        performSegue(withIdentifier: "register", sender: nil)
    }
    
    @IBAction func btnForgot(_ sender: Any) {
        
        performSegue(withIdentifier: "forgot", sender: nil)
    }
    @IBAction func btnLogin(_ sender: Any) {
        
        performSegue(withIdentifier: "login", sender: nil)
    }
}

