import Foundation
import SwiftSysctl
import CPUInfoC

public enum CPUInfo {}

extension CPUInfo {
    public static var type: CPUType? { .current }
    public static var subType: CPUSubType? { .current }

    public static var family: CPUFamily? { .current }
    public static var subFamily: CPUSubFamily? { .current }

    public static var threadType: CPUThreadType? { .current }
}

extension CPUInfo {
    public static var is64Bit: Bool {
        Sysctl.sysctl(hw.cpu64bit_capable) == 1
    }
}

extension CPUInfo {
    public static var brand: String? {
        Sysctl.sysctl(machdep.cpu.brand_string)
    }

    public static var vendor: String? {
        #if arch(x86_64)
        Sysctl.sysctl(machdep.cpu.vendor)
        #else
        if let vendor = Sysctl.sysctl("machdep.cpu.vendor") {
            return vendor.withUnsafeBytes {
                guard let baseAddress = $0.baseAddress else {
                    return nil
                }
                return String(
                    cString: baseAddress
                        .assumingMemoryBound(to: CChar.self)
                )
            }
        }
        if let brand,
           brand.starts(with: "Apple ") {
            return "Apple Inc."
        }
        return nil
        #endif
    }
}
