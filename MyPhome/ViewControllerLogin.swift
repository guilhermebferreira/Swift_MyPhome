//
//  ViewControllerLogin.swift
//  MyPhome
//
//  Created by labmacmini12 on 25/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//


/*
 implementar tela de login do myphome
 - criar view controller
 - arrastar componentes
 - aplicar constraints
 - criar classe controloladora
 - criar outlets / actions 
 */

import UIKit

class ViewControllerLogin: UIViewController {
    
    @IBOutlet weak var vrUsername: UITextField!
    @IBOutlet weak var vrPassword: UITextField!
    
    @IBAction func handleLogin(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
