//
//  Like Adoption.swift
//  NoahPulsipher_CSP
//
//  Created by Pulsipher, Noah on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class Dogs : Likeable
{
    public func isLike() -> Bool {
        <#code#>
    }
    
    private var dogColor : UIColor
    //Mark: Likeable data member
    public var likeState: Bool
    
    public init()
    {
        self.dogColor = UIColor()
        self.likeState = false
    }
    
    //MARK:- Likeable methods
    public func like() -> Void
    {
        print("I am likeable")
        likeState = true
    }
    
    public func isLiked() -> Bool
    {
        if(likeState)
        {
            print("liked")
        }
        else
        {
            print("dislike")
        }
        return likeState
    }
}

