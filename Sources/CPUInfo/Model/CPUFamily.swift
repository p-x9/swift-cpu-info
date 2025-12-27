//
//  CPUFamily.swift
//
//
//  Created by p-x9 on 2024/04/21.
//
//

import Foundation
import SwiftSysctl
import CPUInfoC

public enum CPUFamily: Sendable {
    /// CPUFAMILY_UNKNOWN
    case unknown
    /// CPUFAMILY_POWERPC_G3
    case powerpc_g3
    /// CPUFAMILY_POWERPC_G4
    case powerpc_g4
    /// CPUFAMILY_POWERPC_G5
    case powerpc_g5
    /// CPUFAMILY_INTEL_6_13
    case intel_6_13
    /// CPUFAMILY_INTEL_PENRYN
    case intel_penryn
    /// CPUFAMILY_INTEL_NEHALEM
    case intel_nehalem
    /// CPUFAMILY_INTEL_WESTMERE
    case intel_westmere
    /// CPUFAMILY_INTEL_SANDYBRIDGE
    case intel_sandybridge
    /// CPUFAMILY_INTEL_IVYBRIDGE
    case intel_ivybridge
    /// CPUFAMILY_INTEL_HASWELL
    case intel_haswell
    /// CPUFAMILY_INTEL_BROADWELL
    case intel_broadwell
    /// CPUFAMILY_INTEL_SKYLAKE
    case intel_skylake
    /// CPUFAMILY_INTEL_KABYLAKE
    case intel_kabylake
    /// CPUFAMILY_INTEL_ICELAKE
    case intel_icelake
    /// CPUFAMILY_INTEL_COMETLAKE
    case intel_cometlake
    /// CPUFAMILY_ARM_9
    case arm_9
    /// CPUFAMILY_ARM_11
    case arm_11
    /// CPUFAMILY_ARM_XSCALE
    case arm_xscale
    /// CPUFAMILY_ARM_12
    case arm_12
    /// CPUFAMILY_ARM_13
    case arm_13
    /// CPUFAMILY_ARM_14
    case arm_14
    /// CPUFAMILY_ARM_15
    case arm_15
    /// CPUFAMILY_ARM_SWIFT
    case arm_swift
    /// CPUFAMILY_ARM_CYCLONE
    case arm_cyclone
    /// CPUFAMILY_ARM_TYPHOON
    case arm_typhoon
    /// CPUFAMILY_ARM_TWISTER
    case arm_twister
    /// CPUFAMILY_ARM_HURRICANE
    case arm_hurricane
    /// CPUFAMILY_ARM_MONSOON_MISTRAL
    case arm_monsoon_mistral
    /// CPUFAMILY_ARM_VORTEX_TEMPEST
    case arm_vortex_tempest
    /// CPUFAMILY_ARM_LIGHTNING_THUNDER
    case arm_lightning_thunder
    /// CPUFAMILY_ARM_FIRESTORM_ICESTORM
    case arm_firestorm_icestorm
    /// CPUFAMILY_ARM_BLIZZARD_AVALANCHE
    case arm_blizzard_avalanche
    /// CPUFAMILY_ARM_EVEREST_SAWTOOTH
    case arm_everest_sawtooth
    /// CPUFAMILY_ARM_IBIZA
    case arm_ibiza
    /// CPUFAMILY_ARM_PALMA
    case arm_palma
    /// CPUFAMILY_ARM_COLL
    case arm_coll
    /// CPUFAMILY_ARM_LOBOS
    case arm_lobos
    /// CPUFAMILY_ARM_DONAN
    case arm_donan
    /// CPUFAMILY_ARM_BRAVA
    case arm_brava
    /// CPUFAMILY_ARM_TAHITI
    case arm_tahiti
    /// CPUFAMILY_ARM_TUPAI
    case arm_tupai
    /// CPUFAMILY_ARM_THERA
    case arm_thera
    /// CPUFAMILY_ARM_TILOS
    case arm_tilos
}

extension CPUFamily: RawRepresentable {
    public typealias RawValue = UInt32

