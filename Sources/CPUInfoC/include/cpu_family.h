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

#ifndef CPUFAMILY_ARM_TILOS
#define CPUFAMILY_ARM_TILOS 0x01d7a72b
#endif

/* --- */
#ifndef CPU_SUBTYPE_ARM_V8M_BASE
#define CPU_SUBTYPE_ARM_V8M_BASE        ((cpu_subtype_t) 18)
#endif

#ifndef CPU_SUBTYPE_ARM_V8_1M_MAIN
#define CPU_SUBTYPE_ARM_V8_1M_MAIN      ((cpu_subtype_t) 19)
#endif

#endif /* cpu_family_h */
