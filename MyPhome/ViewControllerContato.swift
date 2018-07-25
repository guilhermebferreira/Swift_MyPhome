//
//  ViewControllerContato.swift
//  MyPhome
//
//  Created by labmacmini12 on 25/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerContato: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var vrMap: MKMapView!
    
    @IBAction func handleMapType(_ sender: UISegmentedControl) {
        
        switch (sender.selectedSegmentIndex) {
        case 0:
            vrMap.mapType = .satellite
        case 1:
            vrMap.mapType = .hybrid
        case 2:
            vrMap.mapType = .standard
        default:
            vrMap.mapType = .standard
        }
    }
    
    //funcção utilizada para criar um pino e posicionar a camera no mapa
    private func createPin(){
        //criar um pino
        let pin = MKPointAnnotation()
        pin.title = "MyPhome"
        pin.coordinate = CLLocationCoordinate2D(latitude: -10.17710, longitude: -48.332699)
        
        let zoom = MKCoordinateSpanMake(0.02,0.02)
        
        let regiao = MKCoordinateRegionMake(pin.coordinate, zoom)
        
        vrMap.setRegion(regiao, animated: true)
    }
    
    @IBAction func handleCall(_ sender: UIButton) {
        //cria e executa uma url para disparar uma ligação
        if let url = URL(string: "tel://\(080099999)"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    override func viewDidLoad() {
        createPin()
        vrMap.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //função chamada quando um pino (annotation) é clicado no mapa
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("PINO CLICADO")
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
