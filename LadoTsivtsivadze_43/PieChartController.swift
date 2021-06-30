//
//  ViewController.swift
//  LadoTsivtsivadze_43
//
//  Created by lado tsivtsivadze on 6/30/21.
//

import UIKit

class PieChartController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = Painter.shared.pieChart(imageSize: imgView.frame.size)
        
        
    }
    
    @IBAction func slider1(_ sender: UISlider) {
        
        
    }
    
    @IBAction func slider2(_ sender: UISlider) {
        
        
    }
    
    @IBAction func slider3(_ sender: UISlider) {
        
        
    }
    
    @IBAction func slider4(_ sender: UISlider) {
        
        
    }
}


