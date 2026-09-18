//
//  cpu_family.h
//  
//
//  Created by p-x9 on 2024/04/22.
//  
//

#ifndef cpu_family_h
#define cpu_family_h

#include <mach/machine.h>

#ifndef CPU_TYPE_RISCV
#define CPU_TYPE_RISCV                  ((cpu_type_t) 24)
#endif

#ifndef CPU_SUBTYPE_RISCV_ALL
#define CPU_SUBTYPE_RISCV_ALL           ((cpu_subtype_t) 0)
#endif

#ifndef CPU_SUBTYPE_ARM64_X1
#define CPU_SUBTYPE_ARM64_X1            ((cpu_subtype_t) 3)
#endif

#ifndef CPU_SUBTYPE_ARM64E_X1
#define CPU_SUBTYPE_ARM64E_X1           ((cpu_subtype_t) 12)
#endif

#ifndef CPUFAMILY_ARM_IBIZA
#define CPUFAMILY_ARM_IBIZA 0xfa33415e
#endif

#ifndef CPUFAMILY_ARM_PALMA
#define CPUFAMILY_ARM_PALMA 0x72015832
#endif

#ifndef CPUFAMILY_ARM_LOBOS
#define CPUFAMILY_ARM_LOBOS 0x5f4dea93
#endif

#ifndef CPUFAMILY_ARM_DONAN
#define CPUFAMILY_ARM_DONAN 0x6f5129ac
#endif

#ifndef CPUFAMILY_ARM_BRAVA
#define CPUFAMILY_ARM_BRAVA 0x17d5b93a
#endif

#ifndef CPUFAMILY_ARM_TAHITI
#define CPUFAMILY_ARM_TAHITI 0x75d4acb9
#endif

#ifndef CPUFAMILY_ARM_TUPAI
#define CPUFAMILY_ARM_TUPAI 0x204526d0
#endif

#ifndef CPUFAMILY_ARM_THERA
#define CPUFAMILY_ARM_THERA 0xab345f09
#endif

#ifndef CPUFAMILY_ARM_HIDRA
#define CPUFAMILY_ARM_HIDRA 0x1d5a87e8
#endif

#ifndef CPUFAMILY_ARM_SOTRA
#define CPUFAMILY_ARM_SOTRA 0xf76c5b1a
#endif

#ifndef CPUFAMILY_ARM_TILOS
#define CPUFAMILY_ARM_TILOS 0x01d7a72b
#endif

#ifndef CPUFAMILY_ARM_KOMODO
#define CPUFAMILY_ARM_KOMODO 0x6d0ccb0c
#endif

#ifndef CPUFAMILY_ARM_BORNEO
#define CPUFAMILY_ARM_BORNEO 0x7db56df1
#endif

#ifndef CPUFAMILY_ARM_NEVIS
#define CPUFAMILY_ARM_NEVIS 0x37652b0c
#endif

/* --- */
#ifndef CPU_SUBTYPE_ARM_V8M_BASE
#define CPU_SUBTYPE_ARM_V8M_BASE        ((cpu_subtype_t) 18)
#endif

#ifndef CPU_SUBTYPE_ARM_V8_1M_MAIN
#define CPU_SUBTYPE_ARM_V8_1M_MAIN      ((cpu_subtype_t) 19)
#endif

#endif /* cpu_family_h */
