//
//  CPUInfo+print.swift
//
//
//  Created by p-x9 on 2024/04/26
//  
//

import Foundation

extension CPUInfo {
    public static func print() {
        Swift.print("Type:", type?.description ?? "Unknown")
        Swift.print("SubType:", subType?.description ?? "Unknown")

        Swift.print("Family:", family?.description ?? "Unknown")
        Swift.print("SubFamily:", subFamily?.description ?? "Unknown")

        #if arch(x86_64)
        Swift.print("ThreadType:", threadType?.description ?? "Unknown")
        #endif

        Swift.print("Is64Bit:", is64Bit)

        Swift.print("Brand:", brand ?? "Unknown")
        Swift.print("Vendor:", vendor ?? "Unknown")

        Swift.print("isTranslated:", isTranslated)
        if isTranslated, let processCPUType {
            Swift.print("ActualCPUType:", processCPUType)
        }

        if let features {
            Swift.print("Features:", features)
        }
        if let featureBits {
            Swift.print(
                "FeatureBits:",
                featureBits.map { "0b" + String($0, radix: 2) }
            )
        }

        Swift.print("Performance Core:")
        performanceCore.print()

        Swift.print("Efficient Core:")
        efficientCore.print()
    }
}

extension CInt {
    private static var formatter: ByteCountFormatter = {
        let formatter = ByteCountFormatter()
        formatter.countStyle = .memory
        return formatter
    }()

    var byteCountDescription: String? {
        Self.formatter.string(fromByteCount: numericCast(self))
    }
}

extension Core {
    fileprivate func print() {
        Swift.print("    Name:", name ?? "Unknown")
        Swift.print(
            "    Physical:",
            numberOfPhysicalCPU?.description ?? "Unknown"
        )
        Swift.print(
            "    Logical:",
            numberOfLogicalCPU?.description ?? "Unknown"
        )

        Swift.print("    L1 Cache")
        Swift.print(
            "       Instruction:",
            l1InstructionCacheSize?.byteCountDescription ?? "Unknown"
        )
        Swift.print(
            "       Data:",
            l1DataCacheSize?.byteCountDescription ?? "Unknown"
        )

        Swift.print("    L2 Cache")
        Swift.print(
            "       Size:",
            l2CacheSize?.byteCountDescription ?? "Unknown"
        )
        Swift.print(
            "       Cores/Cache:",
            numberOfCoresPerL2Cache?.description ?? "Unknown"
        )

        Swift.print("    L3 Cache")
        Swift.print(
            "       Size:",
            l3CacheSize?.byteCountDescription ?? "Unknown"
        )
        Swift.print(
            "       Cores/Cache:",
            numberOfCoresPerL3Cache?.description ?? "Unknown"
        )
    }
}