    public init?(rawValue: RawValue) {
        switch rawValue {
        case RawValue(CPUFAMILY_UNKNOWN): self = .unknown
        case RawValue(CPUFAMILY_POWERPC_G3): self = .powerpc_g3
        case RawValue(CPUFAMILY_POWERPC_G4): self = .powerpc_g4
        case RawValue(CPUFAMILY_POWERPC_G5): self = .powerpc_g5
        case RawValue(CPUFAMILY_INTEL_6_13): self = .intel_6_13
        case RawValue(CPUFAMILY_INTEL_PENRYN): self = .intel_penryn
        case RawValue(CPUFAMILY_INTEL_NEHALEM): self = .intel_nehalem
        case RawValue(CPUFAMILY_INTEL_WESTMERE): self = .intel_westmere
        case RawValue(CPUFAMILY_INTEL_SANDYBRIDGE): self = .intel_sandybridge
        case RawValue(CPUFAMILY_INTEL_IVYBRIDGE): self = .intel_ivybridge
        case RawValue(CPUFAMILY_INTEL_HASWELL): self = .intel_haswell
        case RawValue(CPUFAMILY_INTEL_BROADWELL): self = .intel_broadwell
        case RawValue(CPUFAMILY_INTEL_SKYLAKE): self = .intel_skylake
        case RawValue(CPUFAMILY_INTEL_KABYLAKE): self = .intel_kabylake
        case RawValue(CPUFAMILY_INTEL_ICELAKE): self = .intel_icelake
        case RawValue(CPUFAMILY_INTEL_COMETLAKE): self = .intel_cometlake
        case RawValue(CPUFAMILY_ARM_9): self = .arm_9
        case RawValue(CPUFAMILY_ARM_11): self = .arm_11
        case RawValue(CPUFAMILY_ARM_XSCALE): self = .arm_xscale
        case RawValue(CPUFAMILY_ARM_12): self = .arm_12
        case RawValue(CPUFAMILY_ARM_13): self = .arm_13
        case RawValue(CPUFAMILY_ARM_14): self = .arm_14
        case RawValue(CPUFAMILY_ARM_15): self = .arm_15
        case RawValue(CPUFAMILY_ARM_SWIFT): self = .arm_swift
        case RawValue(CPUFAMILY_ARM_CYCLONE): self = .arm_cyclone
        case RawValue(CPUFAMILY_ARM_TYPHOON): self = .arm_typhoon
        case RawValue(CPUFAMILY_ARM_TWISTER): self = .arm_twister
        case RawValue(CPUFAMILY_ARM_HURRICANE): self = .arm_hurricane
        case RawValue(CPUFAMILY_ARM_MONSOON_MISTRAL): self = .arm_monsoon_mistral
        case RawValue(CPUFAMILY_ARM_VORTEX_TEMPEST): self = .arm_vortex_tempest
        case RawValue(CPUFAMILY_ARM_LIGHTNING_THUNDER): self = .arm_lightning_thunder
        case RawValue(CPUFAMILY_ARM_FIRESTORM_ICESTORM): self = .arm_firestorm_icestorm
        case RawValue(CPUFAMILY_ARM_BLIZZARD_AVALANCHE): self = .arm_blizzard_avalanche
        case RawValue(CPUFAMILY_ARM_EVEREST_SAWTOOTH): self = .arm_everest_sawtooth
        case RawValue(CPUFAMILY_ARM_IBIZA): self = .arm_ibiza
        case RawValue(CPUFAMILY_ARM_PALMA): self = .arm_palma
        case RawValue(CPUFAMILY_ARM_COLL): self = .arm_coll
        case RawValue(CPUFAMILY_ARM_LOBOS): self = .arm_lobos
        case RawValue(CPUFAMILY_ARM_DONAN): self = .arm_donan
        case RawValue(CPUFAMILY_ARM_BRAVA): self = .arm_brava
        case RawValue(CPUFAMILY_ARM_TAHITI): self = .arm_tahiti
        case RawValue(CPUFAMILY_ARM_TUPAI): self = .arm_tupai
        case RawValue(CPUFAMILY_ARM_THERA): self = .arm_thera
        case RawValue(CPUFAMILY_ARM_TILOS): self = .arm_tilos
        default: return nil
        }
    }
    public var rawValue: RawValue {
        switch self {
        case .unknown: RawValue(CPUFAMILY_UNKNOWN)
        case .powerpc_g3: RawValue(CPUFAMILY_POWERPC_G3)
        case .powerpc_g4: RawValue(CPUFAMILY_POWERPC_G4)
        case .powerpc_g5: RawValue(CPUFAMILY_POWERPC_G5)
        case .intel_6_13: RawValue(CPUFAMILY_INTEL_6_13)
        case .intel_penryn: RawValue(CPUFAMILY_INTEL_PENRYN)
        case .intel_nehalem: RawValue(CPUFAMILY_INTEL_NEHALEM)
        case .intel_westmere: RawValue(CPUFAMILY_INTEL_WESTMERE)
        case .intel_sandybridge: RawValue(CPUFAMILY_INTEL_SANDYBRIDGE)
        case .intel_ivybridge: RawValue(CPUFAMILY_INTEL_IVYBRIDGE)
        case .intel_haswell: RawValue(CPUFAMILY_INTEL_HASWELL)
        case .intel_broadwell: RawValue(CPUFAMILY_INTEL_BROADWELL)
        case .intel_skylake: RawValue(CPUFAMILY_INTEL_SKYLAKE)
        case .intel_kabylake: RawValue(CPUFAMILY_INTEL_KABYLAKE)
        case .intel_icelake: RawValue(CPUFAMILY_INTEL_ICELAKE)
        case .intel_cometlake: RawValue(CPUFAMILY_INTEL_COMETLAKE)
        case .arm_9: RawValue(CPUFAMILY_ARM_9)
        case .arm_11: RawValue(CPUFAMILY_ARM_11)
        case .arm_xscale: RawValue(CPUFAMILY_ARM_XSCALE)
        case .arm_12: RawValue(CPUFAMILY_ARM_12)
        case .arm_13: RawValue(CPUFAMILY_ARM_13)
        case .arm_14: RawValue(CPUFAMILY_ARM_14)
        case .arm_15: RawValue(CPUFAMILY_ARM_15)
        case .arm_swift: RawValue(CPUFAMILY_ARM_SWIFT)
        case .arm_cyclone: RawValue(CPUFAMILY_ARM_CYCLONE)
        case .arm_typhoon: RawValue(CPUFAMILY_ARM_TYPHOON)
        case .arm_twister: RawValue(CPUFAMILY_ARM_TWISTER)
        case .arm_hurricane: RawValue(CPUFAMILY_ARM_HURRICANE)
        case .arm_monsoon_mistral: RawValue(CPUFAMILY_ARM_MONSOON_MISTRAL)
        case .arm_vortex_tempest: RawValue(CPUFAMILY_ARM_VORTEX_TEMPEST)
        case .arm_lightning_thunder: RawValue(CPUFAMILY_ARM_LIGHTNING_THUNDER)
        case .arm_firestorm_icestorm: RawValue(CPUFAMILY_ARM_FIRESTORM_ICESTORM)
        case .arm_blizzard_avalanche: RawValue(CPUFAMILY_ARM_BLIZZARD_AVALANCHE)
        case .arm_everest_sawtooth: RawValue(CPUFAMILY_ARM_EVEREST_SAWTOOTH)
        case .arm_ibiza: RawValue(CPUFAMILY_ARM_IBIZA)
        case .arm_palma: RawValue(CPUFAMILY_ARM_PALMA)
        case .arm_coll: RawValue(CPUFAMILY_ARM_COLL)
        case .arm_lobos: RawValue(CPUFAMILY_ARM_LOBOS)
        case .arm_donan: RawValue(CPUFAMILY_ARM_DONAN)
        case .arm_brava: RawValue(CPUFAMILY_ARM_BRAVA)
        case .arm_tahiti: RawValue(CPUFAMILY_ARM_TAHITI)
        case .arm_tupai: RawValue(CPUFAMILY_ARM_TUPAI)
        case .arm_thera: RawValue(CPUFAMILY_ARM_THERA)
        case .arm_tilos: RawValue(CPUFAMILY_ARM_TILOS)
        }
    }
}

