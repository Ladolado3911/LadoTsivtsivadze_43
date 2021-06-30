//
//  Calculator.swift
//  LadoTsivtsivadze_43
//
//  Created by lado tsivtsivadze on 6/30/21.
//

import Foundation
import UIKit

struct Proportions {
    var segment1: Float
    var segment2: Float
    var segment3: Float
    var segment4: Float
    
    init(seg1: Float, seg2: Float, seg3: Float, seg4: Float) {
        segment1 = seg1
        segment2 = seg2
        segment3 = seg3
        segment4 = seg4
    }
}

class Calculator {
    
    private var sum: Int = 0
    
    func calculate(inp1: Int, inp2: Int, inp3: Int, inp4: Int) -> Proportions {
        sum = inp1 + inp2 + inp3 + inp4 
        
        let proportions = Proportions(seg1: getPercent(inp: inp1),
                                      seg2: getPercent(inp: inp2),
                                      seg3: getPercent(inp: inp3),
                                      seg4: getPercent(inp: inp4))
        
        sum = 0
        return proportions
    }
    
    private func getPercent(inp: Int) -> Float {
        let num = (Float(inp) / Float(sum)) * 100
        return num
    }
}
