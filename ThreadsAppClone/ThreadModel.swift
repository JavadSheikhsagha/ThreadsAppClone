//
//  PostModel.swift
//  LiquidEffectTutorial
//
//  Created by enigma 1 on 7/8/23.
//

import Foundation


struct ThreadModel : Identifiable {
    
    let id : Int
    
    let description : String
    let time : String
    let replies : Int
    let likes:Int
    
}


let threads = [
    ThreadModel(id: 0, description: "10 million sign ups in last week.", time: "3d", replies: 22, likes: 102),
    ThreadModel(id: 1, description: "Just passed 5 million sign ups in the past 4 hours.", time: "3d", replies: 22, likes: 102),
    ThreadModel(id: 2, description: "Ready to beat twitter", time: "3d", replies: 17, likes: 92),
    ThreadModel(id: 3, description: "10 million sign ups in last week.", time: "3d", replies: 22, likes: 102),
    ThreadModel(id: 1, description: "Just passed 5 million sign ups in the past 4 hours.", time: "3d", replies: 22, likes: 102),
    ThreadModel(id: 2, description: "Ready to beat twitter", time: "3d", replies: 52, likes: 182),
]
