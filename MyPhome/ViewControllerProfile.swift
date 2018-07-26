//
//  ViewControllerProfile.swift
//  MyPhome
//
//  Created by labmacmini12 on 25/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class ViewControllerProfile: UIViewController {

    @IBOutlet weak var vrImage: UIImageView!
    @IBOutlet weak var vrUsername: UILabel!
    @IBOutlet weak var vrSwitchNotificacoes: UISwitch!
    @IBOutlet weak var vrScrollOfertas: UIScrollView!
    
    var username:String!
    
    var images = ["Calabresa","California","Mussarela","Portuguesa","Quatro Queijos", "Cervejas","Vinhos","Sucos", "Salada de Frutas","Sorvete","Torta Doce"]
    
    private func fillScrollView(){
        var contentSize = 0
        let offset = 5
        
        for image in images{
            let bitmap = UIImage(named: image)
            let ImageView = UIImageView(image: bitmap)
            
            //definindo o posicionamento inicial dos elementos dentro do scrollview
            var posInicial = CGPoint(x: contentSize + offset, y: 0)
            var tamanho = CGSize(width: 80, height: 80)
            ImageView.frame = CGRect(origin: posInicial, size: tamanho)
            
            contentSize += 80 + offset
            
            //redefine as dimenções do scrollView
            vrScrollOfertas.contentSize = CGSize(width: contentSize, height: 80)
            //adiciona a nova imagem dentro do scrollView
            vrScrollOfertas.addSubview(ImageView)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vrUsername.text = username
    }
    
    @IBAction func handleLogoff(_ sender: UIButton) {
        //.actionSheet cria um alert que espera uma resposat do usuario
        let alert = UIAlertController(title: "Atenção", message: "Deseja mesmo sair?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Não", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Sim", style: .default, handler:
            { (UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
            }
        ))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
  
    
    override func viewDidLoad() {
        fillScrollView()	
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
