//
//  ViewController.swift
//  iPhome
//
//  Created by labmacmini12 on 24/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

/************************
 * 50 TONS DE TABLE VIEW
 * 1- UTILIZOU TABLEVIEW? DATASOURCES E DELEGATES
 *
 * 2- PRECISAM SER IMPLEMENTADOS NA CLASSE E O COMPONENTE VISUAL PRECISA ESTAR CONECTADO A ELA (VIA CODIGO OU STORYBOARD)
 *
 * 3- PRECISO DOS DATASETS - QUE SERÁ CONSULTADO PELO DATASOURCE
 *
 * 4- IMPLEMENTAR OS METODOS: QTD SECTIONS, QTD ROWS IN SECTION, CELLFORROW (RETORNA UM COMP. COMPLEXO DO TIPO CELULA)
 *
 * 5- PRECISO IR NA TABELA E HABILITAR O USO DE PROTOTIPOS DE CELULA. PARA CADA CELULA, INSERIR E POSICIONAR OS COMPONENTES
 *    E DEFINIR UM IDENTIFICADOR PARA RECUPERAR EM CÓDIGO
 *
 * 6- TER UMA CLASSE QUE CONTROLE A CELULA CRIADA
 *
 * 7- IMPLEMENTAR O CELLFORROW, INSTANCIANDO CELULAS E PREENCHENDO ATRAVES DOS OUTLETS CRIADOS NA CLASSE DE DESTINO
 */

class ViewController: UIViewController,
UITableViewDelegate,
UITableViewDataSource{
    
    //dataset utilizado para representar as seções
    var cardapio = ["Pizzas", "Bebidas", "Sobremesas"]
    
    var itemsCardapio = [["Calabresa","California","Mussarela","Portuguesa","Quatro Queijos"],
                         ["Cervejas","Vinhos","Sucos"],
                         ["Salada de Frutas","Sorvete","Torta Doce"]]
    
    
    

    /*********************preenche os metodos de datasource da tableview*************************/
    //define o numero de secoes da tabela
    func numberOfSections(in tableView: UITableView) -> Int {
        return cardapio.count
    }
    
    //retorna o titulo da seção
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cardapio[section]
    }
    
    //define o numero de linhas em cada seção
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsCardapio[section].count
    }
    
    //retorna uma celula que será utilizada para preencher a tabela
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cria as celulas
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "cell") as! CellController //criando uma celula a partir do identificador definido no storyboard
        celula.vrImagem.image = UIImage(named: itemsCardapio[indexPath.section][indexPath.row])
        celula.vrLabel.text = itemsCardapio[indexPath.section][indexPath.row]
        
        return celula
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

