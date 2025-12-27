//
//  CPUSubFamily.swift
//
//
//  Created by p-x9 on 2024/04/21.
//
//

import Foundation
import SwiftSysctl

public enum CPUSubFamily: Sendable {
    /// CPUSUBFAMILY_UNKNOWN
    case unknown
    /// CPUSUBFAMILY_ARM_HP
    case arm_hp
    /// CPUSUBFAMILY_ARM_HG
    case arm_hg
    /// CPUSUBFAMILY_ARM_M
    case arm_m
    /// CPUSUBFAMILY_ARM_HS
    case arm_hs
    /// CPUSUBFAMILY_ARM_HC_HD
    case arm_hc_hd
    /// CPUSUBFAMILY_ARM_HA
    case arm_ha
}

extension CPUSubFamily: RawRepresentable {
    public typealias RawValue = UInt32

    public init?(rawValue: RawValue) {
        switch rawValue {
        case RawValue(CPUSUBFAMILY_UNKNOWN): self = .unknown
        case RawValue(CPUSUBFAMILY_ARM_HP): self = .arm_hp
        case RawValue(CPUSUBFAMILY_ARM_HG): self = .arm_hg
        case RawValue(CPUSUBFAMILY_ARM_M): self = .arm_m
        case RawValue(CPUSUBFAMILY_ARM_HS): self = .arm_hs
        case RawValue(CPUSUBFAMILY_ARM_HC_HD): self = .arm_hc_hd
        case RawValue(CPUSUBFAMILY_ARM_HA): self = .arm_ha
        default: return nil
        }
    }
    public var rawValue: RawValue {
        switch self {
        case .unknown: RawValue(CPUSUBFAMILY_UNKNOWN)
        case .arm_hp: RawValue(CPUSUBFAMILY_ARM_HP)
        case .arm_hg: RawValue(CPUSUBFAMILY_ARM_HG)
        case .arm_m: RawValue(CPUSUBFAMILY_ARM_M)
        case .arm_hs: RawValue(CPUSUBFAMILY_ARM_HS)
        case .arm_hc_hd: RawValue(CPUSUBFAMILY_ARM_HC_HD)
        case .arm_ha: RawValue(CPUSUBFAMILY_ARM_HA)
        }
    }
}

extension CPUSubFamily: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: "CPUSUBFAMILY_UNKNOWN"
        case .arm_hp: "CPUSUBFAMILY_ARM_HP"
        case .arm_hg: "CPUSUBFAMILY_ARM_HG"
        case .arm_m: "CPUSUBFAMILY_ARM_M"
        case .arm_hs: "CPUSUBFAMILY_ARM_HS"
        case .arm_hc_hd: "CPUSUBFAMILY_ARM_HC_HD"
        case .arm_ha: "CPUSUBFAMILY_ARM_HA"
        }
    }
}

extension CPUSubFamily {
    /// CPU sub family of host pc
    static var current: Self? {
        guard let type = try? Sysctl.sysctl(hw.cpusubfamily) else {
            return nil
        }
        return .init(rawValue: CPUSubFamily.RawValue(type))
    }
}
