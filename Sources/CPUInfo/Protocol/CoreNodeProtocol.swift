//
//  CoreNodeProtocol.swift
//  
//
//  Created by p-x9 on 2024/04/25
//  
//

import Foundation
import SwiftSysctl

public protocol CoreNodeProtocol {
    var physicalcpu: LeafNameNode<CInt> { get }
    var logicalcpu: LeafNameNode<CInt> { get }
    var l1icachesize: LeafNameNode<CInt> { get }
    var l1dcachesize: LeafNameNode<CInt> { get }
    var l2cachesize: LeafNameNode<CInt> { get }
    var cpusperl2: LeafNameNode<CInt> { get }
    var l3cachesize: LeafNameNode<CInt> { get }
    var cpusperl3: LeafNameNode<CInt> { get }
    var name: LeafNameNode<String> { get }
}

extension Nodes.HW.Perflevel0: CoreNodeProtocol {}
extension Nodes.HW.Perflevel1: CoreNodeProtocol {}
