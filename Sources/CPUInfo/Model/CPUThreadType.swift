//
//  CPUThreadType.swift
//
//
//  Created by p-x9 on 2024/04/21.
//
//

import Foundation
import SwiftSysctl

public enum CPUThreadType: Sendable {
    /// CPU_THREADTYPE_NONE
    case none
    /// CPU_THREADTYPE_INTEL_HTT
    case intel_htt
}

extension CPUThreadType: RawRepresentable {
    public typealias RawValue = Int32
    
    public init?(rawValue: RawValue) {
        switch rawValue {
        case CPU_THREADTYPE_NONE: self = .none
        case CPU_THREADTYPE_INTEL_HTT: self = .intel_htt
        default: return nil
        }
    }
    
    public var rawValue: RawValue {
        switch self {
        case .none: CPU_THREADTYPE_NONE
        case .intel_htt: CPU_THREADTYPE_INTEL_HTT
        }
    }
}

extension CPUThreadType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .none: "CPU_THREADTYPE_NONE"
        case .intel_htt: "CPU_THREADTYPE_INTEL_HTT"
        }
    }
}


extension CPUThreadType {
    /// CPU thread type of host pc
    static var current: CPUThreadType? {
#if arch(x86_64)
        guard let _type = try? Sysctl.sysctl("hw.cputhreadtype") else {
            return nil
        }
        let type = _type.withUnsafeBytes { $0.load(as: UInt32.self) }
        return .init(rawValue: CPUThreadType.RawValue(type))
#else
        CPUThreadType.none
#endif
    }
}
