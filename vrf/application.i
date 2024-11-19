# 1 "application.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "application.c"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h" 1
# 30 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
# 1 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 1
# 246 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h" 1
# 29 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_def.h" 1
# 34 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_def.h"
# 1 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l5xx.h" 1
# 98 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l5xx.h"
# 1 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h" 1
# 53 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h"
typedef enum
{

  Reset_IRQn = -15,
  NonMaskableInt_IRQn = -14,
  HardFault_IRQn = -13,
  MemoryManagement_IRQn = -12,

  BusFault_IRQn = -11,

  UsageFault_IRQn = -10,
  SecureFault_IRQn = -9,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,


  WWDG_IRQn = 0,
  PVD_PVM_IRQn = 1,
  RTC_IRQn = 2,
  RTC_S_IRQn = 3,
  TAMP_IRQn = 4,
  TAMP_S_IRQn = 5,
  FLASH_IRQn = 6,
  FLASH_S_IRQn = 7,
  GTZC_IRQn = 8,
  RCC_IRQn = 9,
  RCC_S_IRQn = 10,
  EXTI0_IRQn = 11,
  EXTI1_IRQn = 12,
  EXTI2_IRQn = 13,
  EXTI3_IRQn = 14,
  EXTI4_IRQn = 15,
  EXTI5_IRQn = 16,
  EXTI6_IRQn = 17,
  EXTI7_IRQn = 18,
  EXTI8_IRQn = 19,
  EXTI9_IRQn = 20,
  EXTI10_IRQn = 21,
  EXTI11_IRQn = 22,
  EXTI12_IRQn = 23,
  EXTI13_IRQn = 24,
  EXTI14_IRQn = 25,
  EXTI15_IRQn = 26,
  DMAMUX1_IRQn = 27,
  DMAMUX1_S_IRQn = 28,
  DMA1_Channel1_IRQn = 29,
  DMA1_Channel2_IRQn = 30,
  DMA1_Channel3_IRQn = 31,
  DMA1_Channel4_IRQn = 32,
  DMA1_Channel5_IRQn = 33,
  DMA1_Channel6_IRQn = 34,
  DMA1_Channel7_IRQn = 35,
  DMA1_Channel8_IRQn = 36,
  ADC1_2_IRQn = 37,
  DAC_IRQn = 38,
  FDCAN1_IT0_IRQn = 39,
  FDCAN1_IT1_IRQn = 40,
  TIM1_BRK_IRQn = 41,
  TIM1_UP_IRQn = 42,
  TIM1_TRG_COM_IRQn = 43,
  TIM1_CC_IRQn = 44,
  TIM2_IRQn = 45,
  TIM3_IRQn = 46,
  TIM4_IRQn = 47,
  TIM5_IRQn = 48,
  TIM6_IRQn = 49,
  TIM7_IRQn = 50,
  TIM8_BRK_IRQn = 51,
  TIM8_UP_IRQn = 52,
  TIM8_TRG_COM_IRQn = 53,
  TIM8_CC_IRQn = 54,
  I2C1_EV_IRQn = 55,
  I2C1_ER_IRQn = 56,
  I2C2_EV_IRQn = 57,
  I2C2_ER_IRQn = 58,
  SPI1_IRQn = 59,
  SPI2_IRQn = 60,
  USART1_IRQn = 61,
  USART2_IRQn = 62,
  USART3_IRQn = 63,
  UART4_IRQn = 64,
  UART5_IRQn = 65,
  LPUART1_IRQn = 66,
  LPTIM1_IRQn = 67,
  LPTIM2_IRQn = 68,
  TIM15_IRQn = 69,
  TIM16_IRQn = 70,
  TIM17_IRQn = 71,
  COMP_IRQn = 72,
  USB_FS_IRQn = 73,
  CRS_IRQn = 74,
  FMC_IRQn = 75,
  OCTOSPI1_IRQn = 76,
  SDMMC1_IRQn = 78,
  DMA2_Channel1_IRQn = 80,
  DMA2_Channel2_IRQn = 81,
  DMA2_Channel3_IRQn = 82,
  DMA2_Channel4_IRQn = 83,
  DMA2_Channel5_IRQn = 84,
  DMA2_Channel6_IRQn = 85,
  DMA2_Channel7_IRQn = 86,
  DMA2_Channel8_IRQn = 87,
  I2C3_EV_IRQn = 88,
  I2C3_ER_IRQn = 89,
  SAI1_IRQn = 90,
  SAI2_IRQn = 91,
  TSC_IRQn = 92,
  RNG_IRQn = 94,
  FPU_IRQn = 95,
  HASH_IRQn = 96,
  LPTIM3_IRQn = 98,
  SPI3_IRQn = 99,
  I2C4_ER_IRQn = 100,
  I2C4_EV_IRQn = 101,
  DFSDM1_FLT0_IRQn = 102,
  DFSDM1_FLT1_IRQn = 103,
  DFSDM1_FLT2_IRQn = 104,
  DFSDM1_FLT3_IRQn = 105,
  UCPD1_IRQn = 106,
  ICACHE_IRQn = 107,
} IRQn_Type;
# 218 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h"
# 1 "../prv/Drivers/CMSIS/Include/core_cm33.h" 1
# 34 "../prv/Drivers/CMSIS/Include/core_cm33.h"
# 1 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stdint.h" 3 4
# 1 "/usr/include/newlib/stdint.h" 1 3 4
# 12 "/usr/include/newlib/stdint.h" 3 4
# 1 "/usr/include/newlib/machine/_default_types.h" 1 3 4







# 1 "/usr/include/newlib/sys/features.h" 1 3 4
# 28 "/usr/include/newlib/sys/features.h" 3 4
# 1 "/usr/include/newlib/_newlib_version.h" 1 3 4
# 29 "/usr/include/newlib/sys/features.h" 2 3 4
# 9 "/usr/include/newlib/machine/_default_types.h" 2 3 4
# 27 "/usr/include/newlib/machine/_default_types.h" 3 4

# 27 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "/usr/include/newlib/machine/_default_types.h" 3 4
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/usr/include/newlib/stdint.h" 2 3 4
# 1 "/usr/include/newlib/sys/_intsup.h" 1 3 4
# 49 "/usr/include/newlib/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 201 "/usr/include/newlib/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/usr/include/newlib/stdint.h" 2 3 4
# 1 "/usr/include/newlib/sys/_stdint.h" 1 3 4
# 20 "/usr/include/newlib/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/usr/include/newlib/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/usr/include/newlib/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/usr/include/newlib/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/usr/include/newlib/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/usr/include/newlib/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 130 "/usr/include/newlib/stdint.h" 3 4
  typedef long long int intmax_t;
# 139 "/usr/include/newlib/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 10 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stdint.h" 2 3 4
# 35 "../prv/Drivers/CMSIS/Include/core_cm33.h" 2
# 63 "../prv/Drivers/CMSIS/Include/core_cm33.h"
# 1 "../prv/Drivers/CMSIS/Include/cmsis_version.h" 1
# 64 "../prv/Drivers/CMSIS/Include/core_cm33.h" 2
# 206 "../prv/Drivers/CMSIS/Include/core_cm33.h"
# 1 "../prv/Drivers/CMSIS/Include/cmsis_compiler.h" 1
# 54 "../prv/Drivers/CMSIS/Include/cmsis_compiler.h"
# 1 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h" 1
# 29 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wsign-conversion"
#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wunused-parameter"
# 71 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  
# 74 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
 struct __attribute__((packed)) T_UINT32 { uint32_t v; };
#pragma GCC diagnostic pop



#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma GCC diagnostic pop



#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma GCC diagnostic pop



#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma GCC diagnostic pop



#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma GCC diagnostic pop
# 131 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline __attribute__((__noreturn__)) void __cmsis_start(void)
{
  extern void _start(void) __attribute__((__noreturn__));

  typedef struct {
    uint32_t const* src;
    uint32_t* dest;
    uint32_t wlen;
  } __copy_table_t;

  typedef struct {
    uint32_t* dest;
    uint32_t wlen;
  } __zero_table_t;

  extern const __copy_table_t __copy_table_start__;
  extern const __copy_table_t __copy_table_end__;
  extern const __zero_table_t __zero_table_start__;
  extern const __zero_table_t __zero_table_end__;

  for (__copy_table_t const* pTable = &__copy_table_start__; pTable < &__copy_table_end__; ++pTable) {
    for(uint32_t i=0u; i<pTable->wlen; ++i) {
      pTable->dest[i] = pTable->src[i];
    }
  }

  for (__zero_table_t const* pTable = &__zero_table_start__; pTable < &__zero_table_end__; ++pTable) {
    for(uint32_t i=0u; i<pTable->wlen; ++i) {
      pTable->dest[i] = 0u;
    }
  }

  _start();
}
# 196 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}







__attribute__((always_inline)) static inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}







__attribute__((always_inline)) static inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 248 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
}
# 272 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return(result);
}
# 344 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 368 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return(result);
}
# 398 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 449 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) :: "memory");
  return(result);
}
# 479 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 506 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __enable_fault_irq(void)
{
  __asm volatile ("cpsie f" : : : "memory");
}







__attribute__((always_inline)) static inline void __disable_fault_irq(void)
{
  __asm volatile ("cpsid f" : : : "memory");
}







__attribute__((always_inline)) static inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri" : "=r" (result) );
  return(result);
}
# 558 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_BASEPRI(uint32_t basePri)
{
  __asm volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
}
# 583 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  __asm volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
}







__attribute__((always_inline)) static inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}
# 624 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
# 659 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_PSPLIM(void)
{





  uint32_t result;
  __asm volatile ("MRS %0, psplim" : "=r" (result) );
  return result;

}
# 704 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_PSPLIM(uint32_t ProcStackPtrLimit)
{





  __asm volatile ("MSR psplim, %0" : : "r" (ProcStackPtrLimit));

}
# 746 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_MSPLIM(void)
{





  uint32_t result;
  __asm volatile ("MRS %0, msplim" : "=r" (result) );
  return result;

}
# 792 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_MSPLIM(uint32_t MainStackPtrLimit)
{





  __asm volatile ("MSR msplim, %0" : : "r" (MainStackPtrLimit));

}
# 833 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_FPSCR(void)
{
# 849 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
  return(0U);

}