extension CPUFamily: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: "CPUFAMILY_UNKNOWN"
        case .powerpc_g3: "CPUFAMILY_POWERPC_G3"
        case .powerpc_g4: "CPUFAMILY_POWERPC_G4"
        case .powerpc_g5: "CPUFAMILY_POWERPC_G5"
        case .intel_6_13: "CPUFAMILY_INTEL_6_13"
        case .intel_penryn: "CPUFAMILY_INTEL_PENRYN"
        case .intel_nehalem: "CPUFAMILY_INTEL_NEHALEM"
        case .intel_westmere: "CPUFAMILY_INTEL_WESTMERE"
        case .intel_sandybridge: "CPUFAMILY_INTEL_SANDYBRIDGE"
        case .intel_ivybridge: "CPUFAMILY_INTEL_IVYBRIDGE"
        case .intel_haswell: "CPUFAMILY_INTEL_HASWELL"
        case .intel_broadwell: "CPUFAMILY_INTEL_BROADWELL"
        case .intel_skylake: "CPUFAMILY_INTEL_SKYLAKE"
        case .intel_kabylake: "CPUFAMILY_INTEL_KABYLAKE"
        case .intel_icelake: "CPUFAMILY_INTEL_ICELAKE"
        case .intel_cometlake: "CPUFAMILY_INTEL_COMETLAKE"
        case .arm_9: "CPUFAMILY_ARM_9"
        case .arm_11: "CPUFAMILY_ARM_11"
        case .arm_xscale: "CPUFAMILY_ARM_XSCALE"
        case .arm_12: "CPUFAMILY_ARM_12"
        case .arm_13: "CPUFAMILY_ARM_13"
        case .arm_14: "CPUFAMILY_ARM_14"
        case .arm_15: "CPUFAMILY_ARM_15"
        case .arm_swift: "CPUFAMILY_ARM_SWIFT"
        case .arm_cyclone: "CPUFAMILY_ARM_CYCLONE"
        case .arm_typhoon: "CPUFAMILY_ARM_TYPHOON"
        case .arm_twister: "CPUFAMILY_ARM_TWISTER"
        case .arm_hurricane: "CPUFAMILY_ARM_HURRICANE"
        case .arm_monsoon_mistral: "CPUFAMILY_ARM_MONSOON_MISTRAL"
        case .arm_vortex_tempest: "CPUFAMILY_ARM_VORTEX_TEMPEST"
        case .arm_lightning_thunder: "CPUFAMILY_ARM_LIGHTNING_THUNDER"
        case .arm_firestorm_icestorm: "CPUFAMILY_ARM_FIRESTORM_ICESTORM"
        case .arm_blizzard_avalanche: "CPUFAMILY_ARM_BLIZZARD_AVALANCHE"
        case .arm_everest_sawtooth: "CPUFAMILY_ARM_EVEREST_SAWTOOTH"
        case .arm_ibiza: "CPUFAMILY_ARM_IBIZA"
        case .arm_palma: "CPUFAMILY_ARM_PALMA"
        case .arm_coll: "CPUFAMILY_ARM_COLL"
        case .arm_lobos: "CPUFAMILY_ARM_LOBOS"
        case .arm_donan: "CPUFAMILY_ARM_DONAN"
        case .arm_brava: "CPUFAMILY_ARM_BRAVA"
        case .arm_tahiti: "CPUFAMILY_ARM_TAHITI"
        case .arm_tupai: "CPUFAMILY_ARM_TUPAI"
        case .arm_thera: "CPUFAMILY_ARM_THERA"
        case .arm_tilos: "CPUFAMILY_ARM_TILOS"
        }
    }
}

extension CPUFamily {
    public var isPowerPC: Bool {
        description.starts(with: "CPUFAMILY_POWERPC_")
    }

    public var isIntel: Bool {
        description.starts(with: "CPUFAMILY_INTEL_")
    }

    public var isARM: Bool {
        description.starts(with: "CPUFAMILY_ARM_")
    }
}

extension CPUFamily {
    /// CPU family of host pc
    static var current: CPUFamily? {
        guard let type = try? Sysctl.sysctl(hw.cpufamily) else {
            return nil
        }
        return .init(rawValue: CPUFamily.RawValue(type))
    }
}
