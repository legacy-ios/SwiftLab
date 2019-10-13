//
//  Question.swift
//  Quizzier
//
//  Created by jungwooram on 2019-10-13.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