__attribute__((always_inline)) static inline void __set_FPSCR(uint32_t fpscr)
{
# 872 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
  (void)fpscr;

}
# 933 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __ISB(void)
{
  __asm volatile ("isb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DSB(void)
{
  __asm volatile ("dsb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DMB(void)
{
  __asm volatile ("dmb 0xF":::"memory");
}
# 967 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

  return __builtin_bswap32(value);






}
# 986 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
  return result;
}
# 1001 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline int16_t __REVSH(int16_t value)
{

  return (int16_t)__builtin_bswap16(value);






}
# 1021 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  op2 %= 32U;
  if (op2 == 0U)
  {
    return op1;
  }
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 1048 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;




   __asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
# 1068 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
  return result;
}
# 1078 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __CLZ(uint32_t value)
{
# 1089 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
  if (value == 0U)
  {
    return 32U;
  }
  return __builtin_clz(value);
}
# 1107 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDREXB(volatile uint8_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexb %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint8_t) result);
}
# 1129 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDREXH(volatile uint16_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexh %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint16_t) result);
}
# 1151 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDREXW(volatile uint32_t *addr)
{
    uint32_t result;

   __asm volatile ("ldrex %0, %1" : "=r" (result) : "Q" (*addr) );
   return(result);
}
# 1168 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXB(uint8_t value, volatile uint8_t *addr)
{
   uint32_t result;

   __asm volatile ("strexb %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 1185 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXH(uint16_t value, volatile uint16_t *addr)
{
   uint32_t result;

   __asm volatile ("strexh %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 1202 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXW(uint32_t value, volatile uint32_t *addr)
{
   uint32_t result;

   __asm volatile ("strex %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" (value) );
   return(result);
}






__attribute__((always_inline)) static inline void __CLREX(void)
{
  __asm volatile ("clrex" ::: "memory");
}
# 1268 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 1283 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDRBT(volatile uint8_t *ptr)
{
    uint32_t result;


   __asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*ptr) );






   return ((uint8_t) result);
}
# 1305 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDRHT(volatile uint16_t *ptr)
{
    uint32_t result;


   __asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*ptr) );






   return ((uint16_t) result);
}
# 1327 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDRT(volatile uint32_t *ptr)
{
    uint32_t result;

   __asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*ptr) );
   return(result);
}
# 1342 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRBT(uint8_t value, volatile uint8_t *ptr)
{
   __asm volatile ("strbt %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1354 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRHT(uint16_t value, volatile uint16_t *ptr)
{
   __asm volatile ("strht %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1366 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRT(uint32_t value, volatile uint32_t *ptr)
{
   __asm volatile ("strt %1, %0" : "=Q" (*ptr) : "r" (value) );
}
# 1437 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDAB(volatile uint8_t *ptr)
{
    uint32_t result;

   __asm volatile ("ldab %0, %1" : "=r" (result) : "Q" (*ptr) );
   return ((uint8_t) result);
}
# 1452 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDAH(volatile uint16_t *ptr)
{
    uint32_t result;

   __asm volatile ("ldah %0, %1" : "=r" (result) : "Q" (*ptr) );
   return ((uint16_t) result);
}
# 1467 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDA(volatile uint32_t *ptr)
{
    uint32_t result;

   __asm volatile ("lda %0, %1" : "=r" (result) : "Q" (*ptr) );
   return(result);
}
# 1482 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STLB(uint8_t value, volatile uint8_t *ptr)
{
   __asm volatile ("stlb %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1494 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STLH(uint16_t value, volatile uint16_t *ptr)
{
   __asm volatile ("stlh %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1506 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STL(uint32_t value, volatile uint32_t *ptr)
{
   __asm volatile ("stl %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1518 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDAEXB(volatile uint8_t *ptr)
{
    uint32_t result;

   __asm volatile ("ldaexb %0, %1" : "=r" (result) : "Q" (*ptr) );
   return ((uint8_t) result);
}
# 1533 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDAEXH(volatile uint16_t *ptr)
{
    uint32_t result;

   __asm volatile ("ldaexh %0, %1" : "=r" (result) : "Q" (*ptr) );
   return ((uint16_t) result);
}
# 1548 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDAEX(volatile uint32_t *ptr)
{
    uint32_t result;

   __asm volatile ("ldaex %0, %1" : "=r" (result) : "Q" (*ptr) );
   return(result);
}
# 1565 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STLEXB(uint8_t value, volatile uint8_t *ptr)
{
   uint32_t result;

   __asm volatile ("stlexb %0, %2, %1" : "=&r" (result), "=Q" (*ptr) : "r" ((uint32_t)value) );
   return(result);
}
# 1582 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STLEXH(uint16_t value, volatile uint16_t *ptr)
{
   uint32_t result;

   __asm volatile ("stlexh %0, %2, %1" : "=&r" (result), "=Q" (*ptr) : "r" ((uint32_t)value) );
   return(result);
}
# 1599 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STLEX(uint32_t value, volatile uint32_t *ptr)
{
   uint32_t result;

   __asm volatile ("stlex %0, %2, %1" : "=&r" (result), "=Q" (*ptr) : "r" ((uint32_t)value) );
   return(result);
}
# 1621 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __SADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__((always_inline)) static inline uint32_t __SSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__((always_inline)) static inline uint32_t __SADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USAD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usad8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USADA8(uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("usada8 %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 1941 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __UXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("uxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("sxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMUAD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuad %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMUADX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuadx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLAD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlad %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLADX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smladx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint64_t __SMLALD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlald %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint64_t __SMLALDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlaldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint32_t __SMUSD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMUSDX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusdx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLSD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsd %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLSDX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsdx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint64_t __SMLSLD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsld %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint64_t __SMLSLDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint32_t __SEL (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sel %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline int32_t __QADD( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qadd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline int32_t __QSUB( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qsub %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}
# 2154 "../prv/Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline int32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
 int32_t result;

 __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
 return(result);
}





#pragma GCC diagnostic pop
# 55 "../prv/Drivers/CMSIS/Include/cmsis_compiler.h" 2
# 207 "../prv/Drivers/CMSIS/Include/core_cm33.h" 2
# 314 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef union
{
  struct
  {
    uint32_t _reserved0:16;
    uint32_t GE:4;
    uint32_t _reserved1:7;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 353 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 371 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:7;
    uint32_t GE:4;
    uint32_t _reserved1:4;
    uint32_t T:1;
    uint32_t IT:2;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 422 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t FPCA:1;
    uint32_t SFPA:1;
    uint32_t _reserved1:28;
  } b;
  uint32_t w;
} CONTROL_Type;
# 461 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile uint32_t ISER[16U];
        uint32_t RESERVED0[16U];
  volatile uint32_t ICER[16U];
        uint32_t RSERVED1[16U];
  volatile uint32_t ISPR[16U];
        uint32_t RESERVED2[16U];
  volatile uint32_t ICPR[16U];
        uint32_t RESERVED3[16U];
  volatile uint32_t IABR[16U];
        uint32_t RESERVED4[16U];
  volatile uint32_t ITNS[16U];
        uint32_t RESERVED5[16U];
  volatile uint8_t IPR[496U];
        uint32_t RESERVED6[580U];
  volatile uint32_t STIR;
} NVIC_Type;
# 497 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHPR[12U];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t ID_PFR[2U];
  volatile const uint32_t ID_DFR;
  volatile const uint32_t ID_ADR;
  volatile const uint32_t ID_MMFR[4U];
  volatile const uint32_t ID_ISAR[6U];
  volatile const uint32_t CLIDR;
  volatile const uint32_t CTR;
  volatile const uint32_t CCSIDR;
  volatile uint32_t CSSELR;
  volatile uint32_t CPACR;
  volatile uint32_t NSACR;
        uint32_t RESERVED3[92U];
  volatile uint32_t STIR;
        uint32_t RESERVED4[15U];
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
  volatile const uint32_t MVFR2;
        uint32_t RESERVED5[1U];
  volatile uint32_t ICIALLU;
        uint32_t RESERVED6[1U];
  volatile uint32_t ICIMVAU;
  volatile uint32_t DCIMVAC;
  volatile uint32_t DCISW;
  volatile uint32_t DCCMVAU;
  volatile uint32_t DCCMVAC;
  volatile uint32_t DCCSW;
  volatile uint32_t DCCIMVAC;
  volatile uint32_t DCCISW;
} SCB_Type;
# 929 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const uint32_t ICTR;
  volatile uint32_t ACTLR;
  volatile uint32_t CPPWR;
} SCnSCB_Type;
# 954 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 1006 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32U];
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;
        uint32_t RESERVED3[32U];
        uint32_t RESERVED4[43U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
        uint32_t RESERVED5[1U];
  volatile const uint32_t DEVARCH;
        uint32_t RESERVED6[4U];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 1106 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t CYCCNT;
  volatile uint32_t CPICNT;
  volatile uint32_t EXCCNT;
  volatile uint32_t SLEEPCNT;
  volatile uint32_t LSUCNT;
  volatile uint32_t FOLDCNT;
  volatile const uint32_t PCSR;
  volatile uint32_t COMP0;
        uint32_t RESERVED1[1U];
  volatile uint32_t FUNCTION0;
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP1;
        uint32_t RESERVED3[1U];
  volatile uint32_t FUNCTION1;
        uint32_t RESERVED4[1U];
  volatile uint32_t COMP2;
        uint32_t RESERVED5[1U];
  volatile uint32_t FUNCTION2;
        uint32_t RESERVED6[1U];
  volatile uint32_t COMP3;
        uint32_t RESERVED7[1U];
  volatile uint32_t FUNCTION3;
        uint32_t RESERVED8[1U];
  volatile uint32_t COMP4;
        uint32_t RESERVED9[1U];
  volatile uint32_t FUNCTION4;
        uint32_t RESERVED10[1U];
  volatile uint32_t COMP5;
        uint32_t RESERVED11[1U];
  volatile uint32_t FUNCTION5;
        uint32_t RESERVED12[1U];
  volatile uint32_t COMP6;
        uint32_t RESERVED13[1U];
  volatile uint32_t FUNCTION6;
        uint32_t RESERVED14[1U];
  volatile uint32_t COMP7;
        uint32_t RESERVED15[1U];
  volatile uint32_t FUNCTION7;
        uint32_t RESERVED16[1U];
  volatile uint32_t COMP8;
        uint32_t RESERVED17[1U];
  volatile uint32_t FUNCTION8;
        uint32_t RESERVED18[1U];
  volatile uint32_t COMP9;
        uint32_t RESERVED19[1U];
  volatile uint32_t FUNCTION9;
        uint32_t RESERVED20[1U];
  volatile uint32_t COMP10;
        uint32_t RESERVED21[1U];
  volatile uint32_t FUNCTION10;
        uint32_t RESERVED22[1U];
  volatile uint32_t COMP11;
        uint32_t RESERVED23[1U];
  volatile uint32_t FUNCTION11;
        uint32_t RESERVED24[1U];
  volatile uint32_t COMP12;
        uint32_t RESERVED25[1U];
  volatile uint32_t FUNCTION12;
        uint32_t RESERVED26[1U];
  volatile uint32_t COMP13;
        uint32_t RESERVED27[1U];
  volatile uint32_t FUNCTION13;
        uint32_t RESERVED28[1U];
  volatile uint32_t COMP14;
        uint32_t RESERVED29[1U];
  volatile uint32_t FUNCTION14;
        uint32_t RESERVED30[1U];
  volatile uint32_t COMP15;
        uint32_t RESERVED31[1U];
  volatile uint32_t FUNCTION15;
        uint32_t RESERVED32[934U];
  volatile const uint32_t LSR;
        uint32_t RESERVED33[1U];
  volatile const uint32_t DEVARCH;
} DWT_Type;
# 1292 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile const uint32_t SSPSR;
  volatile uint32_t CSPSR;
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;
        uint32_t RESERVED2[131U];
  volatile const uint32_t FFSR;
  volatile uint32_t FFCR;
  volatile uint32_t PSCR;
        uint32_t RESERVED3[759U];
  volatile const uint32_t TRIGGER;
  volatile const uint32_t ITFTTD0;
  volatile uint32_t ITATBCTR2;
        uint32_t RESERVED4[1U];
  volatile const uint32_t ITATBCTR0;
  volatile const uint32_t ITFTTD1;
  volatile uint32_t ITCTRL;
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;
  volatile uint32_t CLAIMCLR;
        uint32_t RESERVED7[8U];
  volatile const uint32_t DEVID;
  volatile const uint32_t DEVTYPE;
} TPI_Type;
# 1466 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile const uint32_t TYPE;
  volatile uint32_t CTRL;
  volatile uint32_t RNR;
  volatile uint32_t RBAR;
  volatile uint32_t RLAR;
  volatile uint32_t RBAR_A1;
  volatile uint32_t RLAR_A1;
  volatile uint32_t RBAR_A2;
  volatile uint32_t RLAR_A2;
  volatile uint32_t RBAR_A3;
  volatile uint32_t RLAR_A3;
        uint32_t RESERVED0[1];
  union {
  volatile uint32_t MAIR[2];
  struct {
  volatile uint32_t MAIR0;
  volatile uint32_t MAIR1;
  };
  };
} MPU_Type;
# 1665 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;
  volatile uint32_t FPCAR;
  volatile uint32_t FPDSCR;
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
} FPU_Type;
# 1795 "../prv/Drivers/CMSIS/Include/core_cm33.h"
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
        uint32_t RESERVED4[1U];
  volatile uint32_t DAUTHCTRL;
  volatile uint32_t DSCSR;
} CoreDebug_Type;
# 2096 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);

  reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));
  reg_value = (reg_value |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}







static inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}
# 2127 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __asm volatile("":::"memory");
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __asm volatile("":::"memory");
  }
}
# 2146 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 2165 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __DSB();
    __ISB();
  }
}
# 2184 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 2203 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 2218 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 2235 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 2324 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IPR[((uint32_t)IRQn)] = (uint8_t)((priority << (8U - 3U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 3U)) & (uint32_t)0xFFUL);
  }
}
# 2346 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IPR[((uint32_t)IRQn)] >> (8U - 3U)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 3U)));
  }
}
# 2371 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3U)) ? (uint32_t)(3U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 2398 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3U)) ? (uint32_t)(3U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
# 2421 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
  __DSB();
}
# 2437 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}






__attribute__((__noreturn__)) static inline void __NVIC_SystemReset(void)
{
  __DSB();

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = (uint32_t)((0x5FAUL << 16U) |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U) );
  __DSB();

  for(;;)
  {
    __asm volatile ("nop");
  }
}
# 2671 "../prv/Drivers/CMSIS/Include/core_cm33.h"
# 1 "../prv/Drivers/CMSIS/Include/mpu_armv8.h" 1
# 122 "../prv/Drivers/CMSIS/Include/mpu_armv8.h"
typedef struct {
  uint32_t RBAR;
  uint32_t RLAR;
} ARM_MPU_Region_t;




static inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

  __DSB();
  __ISB();
}



static inline void ARM_MPU_Disable(void)
{
  __DMB();

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL &= ~(1UL );
}
# 182 "../prv/Drivers/CMSIS/Include/mpu_armv8.h"
static inline void ARM_MPU_SetMemAttrEx(MPU_Type* mpu, uint8_t idx, uint8_t attr)
{
  const uint8_t reg = idx / 4U;
  const uint32_t pos = ((idx % 4U) * 8U);
  const uint32_t mask = 0xFFU << pos;

  if (reg >= (sizeof(mpu->MAIR) / sizeof(mpu->MAIR[0]))) {
    return;
  }

  mpu->MAIR[reg] = ((mpu->MAIR[reg] & ~mask) | ((attr << pos) & mask));
}





static inline void ARM_MPU_SetMemAttr(uint8_t idx, uint8_t attr)
{
  ARM_MPU_SetMemAttrEx(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) ), idx, attr);
}
# 219 "../prv/Drivers/CMSIS/Include/mpu_armv8.h"
static inline void ARM_MPU_ClrRegionEx(MPU_Type* mpu, uint32_t rnr)
{
  mpu->RNR = rnr;
  mpu->RLAR = 0U;
}




static inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ARM_MPU_ClrRegionEx(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) ), rnr);
}
# 249 "../prv/Drivers/CMSIS/Include/mpu_armv8.h"
static inline void ARM_MPU_SetRegionEx(MPU_Type* mpu, uint32_t rnr, uint32_t rbar, uint32_t rlar)
{
  mpu->RNR = rnr;
  mpu->RBAR = rbar;
  mpu->RLAR = rlar;
}






static inline void ARM_MPU_SetRegion(uint32_t rnr, uint32_t rbar, uint32_t rlar)
{
  ARM_MPU_SetRegionEx(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) ), rnr, rbar, rlar);
}
# 283 "../prv/Drivers/CMSIS/Include/mpu_armv8.h"
static inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i)
  {
    dst[i] = src[i];
  }
}







static inline void ARM_MPU_LoadEx(MPU_Type* mpu, uint32_t rnr, ARM_MPU_Region_t const* table, uint32_t cnt)
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  if (cnt == 1U) {
    mpu->RNR = rnr;
    ARM_MPU_OrderedMemcpy(&(mpu->RBAR), &(table->RBAR), rowWordSize);
  } else {
    uint32_t rnrBase = rnr & ~(4U -1U);
    uint32_t rnrOffset = rnr % 4U;

    mpu->RNR = rnrBase;
    while ((rnrOffset + cnt) > 4U) {
      uint32_t c = 4U - rnrOffset;
      ARM_MPU_OrderedMemcpy(&(mpu->RBAR)+(rnrOffset*2U), &(table->RBAR), c*rowWordSize);
      table += c;
      cnt -= c;
      rnrOffset = 0U;
      rnrBase += 4U;
      mpu->RNR = rnrBase;
    }

    ARM_MPU_OrderedMemcpy(&(mpu->RBAR)+(rnrOffset*2U), &(table->RBAR), cnt*rowWordSize);
  }
}






static inline void ARM_MPU_Load(uint32_t rnr, ARM_MPU_Region_t const* table, uint32_t cnt)
{
  ARM_MPU_LoadEx(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) ), rnr, table, cnt);
}
# 2672 "../prv/Drivers/CMSIS/Include/core_cm33.h" 2
# 2691 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((FPU_Type *) ((0xE000E000UL) + 0x0F30UL) )->MVFR0;
  if ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x220U)
  {
    return 2U;
  }
  else if ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;
  }
  else
  {
    return 0U;
  }
}
# 2773 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 3U) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 2833 "../prv/Drivers/CMSIS/Include/core_cm33.h"
extern volatile int32_t ITM_RxBuffer;
# 2845 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL ) != 0UL) )
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __asm volatile ("nop");
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}
# 2866 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);
  }

  return (ch);
}
# 2886 "../prv/Drivers/CMSIS/Include/core_cm33.h"
static inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);
  }
  else
  {
    return (1);
  }
}
# 219 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h" 2
# 1 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/system_stm32l5xx.h" 1
# 54 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/system_stm32l5xx.h"
extern uint32_t SystemCoreClock;

extern const uint8_t AHBPrescTable[16];
extern const uint8_t APBPrescTable[8];
extern const uint32_t MSIRangeTable[16];
# 73 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/system_stm32l5xx.h"
extern void SystemInit (void);







extern void SystemCoreClockUpdate (void);
# 90 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/system_stm32l5xx.h"
extern uint32_t SECURE_SystemCoreClockUpdate(void);
# 220 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h" 2
# 234 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h"
typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IER;
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CFGR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
       uint32_t RESERVED1;
  volatile uint32_t TR1;
  volatile uint32_t TR2;
  volatile uint32_t TR3;
       uint32_t RESERVED2;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t SQR4;
  volatile uint32_t DR;
       uint32_t RESERVED3;
       uint32_t RESERVED4;
  volatile uint32_t JSQR;
       uint32_t RESERVED5[4];
  volatile uint32_t OFR1;
  volatile uint32_t OFR2;
  volatile uint32_t OFR3;
  volatile uint32_t OFR4;
       uint32_t RESERVED6[4];
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
       uint32_t RESERVED7[4];
  volatile uint32_t AWD2CR;
  volatile uint32_t AWD3CR;
       uint32_t RESERVED8;
       uint32_t RESERVED9;
  volatile uint32_t DIFSEL;
  volatile uint32_t CALFACT;
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;
  uint32_t RESERVED;
  volatile uint32_t CCR;
  volatile uint32_t CDR;
} ADC_Common_TypeDef;





typedef struct
{
  volatile uint32_t CREL;
  volatile uint32_t ENDN;
       uint32_t RESERVED1;
  volatile uint32_t DBTP;
  volatile uint32_t TEST;
  volatile uint32_t RWD;
  volatile uint32_t CCCR;
  volatile uint32_t NBTP;
  volatile uint32_t TSCC;
  volatile uint32_t TSCV;
  volatile uint32_t TOCC;
  volatile uint32_t TOCV;
       uint32_t RESERVED2[4];
  volatile uint32_t ECR;
  volatile uint32_t PSR;
  volatile uint32_t TDCR;
       uint32_t RESERVED3;
  volatile uint32_t IR;
  volatile uint32_t IE;
  volatile uint32_t ILS;
  volatile uint32_t ILE;
       uint32_t RESERVED4[8];
  volatile uint32_t RXGFC;
  volatile uint32_t XIDAM;
  volatile uint32_t HPMS;
       uint32_t RESERVED5;
  volatile uint32_t RXF0S;
  volatile uint32_t RXF0A;
  volatile uint32_t RXF1S;
  volatile uint32_t RXF1A;
       uint32_t RESERVED6[8];
  volatile uint32_t TXBC;
  volatile uint32_t TXFQS;
  volatile uint32_t TXBRP;
  volatile uint32_t TXBAR;
  volatile uint32_t TXBCR;
  volatile uint32_t TXBTO;
  volatile uint32_t TXBCF;
  volatile uint32_t TXBTIE;
  volatile uint32_t TXBCIE;
  volatile uint32_t TXEFS;
  volatile uint32_t TXEFA;
} FDCAN_GlobalTypeDef;





typedef struct
{
  volatile uint32_t CKDIV;
       uint32_t RESERVED1[128];
  volatile uint32_t OPTR;
} FDCAN_Config_TypeDef;




typedef struct
{
  volatile uint32_t DR;
  volatile uint32_t IDR;
  volatile uint32_t CR;
       uint32_t RESERVED2;
  volatile uint32_t INIT;
  volatile uint32_t POL;
} CRC_TypeDef;




typedef struct
{
volatile uint32_t CR;
volatile uint32_t CFGR;
volatile uint32_t ISR;
volatile uint32_t ICR;
} CRS_TypeDef;





typedef struct
{
  volatile uint32_t CSR;
} COMP_TypeDef;

typedef struct
{
  volatile uint32_t CSR;
} COMP_Common_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;
  volatile uint32_t SR;
  volatile uint32_t CCR;
  volatile uint32_t MCR;
  volatile uint32_t SHSR1;
  volatile uint32_t SHSR2;
  volatile uint32_t SHHR;
  volatile uint32_t SHRR;
} DAC_TypeDef;




typedef struct
{
  volatile uint32_t FLTCR1;
  volatile uint32_t FLTCR2;
  volatile uint32_t FLTISR;
  volatile uint32_t FLTICR;
  volatile uint32_t FLTJCHGR;
  volatile uint32_t FLTFCR;
  volatile uint32_t FLTJDATAR;
  volatile uint32_t FLTRDATAR;
  volatile uint32_t FLTAWHTR;
  volatile uint32_t FLTAWLTR;
  volatile uint32_t FLTAWSR;
  volatile uint32_t FLTAWCFR;
  volatile uint32_t FLTEXMAX;
  volatile uint32_t FLTEXMIN;
  volatile uint32_t FLTCNVTIMR;
} DFSDM_Filter_TypeDef;




typedef struct
{
  volatile uint32_t CHCFGR1;
  volatile uint32_t CHCFGR2;
  volatile uint32_t CHAWSCDR;

  volatile uint32_t CHWDATAR;
  volatile uint32_t CHDATINR;
  volatile uint32_t CHDLYR;
} DFSDM_Channel_TypeDef;




typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;
  volatile uint32_t APB1FZR1;
  volatile uint32_t APB1FZR2;
  volatile uint32_t APB2FZR;
} DBGMCU_TypeDef;





typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CM0AR;
  volatile uint32_t CM1AR;
} DMA_Channel_TypeDef;





typedef struct
{
  volatile uint32_t CCR;
} DMAMUX_Channel_TypeDef;

typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t CFR;
} DMAMUX_ChannelStatus_TypeDef;

typedef struct
{
  volatile uint32_t RGCR;
} DMAMUX_RequestGen_TypeDef;

typedef struct
{
  volatile uint32_t RGSR;
  volatile uint32_t RGCFR;
} DMAMUX_RequestGenStatus_TypeDef;




typedef struct
{
  volatile uint32_t RTSR1;
  volatile uint32_t FTSR1;
  volatile uint32_t SWIER1;
  volatile uint32_t RPR1;
  volatile uint32_t FPR1;
  volatile uint32_t SECCFGR1;
  volatile uint32_t PRIVCFGR1;
       uint32_t RESERVED1;
  volatile uint32_t RTSR2;
  volatile uint32_t FTSR2;
  volatile uint32_t SWIER2;
  volatile uint32_t RPR2;
  volatile uint32_t FPR2;
  volatile uint32_t SECCFGR2;
  volatile uint32_t PRIVCFGR2;
       uint32_t RESERVED2[9];
  volatile uint32_t EXTICR[4];
  volatile uint32_t LOCKR;
       uint32_t RESERVED3[3];
  volatile uint32_t IMR1;
  volatile uint32_t EMR1;
       uint32_t RESERVED4[2];
  volatile uint32_t IMR2;
  volatile uint32_t EMR2;
} EXTI_TypeDef;





typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t PDKEYR;
  volatile uint32_t NSKEYR;
  volatile uint32_t SECKEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t LVEKEYR;
  volatile uint32_t RESERVED1[2];
  volatile uint32_t NSSR;
  volatile uint32_t SECSR;
  volatile uint32_t NSCR;
  volatile uint32_t SECCR;
  volatile uint32_t ECCR;
  volatile uint32_t RESERVED2[3];
  volatile uint32_t OPTR;
  volatile uint32_t NSBOOTADD0R;
  volatile uint32_t NSBOOTADD1R;
  volatile uint32_t SECBOOTADD0R;
  volatile uint32_t SECWM1R1;
  volatile uint32_t SECWM1R2;
  volatile uint32_t WRP1AR;
  volatile uint32_t WRP1BR;
  volatile uint32_t SECWM2R1;
  volatile uint32_t SECWM2R2;
  volatile uint32_t WRP2AR;
  volatile uint32_t WRP2BR;
  volatile uint32_t RESERVED3[4];
  volatile uint32_t SECBB1R1;
  volatile uint32_t SECBB1R2;
  volatile uint32_t SECBB1R3;
  volatile uint32_t SECBB1R4;
  volatile uint32_t RESERVED4[4];
  volatile uint32_t SECBB2R1;
  volatile uint32_t SECBB2R2;
  volatile uint32_t SECBB2R3;
  volatile uint32_t SECBB2R4;
  volatile uint32_t RESERVED5[4];
  volatile uint32_t SECHDPCR;
  volatile uint32_t PRIVCFGR;
} FLASH_TypeDef;





typedef struct
{
  volatile uint32_t BTCR[8];
  volatile uint32_t PCSCNTR;
} FMC_Bank1_TypeDef;





typedef struct
{
  volatile uint32_t BWTR[7];
} FMC_Bank1E_TypeDef;





typedef struct
{
  volatile uint32_t PCR;
  volatile uint32_t SR;
  volatile uint32_t PMEM;
  volatile uint32_t PATT;
  uint32_t RESERVED0;
  volatile uint32_t ECCR;
} FMC_Bank3_TypeDef;





typedef struct
{
  volatile uint32_t MODER;
  volatile uint32_t OTYPER;
  volatile uint32_t OSPEEDR;
  volatile uint32_t PUPDR;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t LCKR;
  volatile uint32_t AFR[2];
  volatile uint32_t BRR;
       uint32_t RESERVED;
  volatile uint32_t SECCFGR;
} GPIO_TypeDef;





typedef struct{
  volatile uint32_t CR;
  uint32_t RESERVED1[3];
  volatile uint32_t SECCFGR1;
  volatile uint32_t SECCFGR2;
  uint32_t RESERVED2[2];
  volatile uint32_t PRIVCFGR1;
  volatile uint32_t PRIVCFGR2;
  uint32_t RESERVED3[2];
  volatile uint32_t MPCWM1_NSWMR1;
  volatile uint32_t MPCWM1_NSWMR2;
  volatile uint32_t MPCWM2_NSWMR1;
  volatile uint32_t MPCWM2_NSWMR2;
  volatile uint32_t MPCWM3_NSWMR1;
} GTZC_TZSC_TypeDef;

typedef struct{
  volatile uint32_t CR;
  uint32_t RESERVED1[3];
  volatile uint32_t LCKVTR1;
  volatile uint32_t LCKVTR2;
  uint32_t RESERVED2[58];
  volatile uint32_t VCTR[24];
} GTZC_MPCBB_TypeDef;

