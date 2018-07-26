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
        
        if(vrUsername.text!.isEmpty){
            let alert = UIAlertController(title: "Atenção", message: "Preencha o nome de usuário", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            if(vrPassword.text == "123"){
                //busca a referencia para a tabbar
                let proximaTela = storyboard?.instantiateViewController(withIdentifier: "tabbar") as! UITabBarController
                //a partir da tabbar busca a referencia para a tela de perfil
                let telaProfile = proximaTela.viewControllers![0] as! ViewControllerProfile
                //seta o parametro da tela de perfil
                telaProfile.username = vrUsername.text
                //solicita a exibição da tela de tabbar com perfil na primeira posição
                self.present(proximaTela, animated: true, completion: nil)
            }else{
                let alert = UIAlertController(title: "Atenção", message: "Usuário ou senha inválidos", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //limpa os campos preenchidos quando o user realiza logoff
        vrUsername.text = ""
        vrPassword.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        vrUsername.resignFirstResponder()
        vrPassword.resignFirstResponder()
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
