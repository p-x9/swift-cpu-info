# swift-cpu-info

A Swift library for getting CPU informations

<!-- # Badges -->

[![Github issues](https://img.shields.io/github/issues/p-x9/swift-cpu-info)](https://github.com/p-x9/swift-cpu-info/issues)
[![Github forks](https://img.shields.io/github/forks/p-x9/swift-cpu-info)](https://github.com/p-x9/swift-cpu-info/network/members)
[![Github stars](https://img.shields.io/github/stars/p-x9/swift-cpu-info)](https://github.com/p-x9/swift-cpu-info/stargazers)
[![Github top language](https://img.shields.io/github/languages/top/p-x9/swift-cpu-info)](https://github.com/p-x9/swift-cpu-info/)

## Usage

### print

```swift
import CPUInfo
CPUInfo.print()
```

```
Type: CPU_TYPE_X86_64
SubType: CPU_SUBTYPE_X86_ARCH1
Family: CPUFAMILY_INTEL_WESTMERE
SubFamily: CPUSUBFAMILY_UNKNOWN
ThreadType: Unknown
Is64Bit: true
Brand: Apple M3 Pro
Vendor: Unknown
isTranslated: true
ActualCPUType: CPU_TYPE_ARM64
Features: ["FPU", "VME", "DE", "PSE", "TSC", "MSR", "PAE", "MCE", "CX8", "APIC", "SEP", "MTRR", "PGE", "MCA", "CMOV", "PAT", "PSE36", "CLFSH", "DS", "ACPI", "MMX", "FXSR", "SSE", "SSE2", "SS", "HTT", "TM", "PBE", "SSE3", "PCLMULQDQ", "DTSE64", "MON", "DSCPL", "VMX", "EST", "TM2", "SSSE3", "CX16", "TPR", "PDCM", "SSE4.1", "SSE4.2", "AES", "SEGLIM64"]
FeatureBits: ["0b1001011110010100010000111010000", "0b111111111111000"]
Performance Core:
    Name: Performance
    Physical: 5
    Logical: 5
    L1 Cache
       Instruction: 192 KB
       Data: 128 KB
    L2 Cache
       Size: 16 MB
       Cores/Cache: 5
    L3 Cache
       Size: Unknown
       Cores/Cache: Unknown
Efficient Core:
    Name: Efficiency
    Physical: 6
    Logical: 6
    L1 Cache
       Instruction: 128 KB
       Data: 64 KB
    L2 Cache
       Size: 4 MB
       Cores/Cache: 6
    L3 Cache
       Size: Unknown
       Cores/Cache: Unknown
```

## License

swift-cpu-info is released under the MIT License. See [LICENSE](./LICENSE)
