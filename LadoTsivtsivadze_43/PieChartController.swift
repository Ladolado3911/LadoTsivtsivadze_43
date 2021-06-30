//
//  ViewController.swift
//  LadoTsivtsivadze_43
//
//  Created by lado tsivtsivadze on 6/30/21.
//

import UIKit

class PieChartController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var temp1: UILabel!
    @IBOutlet weak var temp2: UILabel!
    @IBOutlet weak var temp3: UILabel!
    @IBOutlet weak var temp4: UILabel!
    
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider3: UISlider!
    @IBOutlet weak var slider4: UISlider!
    
    var val1: Int?
    var val2: Int?
    var val3: Int?
    var val4: Int?
    
    
    private var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.image = Painter.shared.pieChart(imageSize: imgView.frame.size)
        
    }
 
    
    @IBAction func slider1(_ sender: UISlider) {
        val1 = Int(sender.value.rounded())
        temp1.text = "\(Int(sender.value.rounded()))"
    
    }
    
    @IBAction func slider2(_ sender: UISlider) {
        val2 = Int(sender.value.rounded())
        temp2.text = "\(Int(sender.value.rounded()))"
        
    }
    
    @IBAction func slider3(_ sender: UISlider) {
        val3 = Int(sender.value.rounded())
        temp3.text = "\(Int(sender.value.rounded()))"
        
    }
    
    @IBAction func slider4(_ sender: UISlider) {
        val4 = Int(sender.value.rounded())
        temp4.text = "\(Int(sender.value.rounded()))"
        
    }
}


