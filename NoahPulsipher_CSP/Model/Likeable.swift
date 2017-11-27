//
//  Likeable.swift
//  NoahPulsipher_CSP
//
//  Created by Pulsipher, Noah on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Likeable
{
    var likeState : Bool {get set}
    func like() -> Void
    func isLiked() -> Bool
}
