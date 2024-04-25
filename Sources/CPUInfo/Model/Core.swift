//
//  Core.swift
//
//
//  Created by p-x9 on 2024/04/25
//  
//

import Foundation
import SwiftSysctl

public struct Core<CoreNode: CoreNodeProtocol & NodeCollection> {

    let _node: ChainedNameNode<CoreNode>

    init(_ _node: ChainedNameNode<CoreNode>) {
        self._node = _node
    }

    public var name: String? {
        try? Sysctl.sysctl(_node.name)
    }

    public var numberOfLogicalCPU: CInt? {
        try? Sysctl.sysctl(_node.logicalcpu)
    }

    public var numberOfPhysicalCPU: CInt? {
        try? Sysctl.sysctl(_node.physicalcpu)
    }

    /* L1 Cache */
    public var l1InstructionCacheSize: CInt? {
        try? Sysctl.sysctl(_node.l1icachesize)
    }

    public var l1DataCacheSize: CInt? {
        try? Sysctl.sysctl(_node.l1dcachesize)
    }

    /* L2 Cache */
    public var l2CacheSize: CInt? {
        try? Sysctl.sysctl(_node.l2cachesize)
    }

    public var numberOfCoresPerL2Cache: CInt? {
        try? Sysctl.sysctl(_node.cpusperl2)
    }

    /* L3 Cache */
    public var l3CacheSize: CInt? {
        try? Sysctl.sysctl(_node.l3cachesize)
    }

    public var numberOfCoresPerL3Cache: CInt? {
        try? Sysctl.sysctl(_node.cpusperl3)
    }
}
