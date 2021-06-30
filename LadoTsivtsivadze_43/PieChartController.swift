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
    
    var proportions: Proportions?
    
    var val1: Int = 1
    var val2: Int = 1
    var val3: Int = 1
    var val4: Int = 1
    
    
    private var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTexts()
        imgView.image = Painter.shared.pieChart(imageSize: imgView.frame.size, proportions: proportions!)
        
    }
    
    func updateTexts() {
        let proportions2 = calculator.calculate(inp1: val1, inp2: val2, inp3: val3, inp4: val4)
        proportions = proportions2
        
        temp1.text = "\(proportions2.segment1.rounded())%"
        temp2.text = "\(proportions2.segment2.rounded())%"
        temp3.text = "\(proportions2.segment3.rounded())%"
        temp4.text = "\(proportions2.segment4.rounded())%"
        
        imgView.image = Painter.shared.pieChart(imageSize: imgView.frame.size, proportions: proportions!)
    }
 
    
    @IBAction func slider1(_ sender: UISlider) {
        val1 = Int(sender.value.rounded())
        //temp1.text = "\(Int(sender.value.rounded()))"
        print(val1)
        updateTexts()

    }
    
    @IBAction func slider2(_ sender: UISlider) {
        val2 = Int(sender.value.rounded())
        //temp2.text = "\(Int(sender.value.rounded()))"
        print(val4)
        updateTexts()
        
    }
    
    @IBAction func slider3(_ sender: UISlider) {
        val3 = Int(sender.value.rounded())
        //temp3.text = "\(Int(sender.value.rounded()))"
        print(val3)
        updateTexts()
        
    }
    
    @IBAction func slider4(_ sender: UISlider) {
        val4 = Int(sender.value.rounded())
        //temp4.text = "\(Int(sender.value.rounded()))"
        print(val4)
        updateTexts()
        
    }
}


