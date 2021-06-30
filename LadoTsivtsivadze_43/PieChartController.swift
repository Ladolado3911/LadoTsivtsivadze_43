//
//  ViewController.swift
//  LadoTsivtsivadze_43
//
//  Created by lado tsivtsivadze on 6/30/21.
//

import UIKit

class PieChartController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = Painter.shared.pieChart(imageSize: imgView.frame.size)
        
        
    }
    
    @IBAction func didSlide(_ sender: UISlider) {
//        imgView.image = nil
//        imgView.image = Painter.shared.rotatedSquare(size: imgView.frame.size, rotations: Int(sender.value))
//        print(sender.value)
//
    }
}


