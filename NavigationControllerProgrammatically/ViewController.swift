//
//  ViewController.swift
//  NavigationControllerProgrammatically
//
//  Created by Sandip Das on 25/09/21.
//

import UIKit


//Navigation controllers
//Login > Home > Settings > General


//Login Page View Controller
class ViewController: UIViewController {
    
        let loginButton = DisplayButtons()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        loginButton.setTitle("Login", for: .normal)
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loginButton.center = view.center
    }
    
//Login button creates a navigationVC and adds HomeVC
    @objc func loginButtonPressed(){
        let NavigationController = UINavigationController()
        let vc1 = HomeViewController()
        NavigationController.setViewControllers([vc1], animated: false)
        NavigationController.modalPresentationStyle = .fullScreen
        present(NavigationController, animated: true, completion: nil)
    }
}


//MARK: HomeViewController - VC1
class HomeViewController: UIViewController{
    
    let settingsButton = DisplayButtons()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemTeal
        title = "Home"
        settingsButton.setTitle("Settings", for: .normal)
        view.addSubview(settingsButton)
        settingsButton.addTarget(self, action: #selector(settingsButtonPressed), for: .touchUpInside)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        settingsButton.center = view.center
    }
    
    //Settings Button pushes SettingsVC into navigationVC
    @objc func settingsButtonPressed(){
        let vc2 = SettingsViewController()
        navigationController?.pushViewController(vc2, animated: true)
    }
}


//MARK: Settings View Controller - VC2

class SettingsViewController: UIViewController{
    
    let generalButton = DisplayButtons()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemGreen
        title = "Settings"
        generalButton.setTitle("General", for: .normal)
        view.addSubview(generalButton)
        generalButton.addTarget(self, action: #selector(generalButtonPressed), for: .touchUpInside)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        generalButton.center = view.center
    }
    
    
    //General button pushes generalVC to navigationVC
    @objc func generalButtonPressed(){
        let vc3 = GeneralViewController()
        navigationController?.pushViewController(vc3, animated: true)
    }
}


//MARK: General View Controller - VC3

class GeneralViewController:UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemGray
        title = "General"
    }
}