typedef struct{
  volatile uint32_t IER1;
  volatile uint32_t IER2;
  volatile uint32_t IER3;
  uint32_t RESERVED1;
  volatile uint32_t SR1;
  volatile uint32_t SR2;
  volatile uint32_t SR3;
  uint32_t RESERVED2;
  volatile uint32_t FCR1;
  volatile uint32_t FCR2;
  volatile uint32_t FCR3;
} GTZC_TZIC_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t DIN;
  volatile uint32_t STR;
  volatile uint32_t HR[5];
  volatile uint32_t IMR;
  volatile uint32_t SR;
       uint32_t RESERVED[52];
  volatile uint32_t CSR[54];
} HASH_TypeDef;





typedef struct
{
  volatile uint32_t HR[8];
} HASH_DIGEST_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t OAR1;
  volatile uint32_t OAR2;
  volatile uint32_t TIMINGR;
  volatile uint32_t TIMEOUTR;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t PECR;
  volatile uint32_t RXDR;
  volatile uint32_t TXDR;
} I2C_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t IER;
  volatile uint32_t FCR;
  volatile uint32_t HMONR;
  volatile uint32_t MMONR;
       uint32_t RESERVED1[2];
  volatile uint32_t CRR0;
  volatile uint32_t CRR1;
  volatile uint32_t CRR2;
  volatile uint32_t CRR3;
} ICACHE_TypeDef;




typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
  volatile uint32_t WINR;
} IWDG_TypeDef;





typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t IER;
  volatile uint32_t CFGR;
  volatile uint32_t CR;
  volatile uint32_t CMP;
  volatile uint32_t ARR;
  volatile uint32_t CNT;
  volatile uint32_t OR;
  volatile uint32_t RESERVED;
  volatile uint32_t RCR;
} LPTIM_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  uint32_t RESERVED;
  volatile uint32_t DCR1;
  volatile uint32_t DCR2;
  volatile uint32_t DCR3;
  volatile uint32_t DCR4;
  uint32_t RESERVED1[2];
  volatile uint32_t SR;
  volatile uint32_t FCR;
  uint32_t RESERVED2[6];
  volatile uint32_t DLR;
  uint32_t RESERVED3;
  volatile uint32_t AR;
  uint32_t RESERVED4;
  volatile uint32_t DR;
  uint32_t RESERVED5[11];
  volatile uint32_t PSMKR;
  uint32_t RESERVED6;
  volatile uint32_t PSMAR;
  uint32_t RESERVED7;
  volatile uint32_t PIR;
  uint32_t RESERVED8[27];
  volatile uint32_t CCR;
  uint32_t RESERVED9;
  volatile uint32_t TCR;
  uint32_t RESERVED10;
  volatile uint32_t IR;
  uint32_t RESERVED11[3];
  volatile uint32_t ABR;
  uint32_t RESERVED12[3];
  volatile uint32_t LPTR;
  uint32_t RESERVED13[3];
  volatile uint32_t WPCCR;
  uint32_t RESERVED14;
  volatile uint32_t WPTCR;
  uint32_t RESERVED15;
  volatile uint32_t WPIR;
  uint32_t RESERVED16[3];
  volatile uint32_t WPABR;
  uint32_t RESERVED17[7];
  volatile uint32_t WCCR;
  uint32_t RESERVED18;
  volatile uint32_t WTCR;
  uint32_t RESERVED19;
  volatile uint32_t WIR;
  uint32_t RESERVED20[3];
  volatile uint32_t WABR;
  uint32_t RESERVED21[23];
  volatile uint32_t HLCR;
} OCTOSPI_TypeDef;





typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t OTR;
  volatile uint32_t LPOTR;
} OPAMP_TypeDef;

typedef struct
{
  volatile uint32_t CSR;
} OPAMP_Common_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t CR3;
  volatile uint32_t CR4;
  volatile uint32_t SR1;
  volatile uint32_t SR2;
  volatile uint32_t SCR;
  uint32_t RESERVED1;
  volatile uint32_t PUCRA;
  volatile uint32_t PDCRA;
  volatile uint32_t PUCRB;
  volatile uint32_t PDCRB;
  volatile uint32_t PUCRC;
  volatile uint32_t PDCRC;
  volatile uint32_t PUCRD;
  volatile uint32_t PDCRD;
  volatile uint32_t PUCRE;
  volatile uint32_t PDCRE;
  volatile uint32_t PUCRF;
  volatile uint32_t PDCRF;
  volatile uint32_t PUCRG;
  volatile uint32_t PDCRG;
  volatile uint32_t PUCRH;
  volatile uint32_t PDCRH;
  uint32_t RESERVED2[6];
  volatile uint32_t SECCFGR;
  uint32_t RESERVED3;
  volatile uint32_t PRIVCFGR;
} PWR_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t ICSCR;
  volatile uint32_t CFGR;
  volatile uint32_t PLLCFGR;
  volatile uint32_t PLLSAI1CFGR;
  volatile uint32_t PLLSAI2CFGR;
  volatile uint32_t CIER;
  volatile uint32_t CIFR;
  volatile uint32_t CICR;
  uint32_t RESERVED0;
  volatile uint32_t AHB1RSTR;
  volatile uint32_t AHB2RSTR;
  volatile uint32_t AHB3RSTR;
  uint32_t RESERVED1;
  volatile uint32_t APB1RSTR1;
  volatile uint32_t APB1RSTR2;
  volatile uint32_t APB2RSTR;
  uint32_t RESERVED2;
  volatile uint32_t AHB1ENR;
  volatile uint32_t AHB2ENR;
  volatile uint32_t AHB3ENR;
  uint32_t RESERVED3;
  volatile uint32_t APB1ENR1;
  volatile uint32_t APB1ENR2;
  volatile uint32_t APB2ENR;
  uint32_t RESERVED4;
  volatile uint32_t AHB1SMENR;
  volatile uint32_t AHB2SMENR;
  volatile uint32_t AHB3SMENR;
  uint32_t RESERVED5;
  volatile uint32_t APB1SMENR1;
  volatile uint32_t APB1SMENR2;
  volatile uint32_t APB2SMENR;
  uint32_t RESERVED6;
  volatile uint32_t CCIPR1;
  uint32_t RESERVED7;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;
  volatile uint32_t CRRCR;
  volatile uint32_t CCIPR2;
  uint32_t RESERVED8[6];
  volatile uint32_t SECCFGR;
  volatile uint32_t SECSR;
  uint32_t RESERVED9[10];
  volatile uint32_t AHB1SECSR;
  volatile uint32_t AHB2SECSR;
  volatile uint32_t AHB3SECSR;
  uint32_t RESERVED10;
  volatile uint32_t APB1SECSR1;
  volatile uint32_t APB1SECSR2;
  volatile uint32_t APB2SECSR;
} RCC_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t DR;
  uint32_t RESERVED0;
  volatile uint32_t HTCR;
} RNG_TypeDef;
# 961 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h"
typedef struct
{
  volatile uint32_t TR;
  volatile uint32_t DR;
  volatile uint32_t SSR;
  volatile uint32_t ICSR;
  volatile uint32_t PRER;
  volatile uint32_t WUTR;
  volatile uint32_t CR;
  volatile uint32_t PRIVCR;
  volatile uint32_t SMCR;
  volatile uint32_t WPR;
  volatile uint32_t CALR;
  volatile uint32_t SHIFTR;
  volatile uint32_t TSTR;
  volatile uint32_t TSDR;
  volatile uint32_t TSSSR;
       uint32_t RESERVED0;
  volatile uint32_t ALRMAR;
  volatile uint32_t ALRMASSR;
  volatile uint32_t ALRMBR;
  volatile uint32_t ALRMBSSR;
  volatile uint32_t SR;
  volatile uint32_t MISR;
  volatile uint32_t SMISR;
  volatile uint32_t SCR;
} RTC_TypeDef;




typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SR;
  volatile uint32_t DR;
  volatile uint32_t CRCPR;
  volatile uint32_t RXCRCR;
  volatile uint32_t TXCRCR;
} SPI_TypeDef;




typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t CR3;
  volatile uint32_t FLTCR;
  volatile uint32_t ATCR1;
  volatile uint32_t ATSEEDR;
  volatile uint32_t ATOR;
  volatile uint32_t ATCR2;
  volatile uint32_t SMCR;
  volatile uint32_t PRIVCR;
       uint32_t RESERVED0;
  volatile uint32_t IER;
  volatile uint32_t SR;
  volatile uint32_t MISR;
  volatile uint32_t SMISR;
  volatile uint32_t SCR;
  volatile uint32_t COUNTR;
       uint32_t RESERVED1[3];
  volatile uint32_t CFGR;
       uint32_t RESERVED2[43];
  volatile uint32_t BKP0R;
  volatile uint32_t BKP1R;
  volatile uint32_t BKP2R;
  volatile uint32_t BKP3R;
  volatile uint32_t BKP4R;
  volatile uint32_t BKP5R;
  volatile uint32_t BKP6R;
  volatile uint32_t BKP7R;
  volatile uint32_t BKP8R;
  volatile uint32_t BKP9R;
  volatile uint32_t BKP10R;
  volatile uint32_t BKP11R;
  volatile uint32_t BKP12R;
  volatile uint32_t BKP13R;
  volatile uint32_t BKP14R;
  volatile uint32_t BKP15R;
  volatile uint32_t BKP16R;
  volatile uint32_t BKP17R;
  volatile uint32_t BKP18R;
  volatile uint32_t BKP19R;
  volatile uint32_t BKP20R;
  volatile uint32_t BKP21R;
  volatile uint32_t BKP22R;
  volatile uint32_t BKP23R;
  volatile uint32_t BKP24R;
  volatile uint32_t BKP25R;
  volatile uint32_t BKP26R;
  volatile uint32_t BKP27R;
  volatile uint32_t BKP28R;
  volatile uint32_t BKP29R;
  volatile uint32_t BKP30R;
  volatile uint32_t BKP31R;
} TAMP_TypeDef;




typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMCR;
  volatile uint32_t DIER;
  volatile uint32_t SR;
  volatile uint32_t EGR;
  volatile uint32_t CCMR1;
  volatile uint32_t CCMR2;
  volatile uint32_t CCER;
  volatile uint32_t CNT;
  volatile uint32_t PSC;
  volatile uint32_t ARR;
  volatile uint32_t RCR;
  volatile uint32_t CCR1;
  volatile uint32_t CCR2;
  volatile uint32_t CCR3;
  volatile uint32_t CCR4;
  volatile uint32_t BDTR;
  volatile uint32_t DCR;
  volatile uint32_t DMAR;
  volatile uint32_t OR1;
  volatile uint32_t CCMR3;
  volatile uint32_t CCR5;
  volatile uint32_t CCR6;
  volatile uint32_t OR2;
  volatile uint32_t OR3;
} TIM_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t IER;
  volatile uint32_t ICR;
  volatile uint32_t ISR;
  volatile uint32_t IOHCR;
  uint32_t RESERVED1;
  volatile uint32_t IOASCR;
  uint32_t RESERVED2;
  volatile uint32_t IOSCR;
  uint32_t RESERVED3;
  volatile uint32_t IOCCR;
  uint32_t RESERVED4;
  volatile uint32_t IOGCSR;
  volatile uint32_t IOGXCR[8];
} TSC_TypeDef;





typedef struct
{
  volatile uint32_t GCR;
  uint32_t RESERVED[16];
  volatile uint32_t PDMCR;
  volatile uint32_t PDMDLY;
} SAI_TypeDef;

typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t FRCR;
  volatile uint32_t SLOTR;
  volatile uint32_t IMR;
  volatile uint32_t SR;
  volatile uint32_t CLRFR;
  volatile uint32_t DR;
} SAI_Block_TypeDef;





typedef struct
{
  volatile uint32_t SECCFGR;
  volatile uint32_t CFGR1;
  volatile uint32_t FPUIMR;
  volatile uint32_t CNSLCKR;
  volatile uint32_t CSLCKR;
  volatile uint32_t CFGR2;
  volatile uint32_t SCSR;
  volatile uint32_t SKR;
  volatile uint32_t SWPR;
  volatile uint32_t SWPR2;
  uint32_t RESERVED;
  volatile uint32_t RSSCMDR;
} SYSCFG_TypeDef;





typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  volatile uint32_t ACKTIME;
  uint32_t RESERVED0[3];
  volatile uint32_t IDMACTRL;
  volatile uint32_t IDMABSIZE;
  volatile uint32_t IDMABASE0;
  volatile uint32_t IDMABASE1;
  uint32_t RESERVED1[8];
  volatile uint32_t FIFO;
  uint32_t RESERVED2[220];
  volatile uint32_t VER;
  volatile uint32_t ID;
  volatile uint32_t SID;
} SDMMC_TypeDef;




typedef struct
{
  volatile uint32_t CFG1;
  volatile uint32_t CFG2;
  volatile uint32_t CFG3;
  volatile uint32_t CR;
  volatile uint32_t IMR;
  volatile uint32_t SR;
  volatile uint32_t ICR;
  volatile uint32_t TX_ORDSET;
  volatile uint32_t TX_PAYSZ;
  volatile uint32_t TXDR;
  volatile uint32_t RX_ORDSET;
  volatile uint32_t RX_PAYSZ;
  volatile uint32_t RXDR;
  volatile uint32_t RX_ORDEXT1;
  volatile uint32_t RX_ORDEXT2;
} UCPD_TypeDef;




typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t CR3;
  volatile uint32_t BRR;
  volatile uint32_t GTPR;
  volatile uint32_t RTOR;
  volatile uint32_t RQR;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t RDR;
  volatile uint32_t TDR;
  volatile uint32_t PRESC;
} USART_TypeDef;




typedef struct
{
  volatile uint16_t EP0R;
  volatile uint16_t RESERVED0;
  volatile uint16_t EP1R;
  volatile uint16_t RESERVED1;
  volatile uint16_t EP2R;
  volatile uint16_t RESERVED2;
  volatile uint16_t EP3R;
  volatile uint16_t RESERVED3;
  volatile uint16_t EP4R;
  volatile uint16_t RESERVED4;
  volatile uint16_t EP5R;
  volatile uint16_t RESERVED5;
  volatile uint16_t EP6R;
  volatile uint16_t RESERVED6;
  volatile uint16_t EP7R;
  volatile uint16_t RESERVED7[17];
  volatile uint16_t CNTR;
  volatile uint16_t RESERVED8;
  volatile uint16_t ISTR;
  volatile uint16_t RESERVED9;
  volatile uint16_t FNR;
  volatile uint16_t RESERVEDA;
  volatile uint16_t DADDR;
  volatile uint16_t RESERVEDB;
  volatile uint16_t BTABLE;
  volatile uint16_t RESERVEDC;
  volatile uint16_t LPMCSR;
  volatile uint16_t RESERVEDD;
  volatile uint16_t BCDR;
  volatile uint16_t RESERVEDE;
} USB_TypeDef;




typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t CCR;
} VREFBUF_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;
# 1726 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l552xx.h"
typedef uint32_t ( *RSSLIB_S_CloseExitHDP_TypeDef)( uint32_t HdpArea, uint32_t VectorTableAddr );





typedef struct
{
  volatile const uint32_t Reserved[8];
}NSC_pFuncTypeDef;




typedef struct
{
  volatile const RSSLIB_S_CloseExitHDP_TypeDef CloseExitHDP_BL90;
  volatile const uint32_t Reserved2;
  volatile const RSSLIB_S_CloseExitHDP_TypeDef CloseExitHDP_BL91;
}S_pFuncTypeDef;




typedef struct
{
  NSC_pFuncTypeDef NSC;
  S_pFuncTypeDef S;
}RSSLIB_pFunc_TypeDef;
# 99 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l5xx.h" 2
# 112 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l5xx.h"
typedef enum
{
  RESET = 0,
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum
{
  DISABLE = 0,
  ENABLE = !DISABLE
} FunctionalState;


typedef enum
{
  SUCCESS = 0,
  ERROR = !SUCCESS
} ErrorStatus;
# 161 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l5xx.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h" 1
# 162 "../prv/Drivers/CMSIS/Device/ST/STM32L5xx/Include/stm32l5xx.h" 2
# 35 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_def.h" 2
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h" 1
# 36 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_def.h" 2
# 1 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 3 4

# 149 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 426 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 37 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_def.h" 2







# 43 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_def.h"
typedef enum
{
  HAL_OK = 0x00,
  HAL_ERROR = 0x01,
  HAL_BUSY = 0x02,
  HAL_TIMEOUT = 0x03
} HAL_StatusTypeDef;




typedef enum
{
  HAL_UNLOCKED = 0x00,
  HAL_LOCKED = 0x01
} HAL_LockTypeDef;
# 30 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h" 2
# 47 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h"
typedef struct
{
  uint32_t PLLState;


  uint32_t PLLSource;


  uint32_t PLLM;


  uint32_t PLLN;


  uint32_t PLLP;


  uint32_t PLLQ;


  uint32_t PLLR;



} RCC_PLLInitTypeDef;




typedef struct
{
  uint32_t OscillatorType;


  uint32_t HSEState;


  uint32_t LSEState;


  uint32_t HSIState;


  uint32_t HSICalibrationValue;


  uint32_t LSIState;


  uint32_t LSIDiv;


  uint32_t MSIState;


  uint32_t MSICalibrationValue;


  uint32_t MSIClockRange;


  uint32_t HSI48State;


  RCC_PLLInitTypeDef PLL;

} RCC_OscInitTypeDef;




typedef struct
{
  uint32_t ClockType;


  uint32_t SYSCLKSource;


  uint32_t AHBCLKDivider;


  uint32_t APB1CLKDivider;


  uint32_t APB2CLKDivider;


} RCC_ClkInitTypeDef;
# 3515 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc_ex.h" 1
# 48 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc_ex.h"
typedef struct
{

  uint32_t PLLSAI1Source;


  uint32_t PLLSAI1M;


  uint32_t PLLSAI1N;


  uint32_t PLLSAI1P;


  uint32_t PLLSAI1Q;


  uint32_t PLLSAI1R;


  uint32_t PLLSAI1ClockOut;

} RCC_PLLSAI1InitTypeDef;




typedef struct
{

  uint32_t PLLSAI2Source;


  uint32_t PLLSAI2M;


  uint32_t PLLSAI2N;


  uint32_t PLLSAI2P;


  uint32_t PLLSAI2ClockOut;

} RCC_PLLSAI2InitTypeDef;




typedef struct
{
  uint32_t PeriphClockSelection;


  RCC_PLLSAI1InitTypeDef PLLSAI1;


  RCC_PLLSAI2InitTypeDef PLLSAI2;


  uint32_t Usart1ClockSelection;


  uint32_t Usart2ClockSelection;


  uint32_t Usart3ClockSelection;


  uint32_t Uart4ClockSelection;


  uint32_t Uart5ClockSelection;


  uint32_t Lpuart1ClockSelection;


  uint32_t I2c1ClockSelection;


  uint32_t I2c2ClockSelection;


  uint32_t I2c3ClockSelection;


  uint32_t I2c4ClockSelection;


  uint32_t Lptim1ClockSelection;


  uint32_t Lptim2ClockSelection;


  uint32_t Lptim3ClockSelection;


  uint32_t FdcanClockSelection;


  uint32_t Sai1ClockSelection;


  uint32_t Sai2ClockSelection;




  uint32_t UsbClockSelection;




  uint32_t Sdmmc1ClockSelection;


  uint32_t RngClockSelection;


  uint32_t AdcClockSelection;


  uint32_t Dfsdm1ClockSelection;


  uint32_t Dfsdm1AudioClockSelection;


  uint32_t OspiClockSelection;


  uint32_t RTCClockSelection;

} RCC_PeriphCLKInitTypeDef;







typedef struct
{
  uint32_t Prescaler;


  uint32_t Source;


  uint32_t Polarity;


  uint32_t ReloadValue;



  uint32_t ErrorLimitValue;


  uint32_t HSI48CalibrationValue;


} RCC_CRSInitTypeDef;




typedef struct
{
  uint32_t ReloadValue;


  uint32_t HSI48CalibrationValue;


  uint32_t FreqErrorCapture;



  uint32_t FreqErrorDirection;




} RCC_CRSSynchroInfoTypeDef;
# 1890 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc_ex.h"
HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef *PeriphClkInit);
void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef *PeriphClkInit);
uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk);
# 1902 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc_ex.h"
HAL_StatusTypeDef HAL_RCCEx_EnablePLLSAI1(RCC_PLLSAI1InitTypeDef *PLLSAI1Init);
HAL_StatusTypeDef HAL_RCCEx_DisablePLLSAI1(void);
HAL_StatusTypeDef HAL_RCCEx_EnablePLLSAI2(RCC_PLLSAI2InitTypeDef *PLLSAI2Init);
HAL_StatusTypeDef HAL_RCCEx_DisablePLLSAI2(void);

void HAL_RCCEx_WakeUpStopCLKConfig(uint32_t WakeUpClk);
void HAL_RCCEx_StandbyMSIRangeConfig(uint32_t MSIRange);
void HAL_RCCEx_EnableLSECSS(void);
void HAL_RCCEx_DisableLSECSS(void);
void HAL_RCCEx_LSECSS_IRQHandler(void);
void HAL_RCCEx_LSECSS_Callback(void);
void HAL_RCCEx_EnableLSCO(uint32_t LSCOSource);
void HAL_RCCEx_DisableLSCO(void);
void HAL_RCCEx_EnableMSIPLLMode(void);
void HAL_RCCEx_DisableMSIPLLMode(void);
# 1928 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc_ex.h"
void HAL_RCCEx_CRSConfig(RCC_CRSInitTypeDef *pInit);
void HAL_RCCEx_CRSSoftwareSynchronizationGenerate(void);
void HAL_RCCEx_CRSGetSynchronizationInfo(RCC_CRSSynchroInfoTypeDef *pSynchroInfo);
uint32_t HAL_RCCEx_CRSWaitSynchronization(uint32_t Timeout);
void HAL_RCCEx_CRS_IRQHandler(void);
void HAL_RCCEx_CRS_SyncOkCallback(void);
void HAL_RCCEx_CRS_SyncWarnCallback(void);
void HAL_RCCEx_CRS_ExpectedSyncCallback(void);
void HAL_RCCEx_CRS_ErrorCallback(uint32_t Error);
# 3516 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h" 2
# 3528 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h"
HAL_StatusTypeDef HAL_RCC_DeInit(void);
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t FLatency);
# 3541 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h"
void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv);
void HAL_RCC_EnableCSS(void);
uint32_t HAL_RCC_GetSysClockFreq(void);
uint32_t HAL_RCC_GetHCLKFreq(void);
uint32_t HAL_RCC_GetPCLK1Freq(void);
uint32_t HAL_RCC_GetPCLK2Freq(void);
void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t *pFLatency);

void HAL_RCC_NMI_IRQHandler(void);

void HAL_RCC_CSSCallback(void);
# 3563 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_rcc.h"
void HAL_RCC_ConfigAttributes(uint32_t Item, uint32_t Attributes);
HAL_StatusTypeDef HAL_RCC_GetConfigAttributes(uint32_t Item, uint32_t *pAttributes);
# 247 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2



# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_gpio.h" 1
# 48 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_gpio.h"
typedef struct
{
  uint32_t Pin;


  uint32_t Mode;


  uint32_t Pull;


  uint32_t Speed;


  uint32_t Alternate;

} GPIO_InitTypeDef;




typedef enum
{
  GPIO_PIN_RESET = 0U,
  GPIO_PIN_SET
} GPIO_PinState;
# 304 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_gpio.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_gpio_ex.h" 1
# 305 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_gpio.h" 2
# 318 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_gpio.h"
void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_Init);
void HAL_GPIO_DeInit(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin);
# 331 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_gpio.h"
GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState);
void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Rising_Callback(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Falling_Callback(uint16_t GPIO_Pin);
# 251 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2



# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h" 1
# 47 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h"
typedef struct
{
  uint32_t Request;


  uint32_t Direction;



  uint32_t PeriphInc;


  uint32_t MemInc;


  uint32_t PeriphDataAlignment;


  uint32_t MemDataAlignment;


  uint32_t Mode;




  uint32_t Priority;

} DMA_InitTypeDef;




typedef enum
{
  HAL_DMA_STATE_RESET = 0x00U,
  HAL_DMA_STATE_READY = 0x01U,
  HAL_DMA_STATE_BUSY = 0x02U,
  HAL_DMA_STATE_TIMEOUT = 0x03U,
}HAL_DMA_StateTypeDef;




typedef enum
{
  HAL_DMA_FULL_TRANSFER = 0x00U,
  HAL_DMA_HALF_TRANSFER = 0x01U
}HAL_DMA_LevelCompleteTypeDef;





typedef enum
{
  HAL_DMA_XFER_CPLT_CB_ID = 0x00U,
  HAL_DMA_XFER_HALFCPLT_CB_ID = 0x01U,
  HAL_DMA_XFER_M1CPLT_CB_ID = 0x02U,
  HAL_DMA_XFER_M1HALFCPLT_CB_ID = 0x03U,
  HAL_DMA_XFER_ERROR_CB_ID = 0x04U,
  HAL_DMA_XFER_ABORT_CB_ID = 0x05U,
  HAL_DMA_XFER_ALL_CB_ID = 0x06U

}HAL_DMA_CallbackIDTypeDef;




typedef struct __DMA_HandleTypeDef
{
  DMA_Channel_TypeDef *Instance;

  DMA_InitTypeDef Init;

  HAL_LockTypeDef Lock;

  volatile HAL_DMA_StateTypeDef State;

  void *Parent;

  void (* XferCpltCallback)(struct __DMA_HandleTypeDef * hdma);

  void (* XferHalfCpltCallback)(struct __DMA_HandleTypeDef * hdma);

  void (* XferM1CpltCallback)(struct __DMA_HandleTypeDef * hdma);

  void (* XferM1HalfCpltCallback)(struct __DMA_HandleTypeDef * hdma);

  void (* XferErrorCallback)(struct __DMA_HandleTypeDef * hdma);

  void (* XferAbortCallback)(struct __DMA_HandleTypeDef * hdma);

  volatile uint32_t ErrorCode;

  DMA_TypeDef *DmaBaseAddress;

  uint32_t ChannelIndex;

  DMAMUX_Channel_TypeDef *DMAmuxChannel;

  DMAMUX_ChannelStatus_TypeDef *DMAmuxChannelStatus;

  uint32_t DMAmuxChannelStatusMask;

  DMAMUX_RequestGen_TypeDef *DMAmuxRequestGen;

  DMAMUX_RequestGenStatus_TypeDef *DMAmuxRequestGenStatus;

  uint32_t DMAmuxRequestGenStatusMask;


}DMA_HandleTypeDef;
# 657 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma_ex.h" 1
# 47 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma_ex.h"
typedef enum
{
  MEMORY0 = 0x00U,
  MEMORY1 = 0x01U,

}HAL_DMA_MemoryTypeDef;
# 62 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma_ex.h"
typedef struct
{
  uint32_t SyncSignalID;


  uint32_t SyncPolarity;


  FunctionalState SyncEnable;



  FunctionalState EventEnable;


  uint32_t RequestNumber;



}HAL_DMA_MuxSyncConfigTypeDef;





typedef struct
{
 uint32_t SignalID;


  uint32_t Polarity;


  uint32_t RequestNumber;


}HAL_DMA_MuxRequestGeneratorConfigTypeDef;
# 212 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma_ex.h"
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_ChangeMemory(DMA_HandleTypeDef *hdma, uint32_t Address, HAL_DMA_MemoryTypeDef memory);


HAL_StatusTypeDef HAL_DMAEx_ConfigMuxRequestGenerator (DMA_HandleTypeDef *hdma,
             HAL_DMA_MuxRequestGeneratorConfigTypeDef *pRequestGeneratorConfig);
HAL_StatusTypeDef HAL_DMAEx_EnableMuxRequestGenerator (DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMAEx_DisableMuxRequestGenerator (DMA_HandleTypeDef *hdma);



HAL_StatusTypeDef HAL_DMAEx_ConfigMuxSync(DMA_HandleTypeDef *hdma, HAL_DMA_MuxSyncConfigTypeDef *pSyncConfig);


void HAL_DMAEx_MUX_IRQHandler(DMA_HandleTypeDef *hdma);
# 658 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h" 2
# 669 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h"
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_DeInit (DMA_HandleTypeDef *hdma);
# 679 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h"
HAL_StatusTypeDef HAL_DMA_Start (DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout);
void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)( DMA_HandleTypeDef * _hdma));
HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID);
# 696 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h"
HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma);
uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma);
# 706 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_dma.h"
HAL_StatusTypeDef HAL_DMA_ConfigChannelAttributes(DMA_HandleTypeDef *hdma, uint32_t ChannelAttributes);
HAL_StatusTypeDef HAL_DMA_GetConfigChannelAttributes(DMA_HandleTypeDef *hdma, uint32_t *ChannelAttributes);
# 255 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2







# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_cortex.h" 1
# 48 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_cortex.h"
typedef struct
{
  uint8_t Enable;

  uint8_t Number;

  uint32_t BaseAddress;
  uint32_t LimitAddress;
  uint8_t AttributesIndex;

  uint8_t AccessPermission;

  uint8_t DisableExec;

  uint8_t IsShareable;

} MPU_Region_InitTypeDef;







typedef struct
{
  uint8_t Number;


  uint8_t Attributes;


} MPU_Attributes_InitTypeDef;
# 253 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_cortex.h"
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup);
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn);
void HAL_NVIC_DisableIRQ(IRQn_Type IRQn);
void HAL_NVIC_SystemReset(void);
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb);
# 268 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_cortex.h"
uint32_t HAL_NVIC_GetPriorityGrouping(void);
void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority);
uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn);
uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn);
void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource);
void HAL_SYSTICK_IRQHandler(void);
void HAL_SYSTICK_Callback(void);


void HAL_MPU_Enable(uint32_t MPU_Control);
void HAL_MPU_Disable(void);
void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_RegionInit);
void HAL_MPU_ConfigMemoryAttributes(MPU_Attributes_InitTypeDef *MPU_AttributesInit);
# 263 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2
# 286 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_exti.h" 1
# 45 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_exti.h"
typedef enum
{
  HAL_EXTI_COMMON_CB_ID = 0x00U,
  HAL_EXTI_RISING_CB_ID = 0x01U,
  HAL_EXTI_FALLING_CB_ID = 0x02U,
}EXTI_CallbackIDTypeDef;





typedef struct
{
  uint32_t Line;
  void (* RisingCallback) (void);
  void (* FallingCallback) (void);
}EXTI_HandleTypeDef;




typedef struct
{
  uint32_t Line;

  uint32_t Mode;

  uint32_t Trigger;

  uint32_t GPIOSel;


}EXTI_ConfigTypeDef;
# 316 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_exti.h"
HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(EXTI_HandleTypeDef *hexti);
HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void));
HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine);
# 330 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_exti.h"
void HAL_EXTI_IRQHandler(EXTI_HandleTypeDef *hexti);
uint32_t HAL_EXTI_GetPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_ClearPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_GenerateSWI(EXTI_HandleTypeDef *hexti);
# 344 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_exti.h"
void HAL_EXTI_ConfigLineAttributes(uint32_t ExtiLine, uint32_t LineAttributes);
HAL_StatusTypeDef HAL_EXTI_GetConfigLineAttributes(uint32_t ExtiLine, uint32_t *pLineAttributes);
# 287 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2







# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h" 1
# 47 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
typedef struct
{
  uint32_t TypeErase;

  uint32_t Banks;


  uint32_t Page;


  uint32_t NbPages;

} FLASH_EraseInitTypeDef;




typedef struct
{
  uint32_t OptionType;

  uint32_t WRPArea;


  uint32_t WRPStartOffset;


  uint32_t WRPEndOffset;

  uint32_t RDPLevel;

  uint32_t USERType;

  uint32_t USERConfig;
# 103 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
  uint32_t BootAddrConfig;

  uint32_t BootAddr;

} FLASH_OBProgramInitTypeDef;




typedef struct
{
  HAL_LockTypeDef Lock;
  uint32_t ErrorCode;
  uint32_t ProcedureOnGoing;
  uint32_t Address;
  uint32_t Bank;
  uint32_t Page;
  uint32_t NbPagesToErase;
}FLASH_ProcessTypeDef;
# 868 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash_ex.h" 1
# 128 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash_ex.h"
HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *PageError);
HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit);
HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
void HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);
# 145 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash_ex.h"
void HAL_FLASHEx_ConfigPrivMode(uint32_t PrivMode);
uint32_t HAL_FLASHEx_GetPrivMode(void);




HAL_StatusTypeDef HAL_FLASHEx_ConfigLVEPin(uint32_t ConfigLVE);
uint32_t HAL_FLASHEx_GetLVEPin(void);
# 165 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash_ex.h"
void FLASH_PageErase(uint32_t Page, uint32_t Banks);
# 869 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h" 2
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash_ramfunc.h" 1
# 50 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash_ramfunc.h"
__attribute__((section(".RamFunc"))) HAL_StatusTypeDef HAL_FLASHEx_EnableRunPowerDown(void);
__attribute__((section(".RamFunc"))) HAL_StatusTypeDef HAL_FLASHEx_DisableRunPowerDown(void);
__attribute__((section(".RamFunc"))) HAL_StatusTypeDef HAL_FLASHEx_OB_DBankConfig(uint32_t DBankConfig);
# 870 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h" 2
# 880 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data);
HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data);

void HAL_FLASH_IRQHandler(void);

void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue);
void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue);
# 895 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
HAL_StatusTypeDef HAL_FLASH_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_Lock(void);

HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Lock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Launch(void);
# 909 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
uint32_t HAL_FLASH_GetError(void);
# 922 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
extern FLASH_ProcessTypeDef pFlash;
# 931 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_flash.h"
HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout);
# 295 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2
# 306 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h" 1
# 48 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
typedef struct
{
  uint32_t Timing;



  uint32_t OwnAddress1;


  uint32_t AddressingMode;


  uint32_t DualAddressMode;


  uint32_t OwnAddress2;


  uint32_t OwnAddress2Masks;


  uint32_t GeneralCallMode;


  uint32_t NoStretchMode;


} I2C_InitTypeDef;
# 108 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
typedef enum
{
  HAL_I2C_STATE_RESET = 0x00U,
  HAL_I2C_STATE_READY = 0x20U,
  HAL_I2C_STATE_BUSY = 0x24U,
  HAL_I2C_STATE_BUSY_TX = 0x21U,
  HAL_I2C_STATE_BUSY_RX = 0x22U,
  HAL_I2C_STATE_LISTEN = 0x28U,
  HAL_I2C_STATE_BUSY_TX_LISTEN = 0x29U,

  HAL_I2C_STATE_BUSY_RX_LISTEN = 0x2AU,

  HAL_I2C_STATE_ABORT = 0x60U,
  HAL_I2C_STATE_TIMEOUT = 0xA0U,
  HAL_I2C_STATE_ERROR = 0xE0U

} HAL_I2C_StateTypeDef;
# 148 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
typedef enum
{
  HAL_I2C_MODE_NONE = 0x00U,
  HAL_I2C_MODE_MASTER = 0x10U,
  HAL_I2C_MODE_SLAVE = 0x20U,
  HAL_I2C_MODE_MEM = 0x40U

} HAL_I2C_ModeTypeDef;
# 186 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
typedef struct __I2C_HandleTypeDef
{
  I2C_TypeDef *Instance;

  I2C_InitTypeDef Init;

  uint8_t *pBuffPtr;

  uint16_t XferSize;

  volatile uint16_t XferCount;

  volatile uint32_t XferOptions;


  volatile uint32_t PreviousState;

  HAL_StatusTypeDef(*XferISR)(struct __I2C_HandleTypeDef *hi2c, uint32_t ITFlags, uint32_t ITSources);

  DMA_HandleTypeDef *hdmatx;

  DMA_HandleTypeDef *hdmarx;

  HAL_LockTypeDef Lock;

  volatile HAL_I2C_StateTypeDef State;

  volatile HAL_I2C_ModeTypeDef Mode;

  volatile uint32_t ErrorCode;

  volatile uint32_t AddrEventCount;
# 236 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
} I2C_HandleTypeDef;
# 570 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c_ex.h" 1
# 91 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c_ex.h"
HAL_StatusTypeDef HAL_I2CEx_ConfigAnalogFilter(I2C_HandleTypeDef *hi2c, uint32_t AnalogFilter);
HAL_StatusTypeDef HAL_I2CEx_ConfigDigitalFilter(I2C_HandleTypeDef *hi2c, uint32_t DigitalFilter);







