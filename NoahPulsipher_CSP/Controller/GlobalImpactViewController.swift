//
//  GlobalImpactViewController.swift
//  NoahPulsipher_CSP
//
//  Created by Pulsipher, Noah on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class GlobalImpactViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        textMethod()
        // Do any additional setup after loading the view.
    }

    public func textMethod() -> Void
    {
        firstLabel.text = "Human rights is something that everyone on the planet should be garunteed; without them, none of us would enjoy the lives we live."
        secondLabel.text = "During my experiences I've had around the world, I saw people denied thier rights and suffer because of it."
        imageView.image = #imageLiteral(resourceName: "Human App")
    }
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var imageView: UIImageView!
   
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
