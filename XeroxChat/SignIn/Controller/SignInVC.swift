//
//  ViewController.swift
//  XeroxChat
//
//  Created by MyScrap on 7/19/18.
//  Copyright © 2018 mybucket. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {
    
    private let userNameTextField: XeroxTextField = {
        let tf = XeroxTextField()
        tf.placeholder = "Username"
        return tf
    }()
    
    private let passwordTextField: XeroxTextField = {
        let tf = XeroxTextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let signInButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("SignIn", for: .normal)
        btn.backgroundColor = UIColor.blue
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.white
        
        let stackView =  UIStackView(arrangedSubviews: [userNameTextField,passwordTextField,signInButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
        stackView.setHorizontalCentertoSuperView()
        
       NSLayoutConstraint.activate([
        stackView.topAnchor.constraint(equalTo: view.safeTop, constant: view.bounds.width / 5),
        stackView.widthAnchor.constraint(equalToConstant: 270)
        ])
        
        
        
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .portrait
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

class XeroxTextField: UITextField{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    private func setupViews(){
        
    }
    
}



