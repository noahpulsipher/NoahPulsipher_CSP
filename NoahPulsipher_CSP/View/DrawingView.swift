//
//  DrawingView.swift
//  NoahPulsipher_CSP
//
//  Created by Pulsipher, Noah on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // A empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect)
    {
        // Drawing code
        drawStickFigure().stroke()
        drawTurtle()
        drawAlienTree()
    }
    
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.green.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawAlienTree() -> Void
    {
        let alien = UIBezierPath()
        
        alien.move(to: CGPoint(x: 80, y: 50))
        alien.addLine(to: CGPoint(x: 120, y: 150))
        alien.addLine(to: CGPoint(x: 40, y: 150))
        alien.close()
        UIColor(patternImage: UIImage(named: "cute")!).setFill()
        UIColor.brown.setStroke()
        alien.lineWidth = 2.0
        alien.fill()
        alien.stroke()
        
        let alienTree = UIBezierPath()
        
        UIColor.green.setFill()
        alienTree.move(to: CGPoint(x: 110, y: 150))
        alienTree.addLine(to: CGPoint(x: 150, y: 200))
        alienTree.addLine(to: CGPoint(x: 10, y: 200))
        alienTree.addLine(to: CGPoint(x: 50, y: 150))
        alienTree.close()
        alienTree.stroke()
        alienTree.fill()
        alienTree.move(to: CGPoint(x: 80, y: 200))
        alienTree.addLine(to: CGPoint(x: 80, y: 250))
        alienTree.lineWidth = 6.0
        alienTree.stroke()
    }
}
