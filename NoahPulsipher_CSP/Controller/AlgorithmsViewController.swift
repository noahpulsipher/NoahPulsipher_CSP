//
//  AlgorithmsViewController.swift
//  NoahPulsipher_CSP
//
//  Created by Pulsipher, Noah on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.

import UIKit

public class AlgorithmsViewController: UIViewController
{
    // MARK: Data members
   @IBOutlet weak var firstLabel: UILabel!
    
    override public func viewDidLoad()
        {
            super.viewDidLoad()
            setupAlgorithm()
        // Do any additional setup after loading the view.
        }

    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        // MARK: Definition of algorithms
        let algorithm: String = "The are the instructions to create a poject in Swift using Xcode and Github \n"
        let stepOne: String = "First, open Xcode and click on create new Xcode project."
        let stepTwo: String = "Make sure that Single View App is selected and click next and Name your project something that relates to what it does and put it into your swift projects folder."
        let stepThree: String = "Now go to github and click file and then new repository and in repository name bar type exactly what you put for the name of the project. Also on this window, you need to go to the Git Ignore dropdown and click on Swift and then create repository."
        let stepFour: String = "Now click undo where it says initial commit at the bottom left of the screen. After that, go to the top of the screen, select Repository and then Repository Settings… and then Ignored Files and type .DS_Store and then save."
        let stepFive: String = "Now change the commit statement form initial commit to an english sentence that explains what the project will doe and how you changed the git ignore files and then hit the blue Commit to master button."
        let stepSix: String = "Now that you have done all of that, head over to Xcode and organize files how you would like and begin working on your project. Don’t forget to make commits every so often, especially after making a big change or saving."
        
        // TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        
        let attributesDictionary = [NSAttributedStringKey.font : firstLabel.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet: String = "🕋"
            let formattedStep: String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        firstLabel.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }

    override public func didReceiveMemoryWarning()
        {
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
