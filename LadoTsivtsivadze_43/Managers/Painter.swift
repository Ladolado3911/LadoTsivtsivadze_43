//
//  Painter.swift
//  LadoTsivtsivadze_43
//
//  Created by lado tsivtsivadze on 6/30/21.
//

import Foundation
import UIKit

class Painter {
    
    static var shared = Painter()
    
    private init() {}
    
    func test(size sz: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: sz)
        let image = renderer.image { ctx in
            //ctx.cgContext.translateBy(x: sz.width / 2, y: sz.height / 2)
            let square = CGRect(x: 0,
                                y: 0,
                                width: 100,
                                height: 100)
            
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(0)
            
            ctx.cgContext.addEllipse(in: square)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        return image
    }
    
    func chessBoard(size sz: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: sz)
        let sq = sz.width / 8
        let image = renderer.image { ctx in
            for row in 0..<8 {
                for col in 0..<8 {
                    let square = CGRect(x: sq * CGFloat(col),
                                        y: sq * CGFloat(row),
                                        width: sq,
                                        height: sq)
                    let color = (row + col) % 2 == 0 ? UIColor.white.cgColor : UIColor.black.cgColor
                    ctx.cgContext.setFillColor(color)
                    ctx.cgContext.addRect(square)
                    ctx.cgContext.drawPath(using: .fillStroke)
                }
            }
        }
        return image
    }
    
    func rotatedSquare(size sz: CGSize) {
        let renderer = UIGraphicsImageRenderer(size: sz)
        let image = renderer.image { ctx in
            //ctx.cgContext.translateBy(x: sz.width / 2, y: sz.height / 2)
            let square = CGRect(x: 0, y: 0, width: 50, height: 50)
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.addRect(square)
            
            ctx.cgContext.drawPath(using: .fillStroke)
        }
    }
}
