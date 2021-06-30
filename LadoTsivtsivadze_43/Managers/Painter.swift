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
    
    func pieChart(imageSize sz: CGSize, proportions prop: Proportions) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: sz)
        let diameter = sz.width - 40
        let radius = diameter / 2
        let center = CGPoint(x: sz.width / 2, y: sz.height / 2)
        
        let image = renderer.image { ctx in
            let lengths = [
                ((.pi * 2.0) * CGFloat(prop.segment1)) / 100,
                ((.pi * 2.0) * CGFloat(prop.segment2)) / 100,
                ((.pi * 2.0) * CGFloat(prop.segment3)) / 100,
                ((.pi * 2.0) * CGFloat(prop.segment4)) / 100,
            ]

            var prevEndAngle: CGFloat = 0.0
            
            for a in 0..<4 {
                let length = lengths[a]
                print("length: \(length)")
                print("prevEndAngle: \(prevEndAngle)")

                ctx.cgContext.addArc(center: center,
                                     radius: radius,
                                     startAngle: prevEndAngle,
                                     endAngle: prevEndAngle + length,
                                     clockwise: false)
                
                ctx.cgContext.addLine(to: center)
                prevEndAngle += length
                
                switch a {
                case 0:
                    ctx.cgContext.setFillColor(UIColor.red.cgColor)
                case 1:
                    ctx.cgContext.setFillColor(UIColor.blue.cgColor)
                case 2:
                    ctx.cgContext.setFillColor(UIColor.yellow.cgColor)
                default:
                    ctx.cgContext.setFillColor(UIColor.green.cgColor)
                }

                ctx.cgContext.drawPath(using: .fillStroke)
            }
            ctx.cgContext.setLineWidth(0)
        }
        return image
    }
    
    
    
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
    
    func rotatedSquare(size sz: CGSize, rotations rot: Int) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: sz)
        let image = renderer.image { ctx in
            //ctx.cgContext.translateBy(x: sz.width / 2, y: sz.height / 2)
            let square = CGRect(x: (sz.width / 2) - 25, y: (sz.height / 2) - 25, width: 50, height: 50)
            
            let amount = CGFloat(.pi / Double(rot))
            
            for _ in 0..<rot {
                ctx.cgContext.rotate(by: amount)
                ctx.cgContext.addRect(square)
            }
            
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setLineWidth(0)

            ctx.cgContext.drawPath(using: .fillStroke)
        }
        return image
    }
}
