//
//  Calculator.swift
//  LadoTsivtsivadze_43
//
//  Created by lado tsivtsivadze on 6/30/21.
//

import Foundation
import UIKit

struct Proportions {
    var segment1: Int
    var segment2: Int
    var segment3: Int
    var segment4: Int
    
    init(seg1: Int, seg2: Int, seg3: Int, seg4: Int) {
        segment1 = seg1
        segment2 = seg2
        segment3 = seg3
        segment4 = seg4
    }
}

class Calculator {
    
    var sum: Float = 0
    
    func calculate(inp1: Float, inp2: Float, inp3: Float, inp4: Float) -> Proportions {
        sum = inp1 + inp2 + inp3 + inp4
        
        let proportions = Proportions(seg1: <#Int#>,
                                      seg2: <#Int#>,
                                      seg3: <#Int#>,
                                      seg4: <#Int#>)
        return proportions
    }
}