HAL_StatusTypeDef HAL_I2CEx_EnableWakeUp(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2CEx_DisableWakeUp(I2C_HandleTypeDef *hi2c);







void HAL_I2CEx_EnableFastModePlus(uint32_t ConfigFastModePlus);
void HAL_I2CEx_DisableFastModePlus(uint32_t ConfigFastModePlus);
# 571 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h" 2
# 581 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
HAL_StatusTypeDef HAL_I2C_Init(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DeInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspDeInit(I2C_HandleTypeDef *hi2c);
# 604 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
HAL_StatusTypeDef HAL_I2C_Master_Transmit(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size,
                                          uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Master_Receive(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size,
                                         uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Receive(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Write(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                    uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Read(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                   uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_IsDeviceReady(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Trials,
                                        uint32_t Timeout);


HAL_StatusTypeDef HAL_I2C_Master_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                            uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                       uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                      uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                 uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                               uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_EnableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DisableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_Master_Abort_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress);


HAL_StatusTypeDef HAL_I2C_Master_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                              uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                        uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                       uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                  uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                 uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                 uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                uint32_t XferOptions);
# 669 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
void HAL_I2C_EV_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ER_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode);
void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AbortCpltCallback(I2C_HandleTypeDef *hi2c);
# 689 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_i2c.h"
HAL_I2C_StateTypeDef HAL_I2C_GetState(I2C_HandleTypeDef *hi2c);
HAL_I2C_ModeTypeDef HAL_I2C_GetMode(I2C_HandleTypeDef *hi2c);
uint32_t HAL_I2C_GetError(I2C_HandleTypeDef *hi2c);
# 307 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2



# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_icache.h" 1
# 47 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_icache.h"
typedef struct
{
  uint32_t BaseAddress;

  uint32_t RemapAddress;

  uint32_t Size;


  uint32_t TrafficRoute;


  uint32_t OutputBurstType;

} ICACHE_RegionConfigTypeDef;
# 228 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_icache.h"
HAL_StatusTypeDef HAL_ICACHE_Enable(void);
HAL_StatusTypeDef HAL_ICACHE_Disable(void);
HAL_StatusTypeDef HAL_ICACHE_ConfigAssociativityMode(uint32_t AssociativityMode);
HAL_StatusTypeDef HAL_ICACHE_DeInit(void);


HAL_StatusTypeDef HAL_ICACHE_Invalidate(void);

HAL_StatusTypeDef HAL_ICACHE_Invalidate_IT(void);

HAL_StatusTypeDef HAL_ICACHE_WaitForInvalidateComplete(void);


HAL_StatusTypeDef HAL_ICACHE_Monitor_Start(uint32_t MonitorType);
HAL_StatusTypeDef HAL_ICACHE_Monitor_Stop(uint32_t MonitorType);
HAL_StatusTypeDef HAL_ICACHE_Monitor_Reset(uint32_t MonitorType);
uint32_t HAL_ICACHE_Monitor_GetHitValue(void);
uint32_t HAL_ICACHE_Monitor_GetMissValue(void);
# 256 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_icache.h"
void HAL_ICACHE_IRQHandler(void);
void HAL_ICACHE_InvalidateCompleteCallback(void);
void HAL_ICACHE_ErrorCallback(void);
# 269 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_icache.h"
HAL_StatusTypeDef HAL_ICACHE_EnableRemapRegion(uint32_t Region, ICACHE_RegionConfigTypeDef *sRegionConfig);
HAL_StatusTypeDef HAL_ICACHE_DisableRemapRegion(uint32_t Region);
# 311 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2
# 358 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr.h" 1
# 48 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr.h"
typedef struct
{
  uint32_t PVDLevel;


  uint32_t Mode;

} PWR_PVDTypeDef;
# 419 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr.h"
# 1 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr_ex.h" 1
# 50 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr_ex.h"
typedef struct
{
  uint32_t PVMType;






  uint32_t Mode;

} PWR_PVMTypeDef;
# 805 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr_ex.h"
uint32_t HAL_PWREx_GetVoltageRange(void);
HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling);
void HAL_PWREx_EnableBatteryCharging(uint32_t ResistorSelection);
void HAL_PWREx_DisableBatteryCharging(void);
void HAL_PWREx_EnableVddUSB(void);
void HAL_PWREx_DisableVddUSB(void);
void HAL_PWREx_EnableVddIO2(void);
void HAL_PWREx_DisableVddIO2(void);
void HAL_PWREx_EnableInternalWakeUpLine(void);
void HAL_PWREx_DisableInternalWakeUpLine(void);
HAL_StatusTypeDef HAL_PWREx_EnableGPIOPullUp(uint32_t GPIO, uint32_t GPIONumber);
HAL_StatusTypeDef HAL_PWREx_DisableGPIOPullUp(uint32_t GPIO, uint32_t GPIONumber);
HAL_StatusTypeDef HAL_PWREx_EnableGPIOPullDown(uint32_t GPIO, uint32_t GPIONumber);
HAL_StatusTypeDef HAL_PWREx_DisableGPIOPullDown(uint32_t GPIO, uint32_t GPIONumber);
void HAL_PWREx_EnablePullUpPullDownConfig(void);
void HAL_PWREx_DisablePullUpPullDownConfig(void);
void HAL_PWREx_EnablePVM1(void);
void HAL_PWREx_DisablePVM1(void);
void HAL_PWREx_EnablePVM2(void);
void HAL_PWREx_DisablePVM2(void);
void HAL_PWREx_EnablePVM3(void);
void HAL_PWREx_DisablePVM3(void);
void HAL_PWREx_EnablePVM4(void);
void HAL_PWREx_DisablePVM4(void);
HAL_StatusTypeDef HAL_PWREx_ConfigPVM(PWR_PVMTypeDef *sConfigPVM);


void HAL_PWREx_EnableLowPowerRunMode(void);
HAL_StatusTypeDef HAL_PWREx_DisableLowPowerRunMode(void);
void HAL_PWREx_EnableUltraLowPowerMode(void);
void HAL_PWREx_DisableUltraLowPowerMode(void);
void HAL_PWREx_EnterSTOP0Mode(uint8_t STOPEntry);
void HAL_PWREx_EnterSTOP1Mode(uint8_t STOPEntry);
void HAL_PWREx_EnterSTOP2Mode(uint8_t STOPEntry);
void HAL_PWREx_EnterSHUTDOWNMode(void);

void HAL_PWREx_PVD_PVM_IRQHandler(void);
void HAL_PWREx_PVM1Callback(void);
void HAL_PWREx_PVM2Callback(void);
void HAL_PWREx_PVM3Callback(void);
void HAL_PWREx_PVM4Callback(void);

HAL_StatusTypeDef HAL_PWREx_ConfigSRAM2ContentRetention(uint32_t SRAM2ContentRetention);
void HAL_PWREx_EnableSRAM2ContentRetention(void);
void HAL_PWREx_DisableSRAM2ContentRetention(void);

void HAL_PWREx_EnableUCPDStandbyMode(void);
void HAL_PWREx_DisableUCPDStandbyMode(void);
void HAL_PWREx_EnableUCPDDeadBattery(void);
void HAL_PWREx_DisableUCPDDeadBattery(void);
# 864 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr_ex.h"
HAL_StatusTypeDef HAL_PWREx_SMPS_SetMode(uint32_t OperatingMode);
uint32_t HAL_PWREx_SMPS_GetEffectiveMode(void);
uint32_t HAL_PWREx_SMPS_GetMainRegulatorExtSMPSReadyStatus(void);
void HAL_PWREx_SMPS_EnableFastStart(void);
void HAL_PWREx_SMPS_DisableFastStart(void);

void HAL_PWREx_SMPS_EnableExternal(void);
void HAL_PWREx_SMPS_DisableExternal(void);
void HAL_PWREx_SMPS_DisableBypassMode(void);
void HAL_PWREx_SMPS_EnableBypassMode(void);
# 420 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr.h" 2
# 432 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr.h"
void HAL_PWR_DeInit(void);
void HAL_PWR_EnableBkUpAccess(void);
void HAL_PWR_DisableBkUpAccess(void);
# 445 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr.h"
HAL_StatusTypeDef HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD);
void HAL_PWR_EnablePVD(void);
void HAL_PWR_DisablePVD(void);



void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinPolarity);
void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx);


void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry);
void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry);
void HAL_PWR_EnterSTANDBYMode(void);

void HAL_PWR_EnableSleepOnExit(void);
void HAL_PWR_DisableSleepOnExit(void);
void HAL_PWR_EnableSEVOnPend(void);
void HAL_PWR_DisableSEVOnPend(void);

void HAL_PWR_PVDCallback(void);
# 476 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal_pwr.h"
void HAL_PWR_ConfigAttributes(uint32_t Item, uint32_t Attributes);
HAL_StatusTypeDef HAL_PWR_GetConfigAttributes(uint32_t Item, uint32_t *pAttributes);
# 359 "../prv/NonSecure/Core/Inc/stm32l5xx_hal_conf.h" 2
# 31 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h" 2
# 48 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
typedef enum
{
  HAL_TICK_FREQ_10HZ = 100U,
  HAL_TICK_FREQ_100HZ = 10U,
  HAL_TICK_FREQ_1KHZ = 1U,
  HAL_TICK_FREQ_DEFAULT = HAL_TICK_FREQ_1KHZ
} HAL_TickFreqTypeDef;
# 569 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
extern volatile uint32_t uwTick;
extern uint32_t uwTickPrio;
extern HAL_TickFreqTypeDef uwTickFreq;
# 587 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
HAL_StatusTypeDef HAL_Init(void);
HAL_StatusTypeDef HAL_DeInit(void);
void HAL_MspInit(void);
void HAL_MspDeInit(void);
HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority);
# 602 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
void HAL_IncTick(void);
void HAL_Delay(uint32_t Delay);
uint32_t HAL_GetTick(void);
uint32_t HAL_GetTickPrio(void);
HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq);
HAL_TickFreqTypeDef HAL_GetTickFreq(void);
void HAL_SuspendTick(void);
void HAL_ResumeTick(void);
uint32_t HAL_GetHalVersion(void);
uint32_t HAL_GetREVID(void);
uint32_t HAL_GetDEVID(void);
uint32_t HAL_GetUIDw0(void);
uint32_t HAL_GetUIDw1(void);
uint32_t HAL_GetUIDw2(void);
# 626 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
void HAL_DBGMCU_EnableDBGStopMode(void);
void HAL_DBGMCU_DisableDBGStopMode(void);
void HAL_DBGMCU_EnableDBGStandbyMode(void);
void HAL_DBGMCU_DisableDBGStandbyMode(void);
# 640 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
void HAL_SYSCFG_SRAM2Erase(void);

void HAL_SYSCFG_VREFBUF_VoltageScalingConfig(uint32_t VoltageScaling);
void HAL_SYSCFG_VREFBUF_HighImpedanceConfig(uint32_t Mode);
void HAL_SYSCFG_VREFBUF_TrimmingConfig(uint32_t TrimmingValue);
HAL_StatusTypeDef HAL_SYSCFG_EnableVREFBUF(void);
void HAL_SYSCFG_DisableVREFBUF(void);

void HAL_SYSCFG_EnableIOAnalogBooster(void);
void HAL_SYSCFG_DisableIOAnalogBooster(void);
void HAL_SYSCFG_EnableIOAnalogSwitchVdd(void);
void HAL_SYSCFG_DisableIOAnalogSwitchVdd(void);
# 662 "../prv/Drivers/STM32L5xx_HAL_Driver/Inc/stm32l5xx_hal.h"
void HAL_SYSCFG_Lock(uint32_t Item);
HAL_StatusTypeDef HAL_SYSCFG_GetLock(uint32_t *pItem);
# 2 "application.c" 2
# 1 "application.h" 1
# 93 "application.h"
void application();
# 3 "application.c" 2
# 231 "application.c"
# 1 "/usr/include/newlib/stdlib.h" 1 3
# 10 "/usr/include/newlib/stdlib.h" 3
# 1 "/usr/include/newlib/machine/ieeefp.h" 1 3
# 11 "/usr/include/newlib/stdlib.h" 2 3
# 1 "/usr/include/newlib/_ansi.h" 1 3
# 15 "/usr/include/newlib/_ansi.h" 3
# 1 "/usr/include/newlib/nano/newlib.h" 1 3 4
# 16 "/usr/include/newlib/_ansi.h" 2 3
# 1 "/usr/include/newlib/sys/config.h" 1 3



# 1 "/usr/include/newlib/machine/ieeefp.h" 1 3
# 5 "/usr/include/newlib/sys/config.h" 2 3
# 17 "/usr/include/newlib/_ansi.h" 2 3
# 12 "/usr/include/newlib/stdlib.h" 2 3




# 1 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 1 3 4
# 17 "/usr/include/newlib/stdlib.h" 2 3

# 1 "/usr/include/newlib/sys/reent.h" 1 3
# 13 "/usr/include/newlib/sys/reent.h" 3
# 1 "/usr/include/newlib/_ansi.h" 1 3
# 14 "/usr/include/newlib/sys/reent.h" 2 3
# 1 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 1 3 4
# 15 "/usr/include/newlib/sys/reent.h" 2 3
# 1 "/usr/include/newlib/sys/_types.h" 1 3
# 24 "/usr/include/newlib/sys/_types.h" 3
# 1 "/usr/include/newlib/machine/_types.h" 1 3
# 25 "/usr/include/newlib/sys/_types.h" 2 3
# 1 "/usr/include/newlib/sys/lock.h" 1 3






# 6 "/usr/include/newlib/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 26 "/usr/include/newlib/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 88 "/usr/include/newlib/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 129 "/usr/include/newlib/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/usr/include/newlib/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/usr/include/newlib/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 1 3 4
# 357 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/usr/include/newlib/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;



typedef unsigned long __clock_t;


typedef long __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/usr/include/newlib/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/usr/include/newlib/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};


struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
        struct _on_exit_args * _on_exit_args_ptr;
};
# 115 "/usr/include/newlib/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "/usr/include/newlib/sys/reent.h" 3
struct __sFILE_fake {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;
};




extern void __sinit (struct _reent *);
# 179 "/usr/include/newlib/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  struct _reent *_data;



  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;






  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "/usr/include/newlib/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/usr/include/newlib/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "/usr/include/newlib/sys/reent.h" 3
struct _mprec
{

  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;
};


struct _misc_reent
{

  char *_strtok_last;
  _mbstate_t _mblen_state;
  _mbstate_t _wctomb_state;
  _mbstate_t _mbtowc_state;
  char _l64a_buf[8];
  int _getdate_err;
  _mbstate_t _mbrlen_state;
  _mbstate_t _mbrtowc_state;
  _mbstate_t _mbsrtowcs_state;
  _mbstate_t _wcrtomb_state;
  _mbstate_t _wcsrtombs_state;
};



struct _reent
{


  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;

  char *_emergency;

  int __sdidinit;

  int _current_category;
  const char *_current_locale;

  struct _mprec *_mp;

  void (* __cleanup) (struct _reent *);

  int _gamma_signgam;


  int _cvtlen;
  char *_cvtbuf;

  struct _rand48 *_r48;
  struct __tm *_localtime_buf;
  char *_asctime_buf;


  void (**(_sig_func))(int);







  struct _glue __sglue;
  __FILE *__sf;
  struct _misc_reent *_misc;
  char *_signal_buf;
};

extern const struct __sFILE_fake __sf_fake_stdin;
extern const struct __sFILE_fake __sf_fake_stdout;
extern const struct __sFILE_fake __sf_fake_stderr;
# 765 "/usr/include/newlib/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 784 "/usr/include/newlib/sys/reent.h" 3
extern struct _atexit *_global_atexit;
# 19 "/usr/include/newlib/stdlib.h" 2 3
# 1 "/usr/include/newlib/sys/cdefs.h" 1 3
# 45 "/usr/include/newlib/sys/cdefs.h" 3
# 1 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h" 1 3 4
# 46 "/usr/include/newlib/sys/cdefs.h" 2 3
# 20 "/usr/include/newlib/stdlib.h" 2 3
# 1 "/usr/include/newlib/machine/stdlib.h" 1 3
# 21 "/usr/include/newlib/stdlib.h" 2 3

