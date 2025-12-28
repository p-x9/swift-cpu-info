//
//  CPUInfo+features.swift
//
//
//  Created by p-x9 on 2024/04/25
//  
//

import Foundation
import SwiftSysctl

#if arch(arm64)
extension CPUInfo {
    static var _features: [String]? {
        let features: [(key: String, value: CInt?)] = [
            ("arm64", try? Sysctl.sysctl(hw.optional.arm64)),

            /* Legacy Names ARM Optional Feature Sysctls */
            // https://github.com/apple-oss-distributions/xnu/blob/f6217f891ac0bb64f3d375211650a4c1ff8ca1ea/bsd/kern/kern_mib.c#L1150
            // https://github.com/apple-oss-distributions/xnu/blob/f6217f891ac0bb64f3d375211650a4c1ff8ca1ea/bsd/kern/kern_mib.c#L1154
            ("neon", try? Sysctl.sysctl(hw.optional.neon)),
            ("neon_hpfp", try? Sysctl.sysctl(hw.optional.neon_hpfp)),
            ("neon_fp16", try? Sysctl.sysctl(hw.optional.neon_fp16)),
            ("armv8_1_atomics", try? Sysctl.sysctl(hw.optional.armv8_1_atomics)),
            ("armv8_2_fhm", try? Sysctl.sysctl(hw.optional.armv8_2_fhm)),
            ("armv8_2_sha512", try? Sysctl.sysctl(hw.optional.armv8_2_sha512)),
            ("armv8_2_sha3", try? Sysctl.sysctl(hw.optional.armv8_2_sha3)),
            ("armv8_3_compnum", try? Sysctl.sysctl(hw.optional.armv8_3_compnum)),

            /* Misc ARM Optional Feature Sysctls */
//            ("watchpoint", try? Sysctl.sysctl(hw.optional.watchpoint)),
//            ("breakpoint", try? Sysctl.sysctl(hw.optional.breakpoint)),

            // https://github.com/apple-oss-distributions/xnu/blob/f6217f891ac0bb64f3d375211650a4c1ff8ca1ea/osfmk/arm/arm_features.inc#L36
            /* Features from: ID_AA64ISAR0_EL1 */
            ("CRC32", (try? Sysctl.sysctl(hw.optional.arm.FEAT_CRC32)) ?? (try? Sysctl.sysctl(hw.optional.armv8_crc32))),
            ("FlagM", try? Sysctl.sysctl(hw.optional.arm.FEAT_FlagM)),
            ("FlagM2", try? Sysctl.sysctl(hw.optional.arm.FEAT_FlagM2)),
            ("FHM", (try? Sysctl.sysctl(hw.optional.arm.FEAT_FHM)) ?? (try? Sysctl.sysctl(hw.optional.armv8_2_fhm))),
            ("DotProd", try? Sysctl.sysctl(hw.optional.arm.FEAT_DotProd)),
            ("SHA3", (try? Sysctl.sysctl(hw.optional.arm.FEAT_SHA3)) ?? (try? Sysctl.sysctl(hw.optional.armv8_2_sha3))),
            ("RDM", try? Sysctl.sysctl(hw.optional.arm.FEAT_RDM)),
            ("LSE", (try? Sysctl.sysctl(hw.optional.arm.FEAT_LSE)) ?? (try? Sysctl.sysctl(hw.optional.armv8_1_atomics))),
            ("SHA256", try? Sysctl.sysctl(hw.optional.arm.FEAT_SHA256)),
            ("SHA512", (try? Sysctl.sysctl(hw.optional.arm.FEAT_SHA512)) ?? (try? Sysctl.sysctl(hw.optional.armv8_2_sha512))),
            ("SHA1", try? Sysctl.sysctl(hw.optional.arm.FEAT_SHA1)),
            ("AES", try? Sysctl.sysctl(hw.optional.arm.FEAT_AES)),
            ("PMULL", try? Sysctl.sysctl(hw.optional.arm.FEAT_PMULL)),

            /* Features from: ID_AA64ISAR1_EL1 */
            ("SPECRES", try? Sysctl.sysctl(hw.optional.arm.FEAT_SPECRES)),
            ("SPECRES2", try? Sysctl.sysctl(hw.optional.arm.FEAT_SPECRES2)),
            ("SB", try? Sysctl.sysctl(hw.optional.arm.FEAT_SB)),
            ("FRINTTS", try? Sysctl.sysctl(hw.optional.arm.FEAT_FRINTTS)),
            ("PACIMP", (try? Sysctl.sysctl(hw.optional.arm.FEAT_PACIMP)) ?? (try? Sysctl.sysctl(hw.optional.armv8_gpi))),
            ("LRCPC", try? Sysctl.sysctl(hw.optional.arm.FEAT_LRCPC)),
            ("LRCPC2", try? Sysctl.sysctl(hw.optional.arm.FEAT_LRCPC2)),
            ("FCMA", (try? Sysctl.sysctl(hw.optional.arm.FEAT_FCMA)) ?? (try? Sysctl.sysctl(hw.optional.armv8_3_compnum))),
            ("JSCVT", try? Sysctl.sysctl(hw.optional.arm.FEAT_JSCVT)),
            ("PAuth", try? Sysctl.sysctl(hw.optional.arm.FEAT_PAuth)),
            ("PAuth2", try? Sysctl.sysctl(hw.optional.arm.FEAT_PAuth2)),
            ("FPAC", try? Sysctl.sysctl(hw.optional.arm.FEAT_FPAC)),
            ("DPB", try? Sysctl.sysctl(hw.optional.arm.FEAT_DPB)),
            ("DPB2", try? Sysctl.sysctl(hw.optional.arm.FEAT_DPB2)),
            ("BF16", try? Sysctl.sysctl(hw.optional.arm.FEAT_BF16)),
            ("EBF16", try? Sysctl.sysctl(hw.optional.arm.FEAT_EBF16)),
            ("I8MM", try? Sysctl.sysctl(hw.optional.arm.FEAT_I8MM)),

            /* Features from: ID_AA64ISAR2_EL1 */
            ("WFxT", try? Sysctl.sysctl(hw.optional.arm.FEAT_WFxT)),
            ("RPRES", try? Sysctl.sysctl(hw.optional.arm.FEAT_RPRES)),
            ("CSSC", try? Sysctl.sysctl(hw.optional.arm.FEAT_CSSC)),
            ("HBC", try? Sysctl.sysctl(hw.optional.arm.FEAT_HBC)),

            /* Features from: ID_AA64MMFR0_EL1 */
            ("ECV", try? Sysctl.sysctl(hw.optional.arm.FEAT_ECV)),

            /* Features from: ID_AA64MMFR1_EL1 */
            ("AFP", try? Sysctl.sysctl(hw.optional.arm.FEAT_AFP)),

            /* Features from: ID_AA64MMFR2_EL1 */
            ("LSE2", try? Sysctl.sysctl(hw.optional.arm.FEAT_LSE2)),

            /* Features from: ID_AA64PFR0_EL1 */
            ("CSV2", try? Sysctl.sysctl(hw.optional.arm.FEAT_CSV2)),
            ("CSV3", try? Sysctl.sysctl(hw.optional.arm.FEAT_CSV3)),
            ("DIT", try? Sysctl.sysctl(hw.optional.arm.FEAT_DIT)),
            ("AdvSIMD", (try? Sysctl.sysctl(hw.optional.arm.AdvSIMD)) ?? (try? Sysctl.sysctl(hw.optional.AdvSIMD)) ?? (try? Sysctl.sysctl(hw.optional.neon))),
            ("AdvSIMD_HPFPCvt", (try? Sysctl.sysctl(hw.optional.arm.AdvSIMD_HPFPCvt)) ?? (try? Sysctl.sysctl(hw.optional.AdvSIMD_HPFPCvt)) ?? (try? Sysctl.sysctl(hw.optional.neon_hpfp))),
            ("FP16", (try? Sysctl.sysctl(hw.optional.arm.FEAT_FP16)) ?? (try? Sysctl.sysctl(hw.optional.neon_fp16))),

            /* Features from: ID_AA64PFR1_EL1 */
            ("SSBS", try? Sysctl.sysctl(hw.optional.arm.FEAT_SSBS)),
            ("BTI", try? Sysctl.sysctl(hw.optional.arm.FEAT_BTI)),
            ("SME", try? Sysctl.sysctl(hw.optional.arm.FEAT_SME)),
            ("SME2", try? Sysctl.sysctl(hw.optional.arm.FEAT_SME2)),

            /* Features from: ID_AA64SMFR0_EL1 */
            ("SME_F32F32", try? Sysctl.sysctl(hw.optional.arm.SME_F32F32)),
            ("SME_BI32I32", try? Sysctl.sysctl(hw.optional.arm.SME_BI32I32)),
            ("SME_B16F32", try? Sysctl.sysctl(hw.optional.arm.SME_B16F32)),
            ("SME_F16F32", try? Sysctl.sysctl(hw.optional.arm.SME_F16F32)),
            ("SME_I8I32", try? Sysctl.sysctl(hw.optional.arm.SME_I8I32)),
            ("SME_I16I32", try? Sysctl.sysctl(hw.optional.arm.SME_I16I32)),
            ("SME_F64F64", try? Sysctl.sysctl(hw.optional.arm.FEAT_SME_F64F64)),
            ("SME_I16I64", try? Sysctl.sysctl(hw.optional.arm.FEAT_SME_I16I64)),

            /* Features from FPCR. */
            ("FP_SyncExceptions", try? Sysctl.sysctl(hw.optional.arm.FP_SyncExceptions)),

            ("ucnormal_mem", try? Sysctl.sysctl(hw.optional.ucnormal_mem)),
        ]
        return features
            .filter { $1 == 1 }
            .map(\.key)
    }
}
#endif