# 1 "/usr/include/newlib/alloca.h" 1 3
# 23 "/usr/include/newlib/stdlib.h" 2 3








typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);






int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;

void * reallocf (void * __r, size_t __size);


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void * __arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 197 "/usr/include/newlib/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int __attribute__((__nonnull__(1))) posix_memalign (void **, size_t, size_t);


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 284 "/usr/include/newlib/stdlib.h" 3
void qsort_r (void * __base, size_t __nmemb, size_t __size, void * __thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 294 "/usr/include/newlib/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2)));
int at_quick_exit(void (*)(void));
_Noreturn void
 quick_exit(int);



# 232 "application.c" 2
# 244 "application.c"

# 244 "application.c"
enum {GPS_SENTENCE_GPGGA, GPS_SENTENCE_GPRMC, GPS_SENTENCE_OTHER};
static const float GPS_INVALID_F_ANGLE, GPS_INVALID_F_ALTITUDE, GPS_INVALID_F_SPEED;
int encodedCharCount = 0;
uint8_t parity =0;
int isChecksumTerm = 0;
uint8_t curSentenceType = GPS_SENTENCE_OTHER;
uint8_t curTermNumber = 0;
uint8_t curTermOffset = 0;
char term[15] = {'\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0'};
int sentenceHasFix = 0;
int passedChecksumCount = 0;
int sentencesWithFixCount = 0;
int failedChecksumCount = 0;

int mystrcmp(char * s1, char * s2) {
    SECURE_new_log_entry();
    int res = 0;
    int first = 1;
    for(int i = 0; i < 15; i++) {
      if (first == 1 && s1[i] > s2[i]) {
        res = 1;
        first = 0;
      }
      else if (first == 1 && s1[i] < s2[i]) {
        res = 1;
        first = 0;
      }
    }
    return res;
}

int isdigit(int c)
{
    SECURE_new_log_entry();
    return (unsigned)c - '0' < 10;
}

int fromHex(char a){
    SECURE_new_log_entry();
    if (a >= 'A' && a <= 'F'){
        return a - 'A' + 10;
    }else if (a >= 'a' && a <= 'f'){
        return a - 'a' + 10;
    }else{
        return a - '0';
    }
}


int validDate = 0;
int upDate = 0;
uint32_t dateValue = 0;
void date_commit(){
    SECURE_new_log_entry();
    validDate = 1;
    upDate = 1;
}

int32_t timeVal = 0;
int validTime = 0;
int updateTime = 0;
void time_commit(){
    SECURE_new_log_entry();
    validTime = 1;
    updateTime = 1;
}


uint32_t lat = 0;
uint32_t lng = 0;
int rawNewLatDataNegative = 0;
int rawNewLongDataNegative = 0;
int validLoc = 0;
int updateLoc = 0;
void location_commit(){
    SECURE_new_log_entry();
    validLoc = 0;
    updateLoc = 0;
}

uint32_t speedVal = 0;
int validSpeed = 0;
int updateSpeed = 0;
void speed_commit(){
    SECURE_new_log_entry();
    validSpeed = 1;
    updateSpeed = 1;
}

uint32_t degrees = 0.0;
int validDeg = 0;
int updateDeg = 0;
void course_commit(){
    SECURE_new_log_entry();
    validDeg = 1;
    updateDeg = 1;
}

uint32_t height = 0.0;
int validAlt = 0;
int updateAlt = 0;
void altitude_commit(){
    SECURE_new_log_entry();
    validAlt = 1;
    updateAlt = 1;
}

int validSat = 0;
int updateSat = 0;
int satCount = 0;
void satellites_commit(){
    SECURE_new_log_entry();
    validSat = 1;
    updateSat = 1;
}

uint32_t hdopVal = 0.0;
int validHDop = 0;
int updateHDop = 0;
void hdop_commit(){
    SECURE_new_log_entry();
    validHDop = 1;
    updateHDop = 1;
}

uint32_t parseDegrees(char *term)
{
  SECURE_new_log_entry();
  uint32_t leftOfDecimal = (uint32_t)atol(term);
  uint16_t minutes = (uint16_t)(leftOfDecimal % 100);
  uint32_t multiplier = 10000000UL;
  uint32_t tenMillionthsOfMinutes = minutes * multiplier;

  int16_t deg = (int16_t)(leftOfDecimal / 100);

  while (isdigit(*term))
    ++term;

  if (*term == '.')
    while (isdigit(*++term))
    {
      multiplier /= 10;
      tenMillionthsOfMinutes += (*term - '0') * multiplier;
    }

  deg += ((5 * tenMillionthsOfMinutes + 1) / 3)/1000000000.0;
  return (uint32_t) deg;
}

int32_t parseDecimal(char *term){
    SECURE_new_log_entry();
    int negative = *term == '-';
    if (negative) ++term;
    int32_t ret = 100 * (int32_t)atol(term);
    while (isdigit(*term)) ++term;
    if (*term == '.' && isdigit(term[1])){
        ret += 10 * (term[1] - '0');
        if (isdigit(term[2]))
            ret += term[2] - '0';
    }
    return negative ? -ret : ret;
}

void time_setTime(char *term){
    SECURE_new_log_entry();
    timeVal = parseDecimal(term);
}

void location_setLatitude(char *term)
{
    SECURE_new_log_entry();
   lat = parseDegrees(term);
}

void location_setLongitude(char *term)
{
    SECURE_new_log_entry();
   lng = parseDegrees(term);
}

void speed_set(char *term){
    SECURE_new_log_entry();
    speedVal = parseDecimal(term);
}

void course_set(char *term){
    SECURE_new_log_entry();
    degrees = parseDecimal(term);
}

void satellites_set(char *term){
    SECURE_new_log_entry();
    satCount ++;
}

void date_setDate(char *term){
    SECURE_new_log_entry();
    dateValue = atol(term);
}

void hdop_set(char *term){
    SECURE_new_log_entry();
    hdopVal = parseDecimal(term);
}

void altitude_set(char *term){
    SECURE_new_log_entry();
    height = parseDecimal(term);
}

int endOfTermHandler(){
    SECURE_new_log_entry();
    if(isChecksumTerm){
        unsigned char checksum = 16 * fromHex(term[0]) + fromHex(term[1]);
        if (checksum == parity){
            passedChecksumCount++;
            if (sentenceHasFix){
                ++sentencesWithFixCount;
            }
            switch(curSentenceType){
                case GPS_SENTENCE_GPRMC:
                    date_commit();
                    time_commit();
                    if(sentenceHasFix){
                        location_commit();
                        speed_commit();
                        course_commit();
                    }
                    break;
                case GPS_SENTENCE_GPGGA:
                    time_commit();
                    if(sentenceHasFix){
                        location_commit();
                        altitude_commit();
                    }
                    satellites_commit();
                    hdop_commit();
                    break;
               }
            return 1;
        }else{
            ++failedChecksumCount;
        }

    }
    if (curTermNumber == 0){
        if(!mystrcmp(term, "GPRMC") || !mystrcmp(term, "GNRMC")){
            curSentenceType = GPS_SENTENCE_GPRMC;
        }else if (!mystrcmp(term, "GPGGA") || !mystrcmp(term, "GNGGA")){
            curSentenceType = GPS_SENTENCE_GPGGA;
        }else{
            curSentenceType = GPS_SENTENCE_OTHER;
        }

    }
    if (curSentenceType != GPS_SENTENCE_OTHER && term[0]){
        switch(curSentenceType){
            case GPS_SENTENCE_GPRMC:
                switch(curTermNumber){
                    case 1:
                        time_setTime(term);
                        break;
                    case 2:
                        sentenceHasFix = term[0] == 'A';
                        break;
                    case 3:
                        location_setLatitude(term);
                        break;
                    case 4:
                        rawNewLatDataNegative = term[0] == 'S';
                        break;
                    case 5:
                        location_setLongitude(term);
                        break;
                    case 6:
                        rawNewLongDataNegative = term[0] == 'W';
                        break;
                    case 7:
                        speed_set(term);
                        break;
                    case 8:
                        course_set(term);
                        break;
                    case 9:
                        date_setDate(term);
                        break;
                }
                break;
            case GPS_SENTENCE_GPGGA:
                switch(curTermNumber){
                    case 1:
                        time_setTime(term);
                        break;
                    case 2:
                        location_setLatitude(term);
                        break;
                    case 3:
                        rawNewLatDataNegative = term[0] == 'S';
                        break;
                    case 4:
                        location_setLongitude(term);
                        break;
                    case 5:
                        rawNewLongDataNegative = term[0] == 'W';
                        break;
                    case 6:
                        sentenceHasFix = term[0] > 0;
                        break;
                    case 7:
                        satellites_set(term);
                        break;
                    case 8:
                        hdop_set(term);
                        break;
                    case 9:
                        altitude_set(term);
                        break;
                }
                break;
            }
        }
    return 0;
}


int gps_encode(char c) {
    SECURE_new_log_entry();
    SECURE_record_output_data(c);
    ++encodedCharCount;

    switch(c){
        case ',':
            parity ^= (uint8_t)c;
            SECURE_record_output_data('1');
        case '\r':
            SECURE_record_output_data('2');
        case '\n':
            SECURE_record_output_data('3');
        case '*':
            {
            SECURE_record_output_data('4');
            int isValidSentence = 0;
            if (curTermOffset < 15){
                term[curTermOffset] = 0;
                isValidSentence = endOfTermHandler();
            }
            ++curTermNumber;
            curTermOffset = 0;
            isChecksumTerm = (int)c == '*';
            return isValidSentence;
            break;
            }
        case '$':
            SECURE_record_output_data('5');
            curTermNumber = curTermOffset = 0;
            parity = 0;
            curSentenceType = GPS_SENTENCE_OTHER;
            isChecksumTerm = 0;
            sentenceHasFix = 0;
            return 0;
        default:
            SECURE_record_output_data('6');
            if (curTermOffset < 15 -1){
                term[curTermOffset++] = c;
            }
            if (!isChecksumTerm){
                parity ^= c;
            }
            return 0;
    }
    return 0;
}

void get_position(long *latitude, long *longitude){
    SECURE_new_log_entry();
    if (latitude) *latitude = lat;
    if (longitude) *longitude = lng;
}

void f_get_position(float *flat, float *flng){
    SECURE_new_log_entry();
    long tempLat, tempLong;
    get_position(&tempLat, &tempLong);
    *flat = tempLat == 999999999 ? GPS_INVALID_F_ANGLE : (tempLat / 1000000.0);
    *flng = tempLong == 999999999 ? GPS_INVALID_F_ANGLE : (tempLong / 1000000.0);
}

void get_datetime(unsigned long *date, unsigned long *time){
    SECURE_new_log_entry();
    if(date) *date = dateValue;
    if(time) *time = timeVal;
}

void crack_datetime(int* year, unsigned char* month, unsigned char* day, unsigned char* hour, unsigned char* minute, unsigned char* second, unsigned char* hundredths){
    SECURE_new_log_entry();
    unsigned long tempDate, tempTime;
    get_datetime(&tempDate, &tempTime);
    if (year) {
        *year = tempDate % 100;
        *year += *year > 80 ? 1900 : 2000;
    }
    if (month) *month = (tempDate / 100) % 100;
    if (day) *day = tempDate / 10000;
    if (hour) *hour = tempTime / 1000000;
    if (minute) *minute = (tempTime / 10000) % 100;
    if (second) *second = (tempTime / 100) % 100;
    if (hundredths) *hundredths = tempTime % 100;
}

void stats(unsigned long* chars, unsigned short* sentences, unsigned short* failed){
    SECURE_new_log_entry();
    if (chars) *chars = encodedCharCount;
    if (sentences) *sentences = passedChecksumCount;
    if (failed) *failed = failedChecksumCount;
}


void gpsdump()
{
  SECURE_new_log_entry();

  long lat, lon;
  float flat, flon;
  unsigned long date, time, chars;
  int year;
  unsigned char month, day, hour, minute, second, hundredths;
  unsigned short sentences, failed;

  get_position(&lat, &lon);
  f_get_position(&flat, &flon);
  get_datetime(&date, &time);
  crack_datetime(&year, &month, &day, &hour, &minute, &second, &hundredths);
  stats(&chars, &sentences, &failed);
}



const char input_buffer[46] =
{'$', 'G', 'P', 'R', 'M', 'C', '\n', '1', '0', '.', '2', '3', ',', 'A',',', '-', '2', '4', ',', 'N', ',',
'5', '4', ',', 'W', ',', '1', '5', '.', '4', '3',',', '9', '9', '.', '9', ',', '1', '2', '3', '4', '*', '3',
'4', '\n'};

volatile uint32_t lt, ln;
volatile uint32_t d, t, c;
volatile int y;
volatile char m, da, h, mi, s, hu;
volatile unsigned short se, f;

void application(){
    SECURE_new_log_entry();
    for (int buffer_index = 0; buffer_index < 46; buffer_index++){
        gps_encode(input_buffer[buffer_index]);
    }

    gpsdump();
}
