# 1 "/opt/microchip/xc8/v2.10/pic/sources/c99/pic/__eeprom.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/xc8/v2.10/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "/opt/microchip/xc8/v2.10/pic/sources/c99/pic/__eeprom.c" 2
# 1 "/opt/microchip/xc8/v2.10/pic/include/xc.h" 1 3
# 18 "/opt/microchip/xc8/v2.10/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/xc8debug.h" 1 3



# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/stdlib.h" 1 3



# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/musl_xc8.h" 1 3
# 5 "/opt/microchip/xc8/v2.10/pic/include/c99/stdlib.h" 2 3





# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/features.h" 1 3
# 11 "/opt/microchip/xc8/v2.10/pic/include/c99/stdlib.h" 2 3
# 21 "/opt/microchip/xc8/v2.10/pic/include/c99/stdlib.h" 3
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 1 3
# 18 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 122 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "/opt/microchip/xc8/v2.10/pic/include/c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);





size_t __ctype_get_mb_cur_max(void);
# 5 "/opt/microchip/xc8/v2.10/pic/include/c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/opt/microchip/xc8/v2.10/pic/include/xc.h" 2 3



# 1 "/opt/microchip/xc8/v2.10/pic/include/pic.h" 1 3




# 1 "/opt/microchip/xc8/v2.10/pic/include/htc.h" 1 3



# 1 "/opt/microchip/xc8/v2.10/pic/include/xc.h" 1 3
# 5 "/opt/microchip/xc8/v2.10/pic/include/htc.h" 2 3
# 6 "/opt/microchip/xc8/v2.10/pic/include/pic.h" 2 3







# 1 "/opt/microchip/xc8/v2.10/pic/include/pic_chip_select.h" 1 3
# 1879 "/opt/microchip/xc8/v2.10/pic/include/pic_chip_select.h" 3
# 1 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 1 3
# 44 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
# 1 "/opt/microchip/xc8/v2.10/pic/include/__at.h" 1 3
# 45 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 2 3
# 108 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char INDF0 __attribute__((address(0x000)));

__asm("INDF0 equ 00h");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x000)));
# 128 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0x001)));

__asm("INDF1 equ 01h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x001)));
# 148 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 168 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 227 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0x004)));



extern volatile unsigned char FSR0L __attribute__((address(0x004)));

__asm("FSR0L equ 04h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x004)));
# 251 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0x005)));

__asm("FSR0H equ 05h");


typedef union {
    struct {
        unsigned FSR0H :8;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0x005)));
# 271 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short FSR1 __attribute__((address(0x006)));



extern volatile unsigned char FSR1L __attribute__((address(0x006)));

__asm("FSR1L equ 06h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x006)));
# 295 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0x007)));

__asm("FSR1H equ 07h");


typedef union {
    struct {
        unsigned FSR1H :8;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0x007)));
# 315 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char BSR __attribute__((address(0x008)));

__asm("BSR equ 08h");


typedef union {
    struct {
        unsigned BSR :6;
    };
    struct {
        unsigned BSR0 :1;
        unsigned BSR1 :1;
        unsigned BSR2 :1;
        unsigned BSR3 :1;
        unsigned BSR4 :1;
        unsigned BSR5 :1;
    };
} BSRbits_t;
extern volatile BSRbits_t BSRbits __attribute__((address(0x008)));
# 373 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WREG __attribute__((address(0x009)));

__asm("WREG equ 09h");


typedef union {
    struct {
        unsigned WREG0 :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x009)));
# 393 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :7;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 413 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned INTEDG :1;
        unsigned :5;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 446 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PORTA __attribute__((address(0x00C)));

__asm("PORTA equ 0Ch");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x00C)));
# 496 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x00D)));

__asm("PORTB equ 0Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x00D)));
# 535 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x00E)));

__asm("PORTC equ 0Eh");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x00E)));
# 597 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x012)));

__asm("TRISA equ 012h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x012)));
# 647 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x013)));

__asm("TRISB equ 013h");


typedef union {
    struct {
        unsigned :4;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x013)));
# 686 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x014)));

__asm("TRISC equ 014h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x014)));
# 748 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char LATA __attribute__((address(0x018)));

__asm("LATA equ 018h");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x018)));
# 798 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char LATB __attribute__((address(0x019)));

__asm("LATB equ 019h");


typedef union {
    struct {
        unsigned :4;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x019)));
# 837 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char LATC __attribute__((address(0x01A)));

__asm("LATC equ 01Ah");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0x01A)));
# 899 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADLTH __attribute__((address(0x08C)));

__asm("ADLTH equ 08Ch");




extern volatile unsigned char ADLTHL __attribute__((address(0x08C)));

__asm("ADLTHL equ 08Ch");


typedef union {
    struct {
        unsigned LTH :8;
    };
    struct {
        unsigned ADLTH0 :1;
        unsigned ADLTH1 :1;
        unsigned ADLTH2 :1;
        unsigned ADLTH3 :1;
        unsigned ADLTH4 :1;
        unsigned ADLTH5 :1;
        unsigned ADLTH6 :1;
        unsigned ADLTH7 :1;
    };
    struct {
        unsigned ADLTH :8;
    };
    struct {
        unsigned LTH0 :1;
        unsigned LTH1 :1;
        unsigned LTH2 :1;
        unsigned LTH3 :1;
        unsigned LTH4 :1;
        unsigned LTH5 :1;
        unsigned LTH6 :1;
        unsigned LTH7 :1;
    };
} ADLTHLbits_t;
extern volatile ADLTHLbits_t ADLTHLbits __attribute__((address(0x08C)));
# 1034 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADLTHH __attribute__((address(0x08D)));

__asm("ADLTHH equ 08Dh");


typedef union {
    struct {
        unsigned LTH :8;
    };
    struct {
        unsigned ADLTH8 :1;
        unsigned ADLTH9 :1;
        unsigned ADLTH10 :1;
        unsigned ADLTH11 :1;
        unsigned ADLTH12 :1;
        unsigned ADLTH13 :1;
        unsigned ADLTH14 :1;
        unsigned ADLTH15 :1;
    };
    struct {
        unsigned ADLTH :8;
    };
    struct {
        unsigned LTH8 :1;
        unsigned LTH9 :1;
        unsigned LTH10 :1;
        unsigned LTH11 :1;
        unsigned LTH12 :1;
        unsigned LTH13 :1;
        unsigned LTH14 :1;
        unsigned LTH15 :1;
    };
} ADLTHHbits_t;
extern volatile ADLTHHbits_t ADLTHHbits __attribute__((address(0x08D)));
# 1162 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADUTH __attribute__((address(0x08E)));

__asm("ADUTH equ 08Eh");




extern volatile unsigned char ADUTHL __attribute__((address(0x08E)));

__asm("ADUTHL equ 08Eh");


typedef union {
    struct {
        unsigned UTH :8;
    };
    struct {
        unsigned ADUTH0 :1;
        unsigned ADUTH1 :1;
        unsigned ADUTH2 :1;
        unsigned ADUTH3 :1;
        unsigned ADUTH4 :1;
        unsigned ADUTH5 :1;
        unsigned ADUTH6 :1;
        unsigned ADUTH7 :1;
    };
    struct {
        unsigned ADUTH :8;
    };
    struct {
        unsigned UTH0 :1;
        unsigned UTH1 :1;
        unsigned UTH2 :1;
        unsigned UTH3 :1;
        unsigned UTH4 :1;
        unsigned UTH5 :1;
        unsigned UTH6 :1;
        unsigned UTH7 :1;
    };
} ADUTHLbits_t;
extern volatile ADUTHLbits_t ADUTHLbits __attribute__((address(0x08E)));
# 1297 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADUTHH __attribute__((address(0x08F)));

__asm("ADUTHH equ 08Fh");


typedef union {
    struct {
        unsigned UTH :8;
    };
    struct {
        unsigned ADUTH8 :1;
        unsigned ADUTH9 :1;
        unsigned ADUTH10 :1;
        unsigned ADUTH11 :1;
        unsigned ADUTH12 :1;
        unsigned ADUTH13 :1;
        unsigned ADUTH14 :1;
        unsigned ADUTH15 :1;
    };
    struct {
        unsigned ADUTH :8;
    };
    struct {
        unsigned UTH8 :1;
        unsigned UTH9 :1;
        unsigned UTH10 :1;
        unsigned UTH11 :1;
        unsigned UTH12 :1;
        unsigned UTH13 :1;
        unsigned UTH14 :1;
        unsigned UTH15 :1;
    };
} ADUTHHbits_t;
extern volatile ADUTHHbits_t ADUTHHbits __attribute__((address(0x08F)));
# 1425 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADERR __attribute__((address(0x090)));

__asm("ADERR equ 090h");




extern volatile unsigned char ADERRL __attribute__((address(0x090)));

__asm("ADERRL equ 090h");


typedef union {
    struct {
        unsigned ERR :8;
    };
    struct {
        unsigned ADERR0 :1;
        unsigned ADERR1 :1;
        unsigned ADERR2 :1;
        unsigned ADERR3 :1;
        unsigned ADERR4 :1;
        unsigned ADERR5 :1;
        unsigned ADERR6 :1;
        unsigned ADERR7 :1;
    };
    struct {
        unsigned ADERR :8;
    };
    struct {
        unsigned ERR0 :1;
        unsigned ERR1 :1;
        unsigned ERR2 :1;
        unsigned ERR3 :1;
        unsigned ERR4 :1;
        unsigned ERR5 :1;
        unsigned ERR6 :1;
        unsigned ERR7 :1;
    };
} ADERRLbits_t;
extern volatile ADERRLbits_t ADERRLbits __attribute__((address(0x090)));
# 1560 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADERRH __attribute__((address(0x091)));

__asm("ADERRH equ 091h");


typedef union {
    struct {
        unsigned ERR :8;
    };
    struct {
        unsigned ADERR8 :1;
        unsigned ADERR9 :1;
        unsigned ADERR10 :1;
        unsigned ADERR11 :1;
        unsigned ADERR12 :1;
        unsigned ADERR13 :1;
        unsigned ADERR14 :1;
        unsigned ADERR15 :1;
    };
    struct {
        unsigned ADERR :8;
    };
    struct {
        unsigned ERR8 :1;
        unsigned ERR9 :1;
        unsigned ERR10 :1;
        unsigned ERR11 :1;
        unsigned ERR12 :1;
        unsigned ERR13 :1;
        unsigned ERR14 :1;
        unsigned ERR15 :1;
    };
} ADERRHbits_t;
extern volatile ADERRHbits_t ADERRHbits __attribute__((address(0x091)));
# 1688 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADSTPT __attribute__((address(0x092)));

__asm("ADSTPT equ 092h");




extern volatile unsigned char ADSTPTL __attribute__((address(0x092)));

__asm("ADSTPTL equ 092h");


typedef union {
    struct {
        unsigned STPT :8;
    };
    struct {
        unsigned ADSTPT0 :1;
        unsigned ADSTPT1 :1;
        unsigned ADSTPT2 :1;
        unsigned ADSTPT3 :1;
        unsigned ADSTPT4 :1;
        unsigned ADSTPT5 :1;
        unsigned ADSTPT6 :1;
        unsigned ADSTPT7 :1;
    };
    struct {
        unsigned ADSTPT :8;
    };
    struct {
        unsigned STPT0 :1;
        unsigned STPT1 :1;
        unsigned STPT2 :1;
        unsigned STPT3 :1;
        unsigned STPT4 :1;
        unsigned STPT5 :1;
        unsigned STPT6 :1;
        unsigned STPT7 :1;
    };
} ADSTPTLbits_t;
extern volatile ADSTPTLbits_t ADSTPTLbits __attribute__((address(0x092)));
# 1823 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADSTPTH __attribute__((address(0x093)));

__asm("ADSTPTH equ 093h");


typedef union {
    struct {
        unsigned STPT :8;
    };
    struct {
        unsigned ADSTPT8 :1;
        unsigned ADSTPT9 :1;
        unsigned ADSTPT10 :1;
        unsigned ADSTPT11 :1;
        unsigned ADSTPT12 :1;
        unsigned ADSTPT13 :1;
        unsigned ADSTPT14 :1;
        unsigned ADSTPT15 :1;
    };
    struct {
        unsigned ADSTPT :8;
    };
    struct {
        unsigned STPT8 :1;
        unsigned STPT9 :1;
        unsigned STPT10 :1;
        unsigned STPT11 :1;
        unsigned STPT12 :1;
        unsigned STPT13 :1;
        unsigned STPT15 :1;
        unsigned STPT16 :1;
    };
} ADSTPTHbits_t;
extern volatile ADSTPTHbits_t ADSTPTHbits __attribute__((address(0x093)));
# 1951 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADFLTR __attribute__((address(0x094)));

__asm("ADFLTR equ 094h");




extern volatile unsigned char ADFLTRL __attribute__((address(0x094)));

__asm("ADFLTRL equ 094h");


typedef union {
    struct {
        unsigned FLTR :8;
    };
    struct {
        unsigned ADFLTR0 :1;
        unsigned ADFLTR1 :1;
        unsigned ADFLTR2 :1;
        unsigned ADFLTR3 :1;
        unsigned ADFLTR4 :1;
        unsigned ADFLTR5 :1;
        unsigned ADFLTR6 :1;
        unsigned ADFLTR7 :1;
    };
    struct {
        unsigned ADFLTR :8;
    };
    struct {
        unsigned FLTR0 :1;
        unsigned FLTR1 :1;
        unsigned FLTR2 :1;
        unsigned FLTR3 :1;
        unsigned FLTR4 :1;
        unsigned FLTR5 :1;
        unsigned FLTR6 :1;
        unsigned FLTR7 :1;
    };
} ADFLTRLbits_t;
extern volatile ADFLTRLbits_t ADFLTRLbits __attribute__((address(0x094)));
# 2086 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADFLTRH __attribute__((address(0x095)));

__asm("ADFLTRH equ 095h");


typedef union {
    struct {
        unsigned FLTR :8;
    };
    struct {
        unsigned ADFLTR8 :1;
        unsigned ADFLTR9 :1;
        unsigned ADFLTR10 :1;
        unsigned ADFLTR11 :1;
        unsigned ADFLTR12 :1;
        unsigned ADFLTR13 :1;
        unsigned ADFLTR14 :1;
        unsigned ADFLTR15 :1;
    };
    struct {
        unsigned ADFLTR :8;
    };
    struct {
        unsigned FLTR8 :1;
        unsigned FLTR9 :1;
        unsigned FLTR10 :1;
        unsigned FLTR11 :1;
        unsigned FLTR12 :1;
        unsigned FLTR13 :1;
        unsigned FLTR14 :1;
        unsigned FLTR15 :1;
    };
} ADFLTRHbits_t;
extern volatile ADFLTRHbits_t ADFLTRHbits __attribute__((address(0x095)));
# 2215 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __uint24 ADACC __attribute__((address(0x096)));


__asm("ADACC equ 096h");




extern volatile unsigned char ADACCL __attribute__((address(0x096)));

__asm("ADACCL equ 096h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ADACC0 :1;
        unsigned ADACC1 :1;
        unsigned ADACC2 :1;
        unsigned ADACC3 :1;
        unsigned ADACC4 :1;
        unsigned ADACC5 :1;
        unsigned ADACC6 :1;
        unsigned ADACC7 :1;
    };
    struct {
        unsigned ADACC :8;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
} ADACCLbits_t;
extern volatile ADACCLbits_t ADACCLbits __attribute__((address(0x096)));
# 2351 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADACCH __attribute__((address(0x097)));

__asm("ADACCH equ 097h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ADACC8 :1;
        unsigned ADACC9 :1;
        unsigned ADACC10 :1;
        unsigned ADACC11 :1;
        unsigned ADACC12 :1;
        unsigned ADACC13 :1;
        unsigned ADACC14 :1;
        unsigned ADACC15 :1;
    };
    struct {
        unsigned ADACC :8;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
} ADACCHbits_t;
extern volatile ADACCHbits_t ADACCHbits __attribute__((address(0x097)));
# 2479 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADACCU __attribute__((address(0x098)));

__asm("ADACCU equ 098h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ADACC16 :1;
        unsigned ADACC17 :1;
        unsigned ADACC18 :1;
        unsigned ADACC19 :1;
        unsigned ADACC20 :1;
        unsigned ADACC21 :1;
        unsigned ADACC22 :1;
        unsigned ADACC23 :1;
    };
    struct {
        unsigned ADACC :8;
    };
    struct {
        unsigned ACC16 :1;
        unsigned ACC17 :1;
        unsigned ACC18 :1;
        unsigned ACC19 :1;
        unsigned ACC20 :1;
        unsigned ACC21 :1;
        unsigned ACC22 :1;
        unsigned ACC23 :1;
    };
} ADACCUbits_t;
extern volatile ADACCUbits_t ADACCUbits __attribute__((address(0x098)));
# 2607 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCNT __attribute__((address(0x099)));

__asm("ADCNT equ 099h");


typedef union {
    struct {
        unsigned CNT :8;
    };
    struct {
        unsigned ADCNT0 :1;
        unsigned ADCNT1 :1;
        unsigned ADCNT2 :1;
        unsigned ADCNT3 :1;
        unsigned ADCNT4 :1;
        unsigned ADCNT5 :1;
        unsigned ADCNT6 :1;
        unsigned ADCNT7 :1;
    };
    struct {
        unsigned ADCNT :8;
    };
    struct {
        unsigned CNT0 :1;
        unsigned CNT1 :1;
        unsigned CNT2 :1;
        unsigned CNT3 :1;
        unsigned CNT4 :1;
        unsigned CNT5 :1;
        unsigned CNT6 :1;
        unsigned CNT7 :1;
    };
} ADCNTbits_t;
extern volatile ADCNTbits_t ADCNTbits __attribute__((address(0x099)));
# 2735 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADRPT __attribute__((address(0x09A)));

__asm("ADRPT equ 09Ah");


typedef union {
    struct {
        unsigned RPT :8;
    };
    struct {
        unsigned ADRPT0 :1;
        unsigned ADRPT1 :1;
        unsigned ADRPT2 :1;
        unsigned ADRPT3 :1;
        unsigned ADRPT4 :1;
        unsigned ADRPT5 :1;
        unsigned ADRPT6 :1;
        unsigned ADRPT7 :1;
    };
    struct {
        unsigned ADRPT :8;
    };
    struct {
        unsigned RPT0 :1;
        unsigned RPT1 :1;
        unsigned RPT2 :1;
        unsigned RPT3 :1;
        unsigned RPT4 :1;
        unsigned RPT5 :1;
        unsigned RPT6 :1;
        unsigned RPT7 :1;
    };
} ADRPTbits_t;
extern volatile ADRPTbits_t ADRPTbits __attribute__((address(0x09A)));
# 2863 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADPREV __attribute__((address(0x09B)));

__asm("ADPREV equ 09Bh");




extern volatile unsigned char ADPREVL __attribute__((address(0x09B)));

__asm("ADPREVL equ 09Bh");


typedef union {
    struct {
        unsigned PREV :8;
    };
    struct {
        unsigned ADPREV0 :1;
        unsigned ADPREV1 :1;
        unsigned ADPREV2 :1;
        unsigned ADPREV3 :1;
        unsigned ADPREV4 :1;
        unsigned ADPREV5 :1;
        unsigned ADPREV6 :1;
        unsigned ADPREV7 :1;
    };
    struct {
        unsigned ADPREV :8;
    };
    struct {
        unsigned PREV0 :1;
        unsigned PREV1 :1;
        unsigned PREV2 :1;
        unsigned PREV3 :1;
        unsigned PREV4 :1;
        unsigned PREV5 :1;
        unsigned PREV6 :1;
        unsigned PREV7 :1;
    };
} ADPREVLbits_t;
extern volatile ADPREVLbits_t ADPREVLbits __attribute__((address(0x09B)));
# 2998 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADPREVH __attribute__((address(0x09C)));

__asm("ADPREVH equ 09Ch");


typedef union {
    struct {
        unsigned PREV :8;
    };
    struct {
        unsigned ADPREV8 :1;
        unsigned ADPREV9 :1;
        unsigned ADPREV10 :1;
        unsigned ADPREV11 :1;
        unsigned ADPREV12 :1;
        unsigned ADPREV13 :1;
        unsigned ADPREV14 :1;
        unsigned ADPREV15 :1;
    };
    struct {
        unsigned ADPREV :8;
    };
    struct {
        unsigned PREV8 :1;
        unsigned PREV9 :1;
        unsigned PREV10 :1;
        unsigned PREV11 :1;
        unsigned PREV12 :1;
        unsigned PREV13 :1;
        unsigned PREV14 :1;
        unsigned PREV15 :1;
    };
} ADPREVHbits_t;
extern volatile ADPREVHbits_t ADPREVHbits __attribute__((address(0x09C)));
# 3126 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x09D)));

__asm("ADRES equ 09Dh");




extern volatile unsigned char ADRESL __attribute__((address(0x09D)));

__asm("ADRESL equ 09Dh");


typedef union {
    struct {
        unsigned RES :8;
    };
    struct {
        unsigned ADRES0 :1;
        unsigned ADRES1 :1;
        unsigned ADRES2 :1;
        unsigned ADRES3 :1;
        unsigned ADRES4 :1;
        unsigned ADRES5 :1;
        unsigned ADRES6 :1;
        unsigned ADRES7 :1;
    };
    struct {
        unsigned ADRES :8;
    };
    struct {
        unsigned RES0 :1;
        unsigned RES1 :1;
        unsigned RES2 :1;
        unsigned RES3 :1;
        unsigned RES4 :1;
        unsigned RES5 :1;
        unsigned RES6 :1;
        unsigned RES7 :1;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x09D)));
# 3261 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x09E)));

__asm("ADRESH equ 09Eh");


typedef union {
    struct {
        unsigned ADRES8 :1;
        unsigned ADRES9 :1;
        unsigned ADRES10 :1;
        unsigned ADRES11 :1;
        unsigned ADRES12 :1;
        unsigned ADRES13 :1;
        unsigned ADRES14 :1;
        unsigned ADRES15 :1;
    };
    struct {
        unsigned ADRES :8;
    };
    struct {
        unsigned RES8 :1;
        unsigned RES9 :1;
        unsigned RES10 :1;
        unsigned RES11 :1;
        unsigned RES12 :1;
        unsigned RES13 :1;
        unsigned RES14 :1;
        unsigned RES15 :1;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x09E)));
# 3381 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADPCH __attribute__((address(0x09F)));

__asm("ADPCH equ 09Fh");


typedef union {
    struct {
        unsigned ADPCH :6;
    };
    struct {
        unsigned ADPCH0 :1;
        unsigned ADPCH1 :1;
        unsigned ADPCH2 :1;
        unsigned ADPCH3 :1;
        unsigned ADPCH4 :1;
        unsigned ADPCH5 :1;
    };
    struct {
        unsigned PCH :6;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
        unsigned PCH2 :1;
        unsigned PCH3 :1;
        unsigned PCH4 :1;
        unsigned PCH5 :1;
    };
} ADPCHbits_t;
extern volatile ADPCHbits_t ADPCHbits __attribute__((address(0x09F)));
# 3485 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADACQ __attribute__((address(0x10C)));

__asm("ADACQ equ 010Ch");




extern volatile unsigned char ADACQL __attribute__((address(0x10C)));

__asm("ADACQL equ 010Ch");


typedef union {
    struct {
        unsigned ACQ :8;
    };
    struct {
        unsigned ADACQ0 :1;
        unsigned ADACQ1 :1;
        unsigned ADACQ2 :1;
        unsigned ADACQ3 :1;
        unsigned ADACQ4 :1;
        unsigned ADACQ5 :1;
        unsigned ADACQ6 :1;
        unsigned ADACQ7 :1;
    };
    struct {
        unsigned ADACQ :8;
    };
    struct {
        unsigned ACQ0 :1;
        unsigned ACQ1 :1;
        unsigned ACQ2 :1;
        unsigned ACQ3 :1;
        unsigned ACQ4 :1;
        unsigned ACQ5 :1;
        unsigned ACQ6 :1;
        unsigned ACQ7 :1;
    };
} ADACQLbits_t;
extern volatile ADACQLbits_t ADACQLbits __attribute__((address(0x10C)));
# 3620 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADACQH __attribute__((address(0x10D)));

__asm("ADACQH equ 010Dh");


typedef union {
    struct {
        unsigned ACQ :5;
    };
    struct {
        unsigned ADACQ8 :1;
        unsigned ADACQ9 :1;
        unsigned ADACQ10 :1;
        unsigned ADACQ11 :1;
        unsigned ADACQ12 :1;
    };
    struct {
        unsigned ADACQ :5;
    };
    struct {
        unsigned ACQ8 :1;
        unsigned ACQ9 :1;
        unsigned ACQ10 :1;
        unsigned ACQ11 :1;
        unsigned ACQ12 :1;
    };
} ADACQHbits_t;
extern volatile ADACQHbits_t ADACQHbits __attribute__((address(0x10D)));
# 3712 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCAP __attribute__((address(0x10E)));

__asm("ADCAP equ 010Eh");


typedef union {
    struct {
        unsigned ADCAP :5;
    };
    struct {
        unsigned ADCAP0 :1;
        unsigned ADCAP1 :1;
        unsigned ADCAP2 :1;
        unsigned ADCAP3 :1;
        unsigned ADCAP4 :1;
    };
    struct {
        unsigned CAP :5;
    };
    struct {
        unsigned CAP0 :1;
        unsigned CAP1 :1;
        unsigned CAP2 :1;
        unsigned CAP3 :1;
        unsigned CAP4 :1;
    };
} ADCAPbits_t;
extern volatile ADCAPbits_t ADCAPbits __attribute__((address(0x10E)));
# 3804 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short ADPRE __attribute__((address(0x10F)));

__asm("ADPRE equ 010Fh");




extern volatile unsigned char ADPREL __attribute__((address(0x10F)));

__asm("ADPREL equ 010Fh");


typedef union {
    struct {
        unsigned PRE :8;
    };
    struct {
        unsigned PRE0 :1;
        unsigned PRE1 :1;
        unsigned PRE2 :1;
        unsigned PRE3 :1;
        unsigned PRE4 :1;
        unsigned PRE5 :1;
        unsigned PRE6 :1;
        unsigned PRE7 :1;
    };
    struct {
        unsigned ADPRE :8;
    };
    struct {
        unsigned ADPRE0 :1;
        unsigned ADPRE1 :1;
        unsigned ADPRE2 :1;
        unsigned ADPRE3 :1;
        unsigned ADPRE4 :1;
        unsigned ADPRE5 :1;
        unsigned ADPRE6 :1;
        unsigned ADPRE7 :1;
    };
} ADPRELbits_t;
extern volatile ADPRELbits_t ADPRELbits __attribute__((address(0x10F)));
# 3939 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADPREH __attribute__((address(0x110)));

__asm("ADPREH equ 0110h");


typedef union {
    struct {
        unsigned PRE :5;
    };
    struct {
        unsigned PRE8 :1;
        unsigned PRE9 :1;
        unsigned PRE10 :1;
        unsigned PRE11 :1;
        unsigned PRE12 :1;
    };
    struct {
        unsigned ADPRE :5;
    };
    struct {
        unsigned ADPRE8 :1;
        unsigned ADPRE9 :1;
        unsigned ADPRE10 :1;
        unsigned ADPRE11 :1;
        unsigned ADPRE12 :1;
    };
} ADPREHbits_t;
extern volatile ADPREHbits_t ADPREHbits __attribute__((address(0x110)));
# 4031 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x111)));

__asm("ADCON0 equ 0111h");


typedef union {
    struct {
        unsigned GO :1;
        unsigned :1;
        unsigned FM :2;
        unsigned CS :1;
        unsigned :1;
        unsigned CONT :1;
        unsigned ON :1;
    };
    struct {
        unsigned ADGO :1;
        unsigned :1;
        unsigned ADFM :2;
        unsigned ADCS :1;
        unsigned :1;
        unsigned ADCONT :1;
        unsigned ADON :1;
    };
    struct {
        unsigned DONE :1;
        unsigned :1;
        unsigned FM0 :1;
        unsigned FM1 :1;
    };
    struct {
        unsigned GO_nDONE :1;
        unsigned :1;
        unsigned ADFM0 :1;
        unsigned ADFM1 :1;
    };
    struct {
        unsigned :7;
        unsigned ADCAL :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x111)));
# 4162 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x112)));

__asm("ADCON1 equ 0112h");


typedef union {
    struct {
        unsigned DSEN :1;
        unsigned :2;
        unsigned GBOE :1;
        unsigned GAOE :1;
        unsigned GPOL :1;
        unsigned IPEN :1;
        unsigned PPOL :1;
    };
    struct {
        unsigned ADDSEN :1;
        unsigned :2;
        unsigned ADGBOE :1;
        unsigned ADGAOE :1;
        unsigned ADGPOL :1;
        unsigned ADIPEN :1;
        unsigned ADPPOL :1;
    };
    struct {
        unsigned :3;
        unsigned CHSN3 :1;
        unsigned VCFG01 :1;
        unsigned VCFG11 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x112)));
# 4273 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0x113)));

__asm("ADCON2 equ 0113h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned ACLR :1;
        unsigned CRS :3;
        unsigned PSIS :1;
    };
    struct {
        unsigned ADMD0 :1;
        unsigned ADMD1 :1;
        unsigned ADMD2 :1;
        unsigned ADACLR :1;
        unsigned ADCRS0 :1;
        unsigned ADCRS1 :1;
        unsigned ADCRS2 :1;
        unsigned ADPSIS :1;
    };
    struct {
        unsigned ADMD :3;
        unsigned :1;
        unsigned ADCRS :3;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :1;
        unsigned CRS0 :1;
        unsigned CRS1 :1;
        unsigned CRS2 :1;
    };
    struct {
        unsigned MD :3;
    };
    struct {
        unsigned MD0 :1;
        unsigned MD1 :1;
        unsigned MD2 :1;
    };
    struct {
        unsigned ADMODE :3;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x113)));
# 4451 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCON3 __attribute__((address(0x114)));

__asm("ADCON3 equ 0114h");


typedef union {
    struct {
        unsigned TMD :3;
        unsigned SOI :1;
        unsigned CALC :3;
    };
    struct {
        unsigned ADTMD0 :1;
        unsigned ADTMD1 :1;
        unsigned ADTMD2 :1;
        unsigned ADSOI :1;
        unsigned ADCALC0 :1;
        unsigned ADCALC1 :1;
        unsigned ADCALC2 :1;
    };
    struct {
        unsigned ADTMD :3;
        unsigned :1;
        unsigned ADCALC :3;
    };
    struct {
        unsigned TMD0 :1;
        unsigned TMD1 :1;
        unsigned TMD2 :1;
        unsigned :1;
        unsigned CALC0 :1;
        unsigned CALC1 :1;
        unsigned CALC2 :1;
    };
} ADCON3bits_t;
extern volatile ADCON3bits_t ADCON3bits __attribute__((address(0x114)));
# 4581 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADSTAT __attribute__((address(0x115)));

__asm("ADSTAT equ 0115h");


typedef union {
    struct {
        unsigned STAT :3;
        unsigned :1;
        unsigned MATH :1;
        unsigned LTHR :1;
        unsigned UTHR :1;
        unsigned OV :1;
    };
    struct {
        unsigned ADSTAT0 :1;
        unsigned ADSTAT1 :1;
        unsigned ADSTAT2 :1;
        unsigned :1;
        unsigned ADMATH :1;
        unsigned ADLTHR :1;
        unsigned ADUTHR :1;
        unsigned ADAOV :1;
    };
    struct {
        unsigned ADSTAT :3;
        unsigned :4;
        unsigned ADOV :1;
    };
    struct {
        unsigned STAT0 :1;
        unsigned STAT1 :1;
        unsigned STAT2 :1;
    };
} ADSTATbits_t;
extern volatile ADSTATbits_t ADSTATbits __attribute__((address(0x115)));
# 4706 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADREF __attribute__((address(0x116)));

__asm("ADREF equ 0116h");


typedef union {
    struct {
        unsigned PREF :4;
        unsigned NREF :4;
    };
    struct {
        unsigned ADPREF :4;
        unsigned ADNREF :4;
    };
    struct {
        unsigned PREF0 :1;
        unsigned PREF1 :1;
        unsigned PREF2 :1;
        unsigned PREF3 :1;
        unsigned NREF0 :1;
        unsigned NREF1 :1;
        unsigned NREF2 :1;
        unsigned NREF3 :1;
    };
    struct {
        unsigned ADPREF0 :1;
        unsigned ADPREF1 :1;
        unsigned ADPREF2 :1;
        unsigned ADPREF3 :1;
        unsigned ADNREF0 :1;
        unsigned ADNREF1 :1;
        unsigned ADNREF2 :1;
        unsigned ADNREF3 :1;
    };
} ADREFbits_t;
extern volatile ADREFbits_t ADREFbits __attribute__((address(0x116)));
# 4846 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADACT __attribute__((address(0x117)));

__asm("ADACT equ 0117h");


typedef union {
    struct {
        unsigned ACT :5;
    };
    struct {
        unsigned ADACT0 :1;
        unsigned ADACT1 :1;
        unsigned ADACT2 :1;
        unsigned ADACT3 :1;
        unsigned ADACT4 :1;
    };
    struct {
        unsigned ADACT :5;
    };
    struct {
        unsigned ACT0 :1;
        unsigned ACT1 :1;
        unsigned ACT2 :1;
        unsigned ACT3 :1;
        unsigned ACT4 :1;
    };
} ADACTbits_t;
extern volatile ADACTbits_t ADACTbits __attribute__((address(0x117)));
# 4938 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCLK __attribute__((address(0x118)));

__asm("ADCLK equ 0118h");


typedef union {
    struct {
        unsigned CS :6;
    };
    struct {
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ADCS3 :1;
        unsigned ADCS4 :1;
        unsigned ADCS5 :1;
    };
    struct {
        unsigned ADCS :6;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
        unsigned CS5 :1;
    };
} ADCLKbits_t;
extern volatile ADCLKbits_t ADCLKbits __attribute__((address(0x118)));
# 5042 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC1REG __attribute__((address(0x119)));

__asm("RC1REG equ 0119h");


extern volatile unsigned char RCREG __attribute__((address(0x119)));

__asm("RCREG equ 0119h");

extern volatile unsigned char RCREG1 __attribute__((address(0x119)));

__asm("RCREG1 equ 0119h");


typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __attribute__((address(0x119)));







typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x119)));






typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0x119)));
# 5096 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TX1REG __attribute__((address(0x11A)));

__asm("TX1REG equ 011Ah");


extern volatile unsigned char TXREG1 __attribute__((address(0x11A)));

__asm("TXREG1 equ 011Ah");

extern volatile unsigned char TXREG __attribute__((address(0x11A)));

__asm("TXREG equ 011Ah");


typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __attribute__((address(0x11A)));







typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0x11A)));






typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x11A)));
# 5150 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short SP1BRG __attribute__((address(0x11B)));

__asm("SP1BRG equ 011Bh");




extern volatile unsigned char SP1BRGL __attribute__((address(0x11B)));

__asm("SP1BRGL equ 011Bh");


extern volatile unsigned char SPBRG __attribute__((address(0x11B)));

__asm("SPBRG equ 011Bh");

extern volatile unsigned char SPBRG1 __attribute__((address(0x11B)));

__asm("SPBRG1 equ 011Bh");

extern volatile unsigned char SPBRGL __attribute__((address(0x11B)));

__asm("SPBRGL equ 011Bh");


typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __attribute__((address(0x11B)));







typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __attribute__((address(0x11B)));






typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0x11B)));






typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __attribute__((address(0x11B)));
# 5227 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SP1BRGH __attribute__((address(0x11C)));

__asm("SP1BRGH equ 011Ch");


extern volatile unsigned char SPBRGH __attribute__((address(0x11C)));

__asm("SPBRGH equ 011Ch");

extern volatile unsigned char SPBRGH1 __attribute__((address(0x11C)));

__asm("SPBRGH1 equ 011Ch");


typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __attribute__((address(0x11C)));







typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0x11C)));






typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0x11C)));
# 5281 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC1STA __attribute__((address(0x11D)));

__asm("RC1STA equ 011Dh");


extern volatile unsigned char RCSTA1 __attribute__((address(0x11D)));

__asm("RCSTA1 equ 011Dh");

extern volatile unsigned char RCSTA __attribute__((address(0x11D)));

__asm("RCSTA equ 011Dh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __attribute__((address(0x11D)));
# 5350 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0x11D)));
# 5404 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x11D)));
# 5461 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TX1STA __attribute__((address(0x11E)));

__asm("TX1STA equ 011Eh");


extern volatile unsigned char TXSTA1 __attribute__((address(0x11E)));

__asm("TXSTA1 equ 011Eh");

extern volatile unsigned char TXSTA __attribute__((address(0x11E)));

__asm("TXSTA equ 011Eh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __attribute__((address(0x11E)));
# 5530 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0x11E)));
# 5584 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x11E)));
# 5641 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char BAUD1CON __attribute__((address(0x11F)));

__asm("BAUD1CON equ 011Fh");


extern volatile unsigned char BAUDCON1 __attribute__((address(0x11F)));

__asm("BAUDCON1 equ 011Fh");

extern volatile unsigned char BAUDCTL1 __attribute__((address(0x11F)));

__asm("BAUDCTL1 equ 011Fh");

extern volatile unsigned char BAUDCON __attribute__((address(0x11F)));

__asm("BAUDCON equ 011Fh");

extern volatile unsigned char BAUDCTL __attribute__((address(0x11F)));

__asm("BAUDCTL equ 011Fh");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __attribute__((address(0x11F)));
# 5708 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0x11F)));
# 5752 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __attribute__((address(0x11F)));
# 5796 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0x11F)));
# 5840 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0x11F)));
# 5887 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1BUF __attribute__((address(0x18C)));

__asm("SSP1BUF equ 018Ch");


typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0x18C)));
# 5907 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1ADD __attribute__((address(0x18D)));

__asm("SSP1ADD equ 018Dh");


typedef union {
    struct {
        unsigned SSPADD :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned MSK01 :1;
        unsigned MSK11 :1;
        unsigned MSK21 :1;
        unsigned MSK31 :1;
        unsigned MSK41 :1;
        unsigned MSK51 :1;
        unsigned MSK61 :1;
        unsigned MSK71 :1;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0x18D)));
# 6027 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1MSK __attribute__((address(0x18E)));

__asm("SSP1MSK equ 018Eh");


typedef union {
    struct {
        unsigned SSPMSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0x18E)));
# 6097 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1STAT __attribute__((address(0x18F)));

__asm("SSP1STAT equ 018Fh");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned BF1 :1;
        unsigned UA1 :1;
        unsigned R :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned D :1;
        unsigned CKE1 :1;
        unsigned SMP1 :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned START1 :1;
        unsigned STOP1 :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned RW1 :1;
        unsigned I2C_START1 :1;
        unsigned I2C_STOP2 :1;
        unsigned DA1 :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ1 :1;
        unsigned S2 :1;
        unsigned P2 :1;
        unsigned DATA_ADDRESS1 :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE1 :1;
        unsigned :2;
        unsigned D_A1 :1;
    };
    struct {
        unsigned :2;
        unsigned R_W1 :1;
        unsigned :2;
        unsigned D_nA1 :1;
    };
    struct {
        unsigned :2;
        unsigned R_nW1 :1;
        unsigned :2;
        unsigned I2C_DAT1 :1;
    };
    struct {
        unsigned :2;
        unsigned nW2 :1;
        unsigned :2;
        unsigned nA2 :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE1 :1;
        unsigned :2;
        unsigned nADDRESS1 :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0x18F)));
# 6461 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1CON1 __attribute__((address(0x190)));

__asm("SSP1CON1 equ 0190h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
    struct {
        unsigned SSPM01 :1;
        unsigned SSPM11 :1;
        unsigned SSPM21 :1;
        unsigned SSPM31 :1;
        unsigned CKP1 :1;
        unsigned SSPEN1 :1;
        unsigned SSPOV1 :1;
        unsigned WCOL1 :1;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0x190)));
# 6581 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1CON2 __attribute__((address(0x191)));

__asm("SSP1CON2 equ 0191h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
    struct {
        unsigned :1;
        unsigned ADMSK :5;
    };
    struct {
        unsigned :1;
        unsigned ADMSK1 :1;
        unsigned ADMSK2 :1;
        unsigned ADMSK3 :1;
        unsigned ADMSK4 :1;
        unsigned ADMSK5 :1;
    };
    struct {
        unsigned SEN1 :1;
        unsigned ADMSK11 :1;
        unsigned ADMSK21 :1;
        unsigned ADMSK31 :1;
        unsigned ACKEN1 :1;
        unsigned ACKDT1 :1;
        unsigned ACKSTAT1 :1;
        unsigned GCEN1 :1;
    };
    struct {
        unsigned :1;
        unsigned RSEN1 :1;
        unsigned PEN1 :1;
        unsigned RCEN1 :1;
        unsigned ADMSK41 :1;
        unsigned ADMSK51 :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0x191)));
# 6768 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1CON3 __attribute__((address(0x192)));

__asm("SSP1CON3 equ 0192h");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0x192)));
# 6830 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2BUF __attribute__((address(0x196)));

__asm("SSP2BUF equ 0196h");


typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSP2BUFbits_t;
extern volatile SSP2BUFbits_t SSP2BUFbits __attribute__((address(0x196)));
# 6850 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2ADD __attribute__((address(0x197)));

__asm("SSP2ADD equ 0197h");


typedef union {
    struct {
        unsigned SSPADD :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned MSK02 :1;
        unsigned MSK12 :1;
        unsigned MSK22 :1;
        unsigned MSK32 :1;
        unsigned MSK42 :1;
        unsigned MSK52 :1;
        unsigned MSK62 :1;
        unsigned MSK72 :1;
    };
} SSP2ADDbits_t;
extern volatile SSP2ADDbits_t SSP2ADDbits __attribute__((address(0x197)));
# 6970 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2MSK __attribute__((address(0x198)));

__asm("SSP2MSK equ 0198h");


typedef union {
    struct {
        unsigned SSPMSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
} SSP2MSKbits_t;
extern volatile SSP2MSKbits_t SSP2MSKbits __attribute__((address(0x198)));
# 7040 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2STAT __attribute__((address(0x199)));

__asm("SSP2STAT equ 0199h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned BF2 :1;
        unsigned UA2 :1;
        unsigned R :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned D :1;
        unsigned CKE2 :1;
        unsigned SMP2 :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned START2 :1;
        unsigned STOP2 :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned RW2 :1;
        unsigned I2C_START2 :1;
        unsigned I2C_STOP2 :1;
        unsigned DA2 :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ2 :1;
        unsigned S2 :1;
        unsigned P2 :1;
        unsigned DATA_ADDRESS2 :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE2 :1;
        unsigned :2;
        unsigned D_A2 :1;
    };
    struct {
        unsigned :2;
        unsigned R_W2 :1;
        unsigned :2;
        unsigned D_nA2 :1;
    };
    struct {
        unsigned :2;
        unsigned R_nW2 :1;
        unsigned :2;
        unsigned I2C_DAT2 :1;
    };
    struct {
        unsigned :2;
        unsigned nW2 :1;
        unsigned :2;
        unsigned nA2 :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE2 :1;
        unsigned :2;
        unsigned nADDRESS2 :1;
    };
} SSP2STATbits_t;
extern volatile SSP2STATbits_t SSP2STATbits __attribute__((address(0x199)));
# 7404 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2CON1 __attribute__((address(0x19A)));

__asm("SSP2CON1 equ 019Ah");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
    struct {
        unsigned SSPM02 :1;
        unsigned SSPM12 :1;
        unsigned SSPM22 :1;
        unsigned SSPM32 :1;
        unsigned CKP2 :1;
        unsigned SSPEN2 :1;
        unsigned SSPOV2 :1;
        unsigned WCOL2 :1;
    };
} SSP2CON1bits_t;
extern volatile SSP2CON1bits_t SSP2CON1bits __attribute__((address(0x19A)));
# 7524 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2CON2 __attribute__((address(0x19B)));

__asm("SSP2CON2 equ 019Bh");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
    struct {
        unsigned :1;
        unsigned ADMSK :5;
    };
    struct {
        unsigned :1;
        unsigned ADMSK1 :1;
        unsigned ADMSK2 :1;
        unsigned ADMSK3 :1;
        unsigned ADMSK4 :1;
        unsigned ADMSK5 :1;
    };
    struct {
        unsigned SEN2 :1;
        unsigned ADMSK12 :1;
        unsigned ADMSK22 :1;
        unsigned ADMSK32 :1;
        unsigned ACKEN2 :1;
        unsigned ACKDT2 :1;
        unsigned ACKSTAT2 :1;
        unsigned GCEN2 :1;
    };
    struct {
        unsigned :1;
        unsigned RSEN2 :1;
        unsigned PEN2 :1;
        unsigned RCEN2 :1;
        unsigned ADMSK42 :1;
        unsigned ADMSK52 :1;
    };
} SSP2CON2bits_t;
extern volatile SSP2CON2bits_t SSP2CON2bits __attribute__((address(0x19B)));
# 7711 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2CON3 __attribute__((address(0x19C)));

__asm("SSP2CON3 equ 019Ch");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSP2CON3bits_t;
extern volatile SSP2CON3bits_t SSP2CON3bits __attribute__((address(0x19C)));
# 7773 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR1L __attribute__((address(0x20C)));

__asm("TMR1L equ 020Ch");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
    struct {
        unsigned TMR1L0 :1;
        unsigned TMR1L1 :1;
        unsigned TMR1L2 :1;
        unsigned TMR1L3 :1;
        unsigned TMR1L4 :1;
        unsigned TMR1L5 :1;
        unsigned TMR1L6 :1;
        unsigned TMR1L7 :1;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x20C)));
# 7843 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x20D)));

__asm("TMR1H equ 020Dh");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
    struct {
        unsigned TMR1H0 :1;
        unsigned TMR1H1 :1;
        unsigned TMR1H2 :1;
        unsigned TMR1H3 :1;
        unsigned TMR1H4 :1;
        unsigned TMR1H5 :1;
        unsigned TMR1H6 :1;
        unsigned TMR1H7 :1;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x20D)));
# 7913 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x20E)));

__asm("T1CON equ 020Eh");


extern volatile unsigned char TMR1CON __attribute__((address(0x20E)));

__asm("TMR1CON equ 020Eh");


typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned T1RD16 :1;
        unsigned NOT_T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD161 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x20E)));
# 8012 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned T1RD16 :1;
        unsigned NOT_T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD161 :1;
    };
} TMR1CONbits_t;
extern volatile TMR1CONbits_t TMR1CONbits __attribute__((address(0x20E)));
# 8103 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x20F)));

__asm("T1GCON equ 020Fh");


extern volatile unsigned char TMR1GCON __attribute__((address(0x20F)));

__asm("TMR1GCON equ 020Fh");


typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T1GVAL :1;
        unsigned T1GGO :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned T1GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T1DONE :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x20F)));
# 8214 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T1GVAL :1;
        unsigned T1GGO :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned T1GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T1DONE :1;
    };
} TMR1GCONbits_t;
extern volatile TMR1GCONbits_t TMR1GCONbits __attribute__((address(0x20F)));
# 8317 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T1GATE __attribute__((address(0x210)));

__asm("T1GATE equ 0210h");


extern volatile unsigned char TMR1GATE __attribute__((address(0x210)));

__asm("TMR1GATE equ 0210h");


typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GSS2 :1;
        unsigned T1GSS3 :1;
        unsigned T1GSS4 :1;
    };
} T1GATEbits_t;
extern volatile T1GATEbits_t T1GATEbits __attribute__((address(0x210)));
# 8404 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GSS2 :1;
        unsigned T1GSS3 :1;
        unsigned T1GSS4 :1;
    };
} TMR1GATEbits_t;
extern volatile TMR1GATEbits_t TMR1GATEbits __attribute__((address(0x210)));
# 8483 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T1CLK __attribute__((address(0x211)));

__asm("T1CLK equ 0211h");


extern volatile unsigned char TMR1CLK __attribute__((address(0x211)));

__asm("TMR1CLK equ 0211h");


typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T1CS0 :1;
        unsigned T1CS1 :1;
        unsigned T1CS2 :1;
        unsigned T1CS3 :1;
        unsigned T1CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} T1CLKbits_t;
extern volatile T1CLKbits_t T1CLKbits __attribute__((address(0x211)));
# 8570 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T1CS0 :1;
        unsigned T1CS1 :1;
        unsigned T1CS2 :1;
        unsigned T1CS3 :1;
        unsigned T1CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} TMR1CLKbits_t;
extern volatile TMR1CLKbits_t TMR1CLKbits __attribute__((address(0x211)));
# 8649 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR3L __attribute__((address(0x212)));

__asm("TMR3L equ 0212h");


typedef union {
    struct {
        unsigned TMR3L :8;
    };
    struct {
        unsigned TMR3L0 :1;
        unsigned TMR3L1 :1;
        unsigned TMR3L2 :1;
        unsigned TMR3L3 :1;
        unsigned TMR3L4 :1;
        unsigned TMR3L5 :1;
        unsigned TMR3L6 :1;
        unsigned TMR3L7 :1;
    };
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __attribute__((address(0x212)));
# 8719 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR3H __attribute__((address(0x213)));

__asm("TMR3H equ 0213h");


typedef union {
    struct {
        unsigned TMR3H :8;
    };
    struct {
        unsigned TMR3H0 :1;
        unsigned TMR3H1 :1;
        unsigned TMR3H2 :1;
        unsigned TMR3H3 :1;
        unsigned TMR3H4 :1;
        unsigned TMR3H5 :1;
        unsigned TMR3H6 :1;
        unsigned TMR3H7 :1;
    };
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __attribute__((address(0x213)));
# 8789 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T3CON __attribute__((address(0x214)));

__asm("T3CON equ 0214h");


extern volatile unsigned char TMR3CON __attribute__((address(0x214)));

__asm("TMR3CON equ 0214h");


typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned T3RD16 :1;
        unsigned NOT_T3SYNC :1;
        unsigned :1;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD163 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0x214)));
# 8888 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned T3RD16 :1;
        unsigned NOT_T3SYNC :1;
        unsigned :1;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD163 :1;
    };
} TMR3CONbits_t;
extern volatile TMR3CONbits_t TMR3CONbits __attribute__((address(0x214)));
# 8979 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T3GCON __attribute__((address(0x215)));

__asm("T3GCON equ 0215h");


extern volatile unsigned char TMR3GCON __attribute__((address(0x215)));

__asm("TMR3GCON equ 0215h");


typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T3GVAL :1;
        unsigned T3GGO :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned T3GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T3DONE :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0x215)));
# 9090 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T3GVAL :1;
        unsigned T3GGO :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned T3GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T3DONE :1;
    };
} TMR3GCONbits_t;
extern volatile TMR3GCONbits_t TMR3GCONbits __attribute__((address(0x215)));
# 9193 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T3GATE __attribute__((address(0x216)));

__asm("T3GATE equ 0216h");


extern volatile unsigned char TMR3GATE __attribute__((address(0x216)));

__asm("TMR3GATE equ 0216h");


typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned T3GSS2 :1;
        unsigned T3GSS3 :1;
        unsigned T3GSS4 :1;
    };
} T3GATEbits_t;
extern volatile T3GATEbits_t T3GATEbits __attribute__((address(0x216)));
# 9280 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned T3GSS2 :1;
        unsigned T3GSS3 :1;
        unsigned T3GSS4 :1;
    };
} TMR3GATEbits_t;
extern volatile TMR3GATEbits_t TMR3GATEbits __attribute__((address(0x216)));
# 9359 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T3CLK __attribute__((address(0x217)));

__asm("T3CLK equ 0217h");


extern volatile unsigned char TMR3CLK __attribute__((address(0x217)));

__asm("TMR3CLK equ 0217h");


typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T3CS0 :1;
        unsigned T3CS1 :1;
        unsigned T3CS2 :1;
        unsigned T3CS3 :1;
        unsigned T3CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} T3CLKbits_t;
extern volatile T3CLKbits_t T3CLKbits __attribute__((address(0x217)));
# 9446 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T3CS0 :1;
        unsigned T3CS1 :1;
        unsigned T3CS2 :1;
        unsigned T3CS3 :1;
        unsigned T3CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} TMR3CLKbits_t;
extern volatile TMR3CLKbits_t TMR3CLKbits __attribute__((address(0x217)));
# 9525 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR5L __attribute__((address(0x218)));

__asm("TMR5L equ 0218h");


typedef union {
    struct {
        unsigned TMR5L :8;
    };
    struct {
        unsigned TMR5L0 :1;
        unsigned TMR5L1 :1;
        unsigned TMR5L2 :1;
        unsigned TMR5L3 :1;
        unsigned TMR5L4 :1;
        unsigned TMR5L5 :1;
        unsigned TMR5L6 :1;
        unsigned TMR5L7 :1;
    };
} TMR5Lbits_t;
extern volatile TMR5Lbits_t TMR5Lbits __attribute__((address(0x218)));
# 9595 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR5H __attribute__((address(0x219)));

__asm("TMR5H equ 0219h");


typedef union {
    struct {
        unsigned TMR5H :8;
    };
    struct {
        unsigned TMR5H0 :1;
        unsigned TMR5H1 :1;
        unsigned TMR5H2 :1;
        unsigned TMR5H3 :1;
        unsigned TMR5H4 :1;
        unsigned TMR5H5 :1;
        unsigned TMR5H6 :1;
        unsigned TMR5H7 :1;
    };
} TMR5Hbits_t;
extern volatile TMR5Hbits_t TMR5Hbits __attribute__((address(0x219)));
# 9665 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T5CON __attribute__((address(0x21A)));

__asm("T5CON equ 021Ah");


extern volatile unsigned char TMR5CON __attribute__((address(0x21A)));

__asm("TMR5CON equ 021Ah");


typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR5ON :1;
        unsigned T5RD16 :1;
        unsigned NOT_T5SYNC :1;
        unsigned :1;
        unsigned T5CKPS0 :1;
        unsigned T5CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD165 :1;
    };
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __attribute__((address(0x21A)));
# 9764 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR5ON :1;
        unsigned T5RD16 :1;
        unsigned NOT_T5SYNC :1;
        unsigned :1;
        unsigned T5CKPS0 :1;
        unsigned T5CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD165 :1;
    };
} TMR5CONbits_t;
extern volatile TMR5CONbits_t TMR5CONbits __attribute__((address(0x21A)));
# 9855 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T5GCON __attribute__((address(0x21B)));

__asm("T5GCON equ 021Bh");


extern volatile unsigned char TMR5GCON __attribute__((address(0x21B)));

__asm("TMR5GCON equ 021Bh");


typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T5GVAL :1;
        unsigned T5GGO :1;
        unsigned T5GSPM :1;
        unsigned T5GTM :1;
        unsigned T5GPOL :1;
        unsigned T5GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T5DONE :1;
    };
} T5GCONbits_t;
extern volatile T5GCONbits_t T5GCONbits __attribute__((address(0x21B)));
# 9966 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T5GVAL :1;
        unsigned T5GGO :1;
        unsigned T5GSPM :1;
        unsigned T5GTM :1;
        unsigned T5GPOL :1;
        unsigned T5GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T5DONE :1;
    };
} TMR5GCONbits_t;
extern volatile TMR5GCONbits_t TMR5GCONbits __attribute__((address(0x21B)));
# 10069 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T5GATE __attribute__((address(0x21C)));

__asm("T5GATE equ 021Ch");


extern volatile unsigned char TMR5GATE __attribute__((address(0x21C)));

__asm("TMR5GATE equ 021Ch");


typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T5GSS0 :1;
        unsigned T5GSS1 :1;
        unsigned T5GSS2 :1;
        unsigned T5GSS3 :1;
        unsigned T5GSS4 :1;
    };
} T5GATEbits_t;
extern volatile T5GATEbits_t T5GATEbits __attribute__((address(0x21C)));
# 10156 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T5GSS0 :1;
        unsigned T5GSS1 :1;
        unsigned T5GSS2 :1;
        unsigned T5GSS3 :1;
        unsigned T5GSS4 :1;
    };
} TMR5GATEbits_t;
extern volatile TMR5GATEbits_t TMR5GATEbits __attribute__((address(0x21C)));
# 10235 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T5CLK __attribute__((address(0x21D)));

__asm("T5CLK equ 021Dh");


extern volatile unsigned char TMR5CLK __attribute__((address(0x21D)));

__asm("TMR5CLK equ 021Dh");


typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T5CS0 :1;
        unsigned T5CS1 :1;
        unsigned T5CS2 :1;
        unsigned T5CS3 :1;
        unsigned T5CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} T5CLKbits_t;
extern volatile T5CLKbits_t T5CLKbits __attribute__((address(0x21D)));
# 10322 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T5CS0 :1;
        unsigned T5CS1 :1;
        unsigned T5CS2 :1;
        unsigned T5CS3 :1;
        unsigned T5CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} TMR5CLKbits_t;
extern volatile TMR5CLKbits_t TMR5CLKbits __attribute__((address(0x21D)));
# 10401 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCPTMRS0 __attribute__((address(0x21E)));

__asm("CCPTMRS0 equ 021Eh");


typedef union {
    struct {
        unsigned C1TSEL :2;
        unsigned C2TSEL :2;
        unsigned C3TSEL :2;
        unsigned C4TSEL :2;
    };
} CCPTMRS0bits_t;
extern volatile CCPTMRS0bits_t CCPTMRS0bits __attribute__((address(0x21E)));
# 10439 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCPTMRS1 __attribute__((address(0x21F)));

__asm("CCPTMRS1 equ 021Fh");


typedef union {
    struct {
        unsigned C5TSEL :2;
        unsigned P6TSEL :2;
        unsigned P7TSEL :2;
    };
} CCPTMRS1bits_t;
extern volatile CCPTMRS1bits_t CCPTMRS1bits __attribute__((address(0x21F)));
# 10471 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T2TMR __attribute__((address(0x28C)));

__asm("T2TMR equ 028Ch");


extern volatile unsigned char TMR2 __attribute__((address(0x28C)));

__asm("TMR2 equ 028Ch");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR2 :8;
    };
} T2TMRbits_t;
extern volatile T2TMRbits_t T2TMRbits __attribute__((address(0x28C)));
# 10502 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x28C)));
# 10525 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T2PR __attribute__((address(0x28D)));

__asm("T2PR equ 028Dh");


extern volatile unsigned char PR2 __attribute__((address(0x28D)));

__asm("PR2 equ 028Dh");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T2PR :8;
    };
} T2PRbits_t;
extern volatile T2PRbits_t T2PRbits __attribute__((address(0x28D)));
# 10556 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T2PR :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x28D)));
# 10579 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x28E)));

__asm("T2CON equ 028Eh");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
    };
    struct {
        unsigned T2OUTPS :4;
        unsigned T2CKPS :3;
        unsigned T2ON :1;
    };
    struct {
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned T2CKPS2 :1;
        unsigned TMR2ON :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x28E)));
# 10725 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T2HLT __attribute__((address(0x28F)));

__asm("T2HLT equ 028Fh");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T2MODE :5;
        unsigned T2CKSYNC :1;
        unsigned T2CKPOL :1;
        unsigned T2PSYNC :1;
    };
    struct {
        unsigned T2MODE0 :1;
        unsigned T2MODE1 :1;
        unsigned T2MODE2 :1;
        unsigned T2MODE3 :1;
        unsigned T2MODE4 :1;
    };
} T2HLTbits_t;
extern volatile T2HLTbits_t T2HLTbits __attribute__((address(0x28F)));
# 10853 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T2CLKCON __attribute__((address(0x290)));

__asm("T2CLKCON equ 0290h");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T2CS :4;
    };
    struct {
        unsigned T2CS0 :1;
        unsigned T2CS1 :1;
        unsigned T2CS2 :1;
        unsigned T2CS3 :1;
    };
} T2CLKCONbits_t;
extern volatile T2CLKCONbits_t T2CLKCONbits __attribute__((address(0x290)));
# 10933 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T2RST __attribute__((address(0x291)));

__asm("T2RST equ 0291h");


typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T2RSEL :5;
    };
    struct {
        unsigned T2RSEL0 :1;
        unsigned T2RSEL1 :1;
        unsigned T2RSEL2 :1;
        unsigned T2RSEL3 :1;
        unsigned T2RSEL4 :1;
    };
} T2RSTbits_t;
extern volatile T2RSTbits_t T2RSTbits __attribute__((address(0x291)));
# 11025 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T4TMR __attribute__((address(0x292)));

__asm("T4TMR equ 0292h");


extern volatile unsigned char TMR4 __attribute__((address(0x292)));

__asm("TMR4 equ 0292h");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR4 :8;
    };
} T4TMRbits_t;
extern volatile T4TMRbits_t T4TMRbits __attribute__((address(0x292)));
# 11056 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR4 :8;
    };
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __attribute__((address(0x292)));
# 11079 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T4PR __attribute__((address(0x293)));

__asm("T4PR equ 0293h");


extern volatile unsigned char PR4 __attribute__((address(0x293)));

__asm("PR4 equ 0293h");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T4PR :8;
    };
} T4PRbits_t;
extern volatile T4PRbits_t T4PRbits __attribute__((address(0x293)));
# 11110 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T4PR :8;
    };
} PR4bits_t;
extern volatile PR4bits_t PR4bits __attribute__((address(0x293)));
# 11133 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T4CON __attribute__((address(0x294)));

__asm("T4CON equ 0294h");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
    };
    struct {
        unsigned T4OUTPS :4;
        unsigned T4CKPS :3;
        unsigned T4ON :1;
    };
    struct {
        unsigned T4OUTPS0 :1;
        unsigned T4OUTPS1 :1;
        unsigned T4OUTPS2 :1;
        unsigned T4OUTPS3 :1;
        unsigned T4CKPS0 :1;
        unsigned T4CKPS1 :1;
        unsigned T4CKPS2 :1;
        unsigned TMR4ON :1;
    };
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __attribute__((address(0x294)));
# 11279 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T4HLT __attribute__((address(0x295)));

__asm("T4HLT equ 0295h");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T4MODE :5;
        unsigned T4CKSYNC :1;
        unsigned T4CKPOL :1;
        unsigned T4PSYNC :1;
    };
    struct {
        unsigned T4MODE0 :1;
        unsigned T4MODE1 :1;
        unsigned T4MODE2 :1;
        unsigned T4MODE3 :1;
        unsigned T4MODE4 :1;
    };
} T4HLTbits_t;
extern volatile T4HLTbits_t T4HLTbits __attribute__((address(0x295)));
# 11407 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T4CLKCON __attribute__((address(0x296)));

__asm("T4CLKCON equ 0296h");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T4CS :4;
    };
    struct {
        unsigned T4CS0 :1;
        unsigned T4CS1 :1;
        unsigned T4CS2 :1;
        unsigned T4CS3 :1;
    };
} T4CLKCONbits_t;
extern volatile T4CLKCONbits_t T4CLKCONbits __attribute__((address(0x296)));
# 11487 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T4RST __attribute__((address(0x297)));

__asm("T4RST equ 0297h");


typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T4RSEL :5;
    };
    struct {
        unsigned T4RSEL0 :1;
        unsigned T4RSEL1 :1;
        unsigned T4RSEL2 :1;
        unsigned T4RSEL3 :1;
        unsigned T4RSEL4 :1;
    };
} T4RSTbits_t;
extern volatile T4RSTbits_t T4RSTbits __attribute__((address(0x297)));
# 11579 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T6TMR __attribute__((address(0x298)));

__asm("T6TMR equ 0298h");


extern volatile unsigned char TMR6 __attribute__((address(0x298)));

__asm("TMR6 equ 0298h");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR6 :8;
    };
} T6TMRbits_t;
extern volatile T6TMRbits_t T6TMRbits __attribute__((address(0x298)));
# 11610 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR6 :8;
    };
} TMR6bits_t;
extern volatile TMR6bits_t TMR6bits __attribute__((address(0x298)));
# 11633 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T6PR __attribute__((address(0x299)));

__asm("T6PR equ 0299h");


extern volatile unsigned char PR6 __attribute__((address(0x299)));

__asm("PR6 equ 0299h");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T6PR :8;
    };
} T6PRbits_t;
extern volatile T6PRbits_t T6PRbits __attribute__((address(0x299)));
# 11664 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T6PR :8;
    };
} PR6bits_t;
extern volatile PR6bits_t PR6bits __attribute__((address(0x299)));
# 11687 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T6CON __attribute__((address(0x29A)));

__asm("T6CON equ 029Ah");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
    };
    struct {
        unsigned T6OUTPS :4;
        unsigned T6CKPS :3;
        unsigned T6ON :1;
    };
    struct {
        unsigned T6OUTPS0 :1;
        unsigned T6OUTPS1 :1;
        unsigned T6OUTPS2 :1;
        unsigned T6OUTPS3 :1;
        unsigned T6CKPS0 :1;
        unsigned T6CKPS1 :1;
        unsigned T6CKPS2 :1;
        unsigned TMR6ON :1;
    };
} T6CONbits_t;
extern volatile T6CONbits_t T6CONbits __attribute__((address(0x29A)));
# 11833 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T6HLT __attribute__((address(0x29B)));

__asm("T6HLT equ 029Bh");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T6MODE :5;
        unsigned T6CKSYNC :1;
        unsigned T6CKPOL :1;
        unsigned T6PSYNC :1;
    };
    struct {
        unsigned T6MODE0 :1;
        unsigned T6MODE1 :1;
        unsigned T6MODE2 :1;
        unsigned T6MODE3 :1;
        unsigned T6MODE4 :1;
    };
} T6HLTbits_t;
extern volatile T6HLTbits_t T6HLTbits __attribute__((address(0x29B)));
# 11961 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T6CLKCON __attribute__((address(0x29C)));

__asm("T6CLKCON equ 029Ch");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T6CS :4;
    };
    struct {
        unsigned T6CS0 :1;
        unsigned T6CS1 :1;
        unsigned T6CS2 :1;
        unsigned T6CS3 :1;
    };
} T6CLKCONbits_t;
extern volatile T6CLKCONbits_t T6CLKCONbits __attribute__((address(0x29C)));
# 12041 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T6RST __attribute__((address(0x29D)));

__asm("T6RST equ 029Dh");


typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T6RSEL :5;
    };
    struct {
        unsigned T6RSEL0 :1;
        unsigned T6RSEL1 :1;
        unsigned T6RSEL2 :1;
        unsigned T6RSEL3 :1;
        unsigned T6RSEL4 :1;
    };
} T6RSTbits_t;
extern volatile T6RSTbits_t T6RSTbits __attribute__((address(0x29D)));
# 12133 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADCPCON0 __attribute__((address(0x29F)));

__asm("ADCPCON0 equ 029Fh");


typedef union {
    struct {
        unsigned CPRDY :1;
        unsigned :6;
        unsigned CPON :1;
    };
} ADCPCON0bits_t;
extern volatile ADCPCON0bits_t ADCPCON0bits __attribute__((address(0x29F)));
# 12160 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x30C)));

__asm("CCPR1 equ 030Ch");




extern volatile unsigned char CCPR1L __attribute__((address(0x30C)));

__asm("CCPR1L equ 030Ch");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0x30C)));
# 12187 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0x30D)));

__asm("CCPR1H equ 030Dh");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0x30D)));
# 12207 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0x30E)));

__asm("CCP1CON equ 030Eh");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP1MODE :4;
        unsigned CCP1FMT :1;
        unsigned CCP1OUT :1;
        unsigned :1;
        unsigned CCP1EN :1;
    };
    struct {
        unsigned CCP1MODE0 :1;
        unsigned CCP1MODE1 :1;
        unsigned CCP1MODE2 :1;
        unsigned CCP1MODE3 :1;
    };
    struct {
        unsigned :7;
        unsigned P1M1 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x30E)));
# 12334 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP1CAP __attribute__((address(0x30F)));

__asm("CCP1CAP equ 030Fh");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP1CTS :8;
    };
    struct {
        unsigned CCP1CTS0 :1;
        unsigned CCP1CTS1 :1;
        unsigned CCP1CTS2 :1;
    };
} CCP1CAPbits_t;
extern volatile CCP1CAPbits_t CCP1CAPbits __attribute__((address(0x30F)));
# 12402 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0x310)));

__asm("CCPR2 equ 0310h");




extern volatile unsigned char CCPR2L __attribute__((address(0x310)));

__asm("CCPR2L equ 0310h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0x310)));
# 12429 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0x311)));

__asm("CCPR2H equ 0311h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0x311)));
# 12449 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0x312)));

__asm("CCP2CON equ 0312h");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP2MODE :4;
        unsigned CCP2FMT :1;
        unsigned CCP2OUT :1;
        unsigned :1;
        unsigned CCP2EN :1;
    };
    struct {
        unsigned CCP2MODE0 :1;
        unsigned CCP2MODE1 :1;
        unsigned CCP2MODE2 :1;
        unsigned CCP2MODE3 :1;
    };
    struct {
        unsigned :7;
        unsigned P2M1 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x312)));
# 12576 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP2CAP __attribute__((address(0x313)));

__asm("CCP2CAP equ 0313h");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP2CTS :8;
    };
    struct {
        unsigned CCP2CTS0 :1;
        unsigned CCP2CTS1 :1;
        unsigned CCP2CTS2 :1;
    };
} CCP2CAPbits_t;
extern volatile CCP2CAPbits_t CCP2CAPbits __attribute__((address(0x313)));
# 12644 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short CCPR3 __attribute__((address(0x314)));

__asm("CCPR3 equ 0314h");




extern volatile unsigned char CCPR3L __attribute__((address(0x314)));

__asm("CCPR3L equ 0314h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR3Lbits_t;
extern volatile CCPR3Lbits_t CCPR3Lbits __attribute__((address(0x314)));
# 12671 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCPR3H __attribute__((address(0x315)));

__asm("CCPR3H equ 0315h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR3Hbits_t;
extern volatile CCPR3Hbits_t CCPR3Hbits __attribute__((address(0x315)));
# 12691 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP3CON __attribute__((address(0x316)));

__asm("CCP3CON equ 0316h");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP3MODE :4;
        unsigned CCP3FMT :1;
        unsigned CCP3OUT :1;
        unsigned :1;
        unsigned CCP3EN :1;
    };
    struct {
        unsigned CCP3MODE0 :1;
        unsigned CCP3MODE1 :1;
        unsigned CCP3MODE2 :1;
        unsigned CCP3MODE3 :1;
    };
    struct {
        unsigned :7;
        unsigned P3M1 :1;
    };
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __attribute__((address(0x316)));
# 12818 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP3CAP __attribute__((address(0x317)));

__asm("CCP3CAP equ 0317h");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP3CTS :8;
    };
    struct {
        unsigned CCP3CTS0 :1;
        unsigned CCP3CTS1 :1;
        unsigned CCP3CTS2 :1;
    };
} CCP3CAPbits_t;
extern volatile CCP3CAPbits_t CCP3CAPbits __attribute__((address(0x317)));
# 12886 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short CCPR4 __attribute__((address(0x318)));

__asm("CCPR4 equ 0318h");




extern volatile unsigned char CCPR4L __attribute__((address(0x318)));

__asm("CCPR4L equ 0318h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR4Lbits_t;
extern volatile CCPR4Lbits_t CCPR4Lbits __attribute__((address(0x318)));
# 12913 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCPR4H __attribute__((address(0x319)));

__asm("CCPR4H equ 0319h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR4Hbits_t;
extern volatile CCPR4Hbits_t CCPR4Hbits __attribute__((address(0x319)));
# 12933 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP4CON __attribute__((address(0x31A)));

__asm("CCP4CON equ 031Ah");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP4MODE :4;
        unsigned CCP4FMT :1;
        unsigned CCP4OUT :1;
        unsigned :1;
        unsigned CCP4EN :1;
    };
    struct {
        unsigned CCP4MODE0 :1;
        unsigned CCP4MODE1 :1;
        unsigned CCP4MODE2 :1;
        unsigned CCP4MODE3 :1;
    };
    struct {
        unsigned :7;
        unsigned P4M1 :1;
    };
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __attribute__((address(0x31A)));
# 13060 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP4CAP __attribute__((address(0x31B)));

__asm("CCP4CAP equ 031Bh");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP4CTS :8;
    };
    struct {
        unsigned CCP4CTS0 :1;
        unsigned CCP4CTS1 :1;
        unsigned CCP4CTS2 :1;
    };
} CCP4CAPbits_t;
extern volatile CCP4CAPbits_t CCP4CAPbits __attribute__((address(0x31B)));
# 13128 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short PWM6DC __attribute__((address(0x38C)));

__asm("PWM6DC equ 038Ch");




extern volatile unsigned char PWM6DCL __attribute__((address(0x38C)));

__asm("PWM6DCL equ 038Ch");


typedef union {
    struct {
        unsigned :6;
        unsigned DC :2;
    };
    struct {
        unsigned :6;
        unsigned DC0 :1;
        unsigned DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWM6DC0 :1;
        unsigned PWM6DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWMPW0 :1;
        unsigned PWMPW1 :1;
    };
} PWM6DCLbits_t;
extern volatile PWM6DCLbits_t PWM6DCLbits __attribute__((address(0x38C)));
# 13201 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PWM6DCH __attribute__((address(0x38D)));

__asm("PWM6DCH equ 038Dh");


typedef union {
    struct {
        unsigned DC :8;
    };
    struct {
        unsigned DC2 :1;
        unsigned DC3 :1;
        unsigned DC4 :1;
        unsigned DC5 :1;
        unsigned DC6 :1;
        unsigned DC7 :1;
        unsigned DC8 :1;
        unsigned DC9 :1;
    };
    struct {
        unsigned PWM6DC2 :1;
        unsigned PWM6DC3 :1;
        unsigned PWM6DC4 :1;
        unsigned PWM6DC5 :1;
        unsigned PWM6DC6 :1;
        unsigned PWM6DC7 :1;
        unsigned PWM6DC8 :1;
        unsigned PWM6DC9 :1;
    };
    struct {
        unsigned PWMPW2 :1;
        unsigned PWMPW3 :1;
        unsigned PWMPW4 :1;
        unsigned PWMPW5 :1;
        unsigned PWMPW6 :1;
        unsigned PWMPW7 :1;
        unsigned PWMPW8 :1;
        unsigned PWMPW9 :1;
    };
} PWM6DCHbits_t;
extern volatile PWM6DCHbits_t PWM6DCHbits __attribute__((address(0x38D)));
# 13371 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PWM6CON __attribute__((address(0x38E)));

__asm("PWM6CON equ 038Eh");


typedef union {
    struct {
        unsigned :4;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned :4;
        unsigned PWM6POL :1;
        unsigned PWM6OUT :1;
        unsigned :1;
        unsigned PWM6EN :1;
    };
} PWM6CONbits_t;
extern volatile PWM6CONbits_t PWM6CONbits __attribute__((address(0x38E)));
# 13427 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short PWM7DC __attribute__((address(0x390)));

__asm("PWM7DC equ 0390h");




extern volatile unsigned char PWM7DCL __attribute__((address(0x390)));

__asm("PWM7DCL equ 0390h");


typedef union {
    struct {
        unsigned :6;
        unsigned DC :2;
    };
    struct {
        unsigned :6;
        unsigned DC0 :1;
        unsigned DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWM7DC0 :1;
        unsigned PWM7DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWMPW0 :1;
        unsigned PWMPW1 :1;
    };
} PWM7DCLbits_t;
extern volatile PWM7DCLbits_t PWM7DCLbits __attribute__((address(0x390)));
# 13500 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PWM7DCH __attribute__((address(0x391)));

__asm("PWM7DCH equ 0391h");


typedef union {
    struct {
        unsigned DC :8;
    };
    struct {
        unsigned DC2 :1;
        unsigned DC3 :1;
        unsigned DC4 :1;
        unsigned DC5 :1;
        unsigned DC6 :1;
        unsigned DC7 :1;
        unsigned DC8 :1;
        unsigned DC9 :1;
    };
    struct {
        unsigned PWM7DC2 :1;
        unsigned PWM7DC3 :1;
        unsigned PWM7DC4 :1;
        unsigned PWM7DC5 :1;
        unsigned PWM7DC6 :1;
        unsigned PWM7DC7 :1;
        unsigned PWM7DC8 :1;
        unsigned PWM7DC9 :1;
    };
    struct {
        unsigned PWMPW2 :1;
        unsigned PWMPW3 :1;
        unsigned PWMPW4 :1;
        unsigned PWMPW5 :1;
        unsigned PWMPW6 :1;
        unsigned PWMPW7 :1;
        unsigned PWMPW8 :1;
        unsigned PWMPW9 :1;
    };
} PWM7DCHbits_t;
extern volatile PWM7DCHbits_t PWM7DCHbits __attribute__((address(0x391)));
# 13670 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PWM7CON __attribute__((address(0x392)));

__asm("PWM7CON equ 0392h");


typedef union {
    struct {
        unsigned :4;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned :4;
        unsigned PWM7POL :1;
        unsigned PWM7OUT :1;
        unsigned :1;
        unsigned PWM7EN :1;
    };
} PWM7CONbits_t;
extern volatile PWM7CONbits_t PWM7CONbits __attribute__((address(0x392)));
# 13727 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __uint24 SMT1TMR __attribute__((address(0x48C)));


__asm("SMT1TMR equ 048Ch");




extern volatile unsigned char SMT1TMRL __attribute__((address(0x48C)));

__asm("SMT1TMRL equ 048Ch");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR0 :1;
        unsigned TMR1 :1;
        unsigned TMR2 :1;
        unsigned TMR3 :1;
        unsigned TMR4 :1;
        unsigned TMR5 :1;
        unsigned TMR6 :1;
        unsigned TMR7 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR0 :1;
        unsigned SMT1TMR1 :1;
        unsigned SMT1TMR2 :1;
        unsigned SMT1TMR3 :1;
        unsigned SMT1TMR4 :1;
        unsigned SMT1TMR5 :1;
        unsigned SMT1TMR6 :1;
        unsigned SMT1TMR7 :1;
    };
} SMT1TMRLbits_t;
extern volatile SMT1TMRLbits_t SMT1TMRLbits __attribute__((address(0x48C)));
# 13863 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1TMRH __attribute__((address(0x48D)));

__asm("SMT1TMRH equ 048Dh");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR8 :1;
        unsigned TMR9 :1;
        unsigned TMR10 :1;
        unsigned TMR11 :1;
        unsigned TMR12 :1;
        unsigned TMR13 :1;
        unsigned TMR14 :1;
        unsigned TMR15 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR8 :1;
        unsigned SMT1TMR9 :1;
        unsigned SMT1TMR10 :1;
        unsigned SMT1TMR11 :1;
        unsigned SMT1TMR12 :1;
        unsigned SMT1TMR13 :1;
        unsigned SMT1TMR14 :1;
        unsigned SMT1TMR15 :1;
    };
} SMT1TMRHbits_t;
extern volatile SMT1TMRHbits_t SMT1TMRHbits __attribute__((address(0x48D)));
# 13991 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1TMRU __attribute__((address(0x48E)));

__asm("SMT1TMRU equ 048Eh");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR16 :1;
        unsigned TMR17 :1;
        unsigned TMR18 :1;
        unsigned TMR19 :1;
        unsigned TMR20 :1;
        unsigned TMR21 :1;
        unsigned TMR22 :1;
        unsigned TMR23 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR16 :1;
        unsigned SMT1TMR17 :1;
        unsigned SMT1TMR18 :1;
        unsigned SMT1TMR19 :1;
        unsigned SMT1TMR20 :1;
        unsigned SMT1TMR21 :1;
        unsigned SMT1TMR22 :1;
        unsigned SMT1TMR23 :1;
    };
} SMT1TMRUbits_t;
extern volatile SMT1TMRUbits_t SMT1TMRUbits __attribute__((address(0x48E)));
# 14120 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __uint24 SMT1CPR __attribute__((address(0x48F)));


__asm("SMT1CPR equ 048Fh");




extern volatile unsigned char SMT1CPRL __attribute__((address(0x48F)));

__asm("SMT1CPRL equ 048Fh");


typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR0 :1;
        unsigned CPR1 :1;
        unsigned CPR2 :1;
        unsigned CPR3 :1;
        unsigned CPR4 :1;
        unsigned CPR5 :1;
        unsigned CPR6 :1;
        unsigned CPR7 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
    struct {
        unsigned SMT1CPR0 :1;
        unsigned SMT1CPR1 :1;
        unsigned SMT1CPR2 :1;
        unsigned SMT1CPR3 :1;
        unsigned SMT1CPR4 :1;
        unsigned SMT1CPR5 :1;
        unsigned SMT1CPR6 :1;
        unsigned SMT1CPR7 :1;
    };
} SMT1CPRLbits_t;
extern volatile SMT1CPRLbits_t SMT1CPRLbits __attribute__((address(0x48F)));
# 14256 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1CPRH __attribute__((address(0x490)));

__asm("SMT1CPRH equ 0490h");


typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR8 :1;
        unsigned CPR9 :1;
        unsigned CPR10 :1;
        unsigned CPR11 :1;
        unsigned CPR12 :1;
        unsigned CPR13 :1;
        unsigned CPR14 :1;
        unsigned CPR15 :1;
    };
    struct {
        unsigned SMT1CPR8 :1;
        unsigned SMT1CPR9 :1;
        unsigned SMT1CPR10 :1;
        unsigned SMT1CPR11 :1;
        unsigned SMT1CPR12 :1;
        unsigned SMT1CPR13 :1;
        unsigned SMT1CPR14 :1;
        unsigned SMT1CPR15 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
} SMT1CPRHbits_t;
extern volatile SMT1CPRHbits_t SMT1CPRHbits __attribute__((address(0x490)));
# 14384 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1CPRU __attribute__((address(0x491)));

__asm("SMT1CPRU equ 0491h");


typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR16 :1;
        unsigned CPR17 :1;
        unsigned CPR18 :1;
        unsigned CPR19 :1;
        unsigned CPR20 :1;
        unsigned CPR21 :1;
        unsigned CPR22 :1;
        unsigned CPR23 :1;
    };
    struct {
        unsigned SMT1CPR16 :1;
        unsigned SMT1CPR17 :1;
        unsigned SMT1CPR18 :1;
        unsigned SMT1CPR19 :1;
        unsigned SMT1CPR20 :1;
        unsigned SMT1CPR21 :1;
        unsigned SMT1CPR22 :1;
        unsigned SMT1CPR23 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
} SMT1CPRUbits_t;
extern volatile SMT1CPRUbits_t SMT1CPRUbits __attribute__((address(0x491)));
# 14513 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __uint24 SMT1CPW __attribute__((address(0x492)));


__asm("SMT1CPW equ 0492h");




extern volatile unsigned char SMT1CPWL __attribute__((address(0x492)));

__asm("SMT1CPWL equ 0492h");


typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW0 :1;
        unsigned CPW1 :1;
        unsigned CPW2 :1;
        unsigned CPW3 :1;
        unsigned CPW4 :1;
        unsigned CPW5 :1;
        unsigned CPW6 :1;
        unsigned CPW7 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW0 :1;
        unsigned SMT1CPW1 :1;
        unsigned SMT1CPW2 :1;
        unsigned SMT1CPW3 :1;
        unsigned SMT1CPW4 :1;
        unsigned SMT1CPW5 :1;
        unsigned SMT1CPW6 :1;
        unsigned SMT1CPW7 :1;
    };
} SMT1CPWLbits_t;
extern volatile SMT1CPWLbits_t SMT1CPWLbits __attribute__((address(0x492)));
# 14649 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1CPWH __attribute__((address(0x493)));

__asm("SMT1CPWH equ 0493h");


typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW8 :1;
        unsigned CPW9 :1;
        unsigned CPW10 :1;
        unsigned CPW11 :1;
        unsigned CPW12 :1;
        unsigned CPW13 :1;
        unsigned CPW14 :1;
        unsigned CPW15 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW8 :1;
        unsigned SMT1CPW9 :1;
        unsigned SMT1CPW10 :1;
        unsigned SMT1CPW11 :1;
        unsigned SMT1CPW12 :1;
        unsigned SMT1CPW13 :1;
        unsigned SMT1CPW14 :1;
        unsigned SMT1CPW15 :1;
    };
} SMT1CPWHbits_t;
extern volatile SMT1CPWHbits_t SMT1CPWHbits __attribute__((address(0x493)));
# 14777 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1CPWU __attribute__((address(0x494)));

__asm("SMT1CPWU equ 0494h");


typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW16 :1;
        unsigned CPW17 :1;
        unsigned CPW18 :1;
        unsigned CPW19 :1;
        unsigned CPW20 :1;
        unsigned CPW21 :1;
        unsigned CPW22 :1;
        unsigned CPW23 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW16 :1;
        unsigned SMT1CPW17 :1;
        unsigned SMT1CPW18 :1;
        unsigned SMT1CPW19 :1;
        unsigned SMT1CPW20 :1;
        unsigned SMT1CPW21 :1;
        unsigned SMT1CPW22 :1;
        unsigned SMT1CPW23 :1;
    };
} SMT1CPWUbits_t;
extern volatile SMT1CPWUbits_t SMT1CPWUbits __attribute__((address(0x494)));
# 14906 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __uint24 SMT1PR __attribute__((address(0x495)));


__asm("SMT1PR equ 0495h");




extern volatile unsigned char SMT1PRL __attribute__((address(0x495)));

__asm("SMT1PRL equ 0495h");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
        unsigned PR3 :1;
        unsigned PR4 :1;
        unsigned PR5 :1;
        unsigned PR6 :1;
        unsigned PR7 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR0 :1;
        unsigned SMT1PR1 :1;
        unsigned SMT1PR2 :1;
        unsigned SMT1PR3 :1;
        unsigned SMT1PR4 :1;
        unsigned SMT1PR5 :1;
        unsigned SMT1PR6 :1;
        unsigned SMT1PR7 :1;
    };
} SMT1PRLbits_t;
extern volatile SMT1PRLbits_t SMT1PRLbits __attribute__((address(0x495)));
# 15042 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1PRH __attribute__((address(0x496)));

__asm("SMT1PRH equ 0496h");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR8 :1;
        unsigned PR9 :1;
        unsigned PR10 :1;
        unsigned PR11 :1;
        unsigned PR12 :1;
        unsigned PR13 :1;
        unsigned PR14 :1;
        unsigned PR15 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR8 :1;
        unsigned SMT1PR9 :1;
        unsigned SMT1PR10 :1;
        unsigned SMT1PR11 :1;
        unsigned SMT1PR12 :1;
        unsigned SMT1PR13 :1;
        unsigned SMT1PR14 :1;
        unsigned SMT1PR15 :1;
    };
} SMT1PRHbits_t;
extern volatile SMT1PRHbits_t SMT1PRHbits __attribute__((address(0x496)));
# 15170 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1PRU __attribute__((address(0x497)));

__asm("SMT1PRU equ 0497h");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR16 :1;
        unsigned PR17 :1;
        unsigned PR18 :1;
        unsigned PR19 :1;
        unsigned PR20 :1;
        unsigned PR21 :1;
        unsigned PR22 :1;
        unsigned PR23 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR16 :1;
        unsigned SMT1PR17 :1;
        unsigned SMT1PR18 :1;
        unsigned SMT1PR19 :1;
        unsigned SMT1PR20 :1;
        unsigned SMT1PR21 :1;
        unsigned SMT1PR22 :1;
        unsigned SMT1PR23 :1;
    };
} SMT1PRUbits_t;
extern volatile SMT1PRUbits_t SMT1PRUbits __attribute__((address(0x497)));
# 15298 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1CON0 __attribute__((address(0x498)));

__asm("SMT1CON0 equ 0498h");


typedef union {
    struct {
        unsigned PS :2;
        unsigned CPOL :1;
        unsigned SPOL :1;
        unsigned WPOL :1;
        unsigned STP :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned SMT1PS :2;
        unsigned SMT1CPOL :1;
        unsigned SMT1SPOL :1;
        unsigned SMT1WOL :1;
        unsigned SMT1STP :1;
        unsigned :1;
        unsigned SMT1EN :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
    };
    struct {
        unsigned SMT1PS0 :1;
        unsigned SMT1PS1 :1;
    };
} SMT1CON0bits_t;
extern volatile SMT1CON0bits_t SMT1CON0bits __attribute__((address(0x498)));
# 15416 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1CON1 __attribute__((address(0x499)));

__asm("SMT1CON1 equ 0499h");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned :2;
        unsigned REPEAT :1;
        unsigned GO :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned :2;
        unsigned SMT1REPEAT :1;
        unsigned SMT1GO :1;
    };
    struct {
        unsigned SMT1MODE :4;
    };
} SMT1CON1bits_t;
extern volatile SMT1CON1bits_t SMT1CON1bits __attribute__((address(0x499)));
# 15496 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1STAT __attribute__((address(0x49A)));

__asm("SMT1STAT equ 049Ah");


typedef union {
    struct {
        unsigned AS :1;
        unsigned WS :1;
        unsigned TS :1;
        unsigned :2;
        unsigned RST :1;
        unsigned CPWUP :1;
        unsigned CPRUP :1;
    };
    struct {
        unsigned SMT1AS :1;
        unsigned SMT1WS :1;
        unsigned SMT1TS :1;
        unsigned :2;
        unsigned SMT1RESET :1;
        unsigned SMT1CPWUP :1;
        unsigned SMT1CPRUP :1;
    };
    struct {
        unsigned :5;
        unsigned SMT1RST :1;
    };
} SMT1STATbits_t;
extern volatile SMT1STATbits_t SMT1STATbits __attribute__((address(0x49A)));
# 15595 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1CLK __attribute__((address(0x49B)));

__asm("SMT1CLK equ 049Bh");


typedef union {
    struct {
        unsigned CSEL :3;
    };
    struct {
        unsigned CSEL0 :1;
        unsigned CSEL1 :1;
        unsigned CSEL2 :1;
    };
    struct {
        unsigned SMT1CSEL :3;
    };
    struct {
        unsigned SMT1CSEL0 :1;
        unsigned SMT1CSEL1 :1;
        unsigned SMT1CSEL2 :1;
    };
} SMT1CLKbits_t;
extern volatile SMT1CLKbits_t SMT1CLKbits __attribute__((address(0x49B)));
# 15663 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1SIG __attribute__((address(0x49C)));

__asm("SMT1SIG equ 049Ch");


typedef union {
    struct {
        unsigned SSEL :5;
    };
    struct {
        unsigned SSEL0 :1;
        unsigned SSEL1 :1;
        unsigned SSEL2 :1;
        unsigned SSEL3 :1;
        unsigned SSEL4 :1;
    };
    struct {
        unsigned SMT1SSEL :5;
    };
    struct {
        unsigned SMT1SSEL0 :1;
        unsigned SMT1SSEL1 :1;
        unsigned SMT1SSEL2 :1;
        unsigned SMT1SSEL3 :1;
        unsigned SMT1SSEL4 :1;
    };
} SMT1SIGbits_t;
extern volatile SMT1SIGbits_t SMT1SIGbits __attribute__((address(0x49C)));
# 15755 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1WIN __attribute__((address(0x49D)));

__asm("SMT1WIN equ 049Dh");


typedef union {
    struct {
        unsigned WSEL :5;
    };
    struct {
        unsigned WSEL0 :1;
        unsigned WSEL1 :1;
        unsigned WSEL2 :1;
        unsigned WSEL3 :1;
        unsigned WSEL4 :1;
    };
    struct {
        unsigned SMT1WSEL :5;
    };
    struct {
        unsigned SMT1WSEL0 :1;
        unsigned SMT1WSEL1 :1;
        unsigned SMT1WSEL2 :1;
        unsigned SMT1WSEL3 :1;
        unsigned SMT1WSEL4 :1;
    };
} SMT1WINbits_t;
extern volatile SMT1WINbits_t SMT1WINbits __attribute__((address(0x49D)));
# 15848 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __uint24 NCO1ACC __attribute__((address(0x58C)));


__asm("NCO1ACC equ 058Ch");




extern volatile unsigned char NCO1ACCL __attribute__((address(0x58C)));

__asm("NCO1ACCL equ 058Ch");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO1ACC0 :1;
        unsigned NCO1ACC1 :1;
        unsigned NCO1ACC2 :1;
        unsigned NCO1ACC3 :1;
        unsigned NCO1ACC4 :1;
        unsigned NCO1ACC5 :1;
        unsigned NCO1ACC6 :1;
        unsigned NCO1ACC7 :1;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCLbits_t;
extern volatile NCO1ACCLbits_t NCO1ACCLbits __attribute__((address(0x58C)));
# 15984 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NCO1ACCH __attribute__((address(0x58D)));

__asm("NCO1ACCH equ 058Dh");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO1ACC8 :1;
        unsigned NCO1ACC9 :1;
        unsigned NCO1ACC10 :1;
        unsigned NCO1ACC11 :1;
        unsigned NCO1ACC12 :1;
        unsigned NCO1ACC13 :1;
        unsigned NCO1ACC14 :1;
        unsigned NCO1ACC15 :1;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCHbits_t;
extern volatile NCO1ACCHbits_t NCO1ACCHbits __attribute__((address(0x58D)));
# 16112 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NCO1ACCU __attribute__((address(0x58E)));

__asm("NCO1ACCU equ 058Eh");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO1ACC16 :1;
        unsigned NCO1ACC17 :1;
        unsigned NCO1ACC18 :1;
        unsigned NCO1ACC19 :1;
    };
    struct {
        unsigned ACC16 :1;
        unsigned ACC17 :1;
        unsigned ACC18 :1;
        unsigned ACC19 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCUbits_t;
extern volatile NCO1ACCUbits_t NCO1ACCUbits __attribute__((address(0x58E)));
# 16193 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __uint24 NCO1INC __attribute__((address(0x58F)));


__asm("NCO1INC equ 058Fh");




extern volatile unsigned char NCO1INCL __attribute__((address(0x58F)));

__asm("NCO1INCL equ 058Fh");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO1INC0 :1;
        unsigned NCO1INC1 :1;
        unsigned NCO1INC2 :1;
        unsigned NCO1INC3 :1;
        unsigned NCO1INC4 :1;
        unsigned NCO1INC5 :1;
        unsigned NCO1INC6 :1;
        unsigned NCO1INC7 :1;
    };
    struct {
        unsigned INC0 :1;
        unsigned INC1 :1;
        unsigned INC2 :1;
        unsigned INC3 :1;
        unsigned INC4 :1;
        unsigned INC5 :1;
        unsigned INC6 :1;
        unsigned INC7 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCLbits_t;
extern volatile NCO1INCLbits_t NCO1INCLbits __attribute__((address(0x58F)));
# 16329 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NCO1INCH __attribute__((address(0x590)));

__asm("NCO1INCH equ 0590h");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO1INC8 :1;
        unsigned NCO1INC9 :1;
        unsigned NCO1INC10 :1;
        unsigned NCO1INC11 :1;
        unsigned NCO1INC12 :1;
        unsigned NCO1INC13 :1;
        unsigned NCO1INC14 :1;
        unsigned NCO1INC15 :1;
    };
    struct {
        unsigned INC8 :1;
        unsigned INC9 :1;
        unsigned INC10 :1;
        unsigned INC11 :1;
        unsigned INC12 :1;
        unsigned INC13 :1;
        unsigned INC14 :1;
        unsigned INC15 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCHbits_t;
extern volatile NCO1INCHbits_t NCO1INCHbits __attribute__((address(0x590)));
# 16457 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NCO1INCU __attribute__((address(0x591)));

__asm("NCO1INCU equ 0591h");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO1INC16 :1;
        unsigned NCO1INC17 :1;
        unsigned NCO1INC18 :1;
        unsigned NCO1INC19 :1;
    };
    struct {
        unsigned INC16 :1;
        unsigned INC17 :1;
        unsigned INC18 :1;
        unsigned INC19 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCUbits_t;
extern volatile NCO1INCUbits_t NCO1INCUbits __attribute__((address(0x591)));
# 16537 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NCO1CON __attribute__((address(0x592)));

__asm("NCO1CON equ 0592h");


typedef union {
    struct {
        unsigned PFM :1;
        unsigned :3;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned NCO1PFM :1;
        unsigned :3;
        unsigned NCO1POL :1;
        unsigned NCO1OUT :1;
        unsigned :1;
        unsigned NCO1EN :1;
    };
} NCO1CONbits_t;
extern volatile NCO1CONbits_t NCO1CONbits __attribute__((address(0x592)));
# 16605 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NCO1CLK __attribute__((address(0x593)));

__asm("NCO1CLK equ 0593h");


typedef union {
    struct {
        unsigned CKS :4;
        unsigned :1;
        unsigned PWS :3;
    };
    struct {
        unsigned CKS0 :1;
        unsigned CKS1 :1;
        unsigned CKS2 :1;
        unsigned CKS3 :1;
        unsigned :1;
        unsigned PWS0 :1;
        unsigned PWS1 :1;
        unsigned PWS2 :1;
    };
    struct {
        unsigned NCO1CKS :4;
        unsigned :1;
        unsigned NCO1PWS :3;
    };
    struct {
        unsigned NCO1CKS0 :1;
        unsigned NCO1CKS1 :1;
        unsigned NCO1CKS2 :1;
        unsigned NCO1CKS3 :1;
        unsigned :1;
        unsigned NCO1PWS0 :1;
        unsigned NCO1PWS1 :1;
        unsigned NCO1PWS2 :1;
    };
} NCO1CLKbits_t;
extern volatile NCO1CLKbits_t NCO1CLKbits __attribute__((address(0x593)));
# 16737 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR0L __attribute__((address(0x59C)));

__asm("TMR0L equ 059Ch");


extern volatile unsigned char TMR0 __attribute__((address(0x59C)));

__asm("TMR0 equ 059Ch");


typedef union {
    struct {
        unsigned TMR0L :8;
    };
    struct {
        unsigned TMR0L0 :1;
        unsigned TMR0L1 :1;
        unsigned TMR0L2 :1;
        unsigned TMR0L3 :1;
        unsigned TMR0L4 :1;
        unsigned TMR0L5 :1;
        unsigned TMR0L6 :1;
        unsigned TMR0L7 :1;
    };
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __attribute__((address(0x59C)));
# 16810 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned TMR0L :8;
    };
    struct {
        unsigned TMR0L0 :1;
        unsigned TMR0L1 :1;
        unsigned TMR0L2 :1;
        unsigned TMR0L3 :1;
        unsigned TMR0L4 :1;
        unsigned TMR0L5 :1;
        unsigned TMR0L6 :1;
        unsigned TMR0L7 :1;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x59C)));
# 16875 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TMR0H __attribute__((address(0x59D)));

__asm("TMR0H equ 059Dh");


extern volatile unsigned char PR0 __attribute__((address(0x59D)));

__asm("PR0 equ 059Dh");


typedef union {
    struct {
        unsigned TMR0H :8;
    };
    struct {
        unsigned TMR0H0 :1;
        unsigned TMR0H1 :1;
        unsigned TMR0H2 :1;
        unsigned TMR0H3 :1;
        unsigned TMR0H4 :1;
        unsigned TMR0H5 :1;
        unsigned TMR0H6 :1;
        unsigned TMR0H7 :1;
    };
    struct {
        unsigned T0PR0 :1;
        unsigned T0PR1 :1;
        unsigned T0PR2 :1;
        unsigned T0PR3 :1;
        unsigned T0PR4 :1;
        unsigned T0PR5 :1;
        unsigned T0PR6 :1;
        unsigned T0PR7 :1;
    };
    struct {
        unsigned T0PR :8;
    };
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __attribute__((address(0x59D)));
# 17006 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned TMR0H :8;
    };
    struct {
        unsigned TMR0H0 :1;
        unsigned TMR0H1 :1;
        unsigned TMR0H2 :1;
        unsigned TMR0H3 :1;
        unsigned TMR0H4 :1;
        unsigned TMR0H5 :1;
        unsigned TMR0H6 :1;
        unsigned TMR0H7 :1;
    };
    struct {
        unsigned T0PR0 :1;
        unsigned T0PR1 :1;
        unsigned T0PR2 :1;
        unsigned T0PR3 :1;
        unsigned T0PR4 :1;
        unsigned T0PR5 :1;
        unsigned T0PR6 :1;
        unsigned T0PR7 :1;
    };
    struct {
        unsigned T0PR :8;
    };
} PR0bits_t;
extern volatile PR0bits_t PR0bits __attribute__((address(0x59D)));
# 17129 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T0CON0 __attribute__((address(0x59E)));

__asm("T0CON0 equ 059Eh");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned MD16 :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned T0OUTPS :4;
        unsigned T0MD16 :1;
        unsigned T0OUT :1;
        unsigned :1;
        unsigned T0EN :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned T016BIT :1;
    };
} T0CON0bits_t;
extern volatile T0CON0bits_t T0CON0bits __attribute__((address(0x59E)));
# 17227 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T0CON1 __attribute__((address(0x59F)));

__asm("T0CON1 equ 059Fh");


typedef union {
    struct {
        unsigned CKPS :4;
        unsigned ASYNC :1;
        unsigned CS :3;
    };
    struct {
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned CKPS3 :1;
        unsigned T0ASYNC :1;
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
    };
    struct {
        unsigned T0CKPS :4;
        unsigned :1;
        unsigned T0CS :3;
    };
    struct {
        unsigned T0CKPS0 :1;
        unsigned T0CKPS1 :1;
        unsigned T0CKPS2 :1;
        unsigned T0CKPS3 :1;
        unsigned :1;
        unsigned T0CS0 :1;
        unsigned T0CS1 :1;
        unsigned T0CS2 :1;
    };
} T0CON1bits_t;
extern volatile T0CON1bits_t T0CON1bits __attribute__((address(0x59F)));
# 17369 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1CLK __attribute__((address(0x60C)));

__asm("CWG1CLK equ 060Ch");


extern volatile unsigned char CWG1CLKCON __attribute__((address(0x60C)));

__asm("CWG1CLKCON equ 060Ch");


typedef union {
    struct {
        unsigned CLK :1;
    };
    struct {
        unsigned CWG1CS :1;
    };
} CWG1CLKbits_t;
extern volatile CWG1CLKbits_t CWG1CLKbits __attribute__((address(0x60C)));
# 17400 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned CLK :1;
    };
    struct {
        unsigned CWG1CS :1;
    };
} CWG1CLKCONbits_t;
extern volatile CWG1CLKCONbits_t CWG1CLKCONbits __attribute__((address(0x60C)));
# 17423 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1ISM __attribute__((address(0x60D)));

__asm("CWG1ISM equ 060Dh");


extern volatile unsigned char CWG1DAT __attribute__((address(0x60D)));

__asm("CWG1DAT equ 060Dh");


typedef union {
    struct {
        unsigned DAT :4;
    };
    struct {
        unsigned CWG1DAT0 :1;
        unsigned CWG1DAT1 :1;
        unsigned CWG1DAT2 :1;
        unsigned CWG1DAT3 :1;
    };
} CWG1ISMbits_t;
extern volatile CWG1ISMbits_t CWG1ISMbits __attribute__((address(0x60D)));
# 17472 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned DAT :4;
    };
    struct {
        unsigned CWG1DAT0 :1;
        unsigned CWG1DAT1 :1;
        unsigned CWG1DAT2 :1;
        unsigned CWG1DAT3 :1;
    };
} CWG1DATbits_t;
extern volatile CWG1DATbits_t CWG1DATbits __attribute__((address(0x60D)));
# 17513 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1DBR __attribute__((address(0x60E)));

__asm("CWG1DBR equ 060Eh");


typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG1DBR :6;
    };
    struct {
        unsigned CWG1DBR0 :1;
        unsigned CWG1DBR1 :1;
        unsigned CWG1DBR2 :1;
        unsigned CWG1DBR3 :1;
        unsigned CWG1DBR4 :1;
        unsigned CWG1DBR5 :1;
    };
} CWG1DBRbits_t;
extern volatile CWG1DBRbits_t CWG1DBRbits __attribute__((address(0x60E)));
# 17617 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1DBF __attribute__((address(0x60F)));

__asm("CWG1DBF equ 060Fh");


typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG1DBF :6;
    };
    struct {
        unsigned CWG1DBF0 :1;
        unsigned CWG1DBF1 :1;
        unsigned CWG1DBF2 :1;
        unsigned CWG1DBF3 :1;
        unsigned CWG1DBF4 :1;
        unsigned CWG1DBF5 :1;
    };
} CWG1DBFbits_t;
extern volatile CWG1DBFbits_t CWG1DBFbits __attribute__((address(0x60F)));
# 17721 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1CON0 __attribute__((address(0x610)));

__asm("CWG1CON0 equ 0610h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G1EN :1;
    };
    struct {
        unsigned CWG1MODE :3;
        unsigned :3;
        unsigned CWG1LD :1;
        unsigned CWG1EN :1;
    };
    struct {
        unsigned CWG1MODE0 :1;
        unsigned CWG1MODE1 :1;
        unsigned CWG1MODE2 :1;
    };
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __attribute__((address(0x610)));
# 17822 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1CON1 __attribute__((address(0x611)));

__asm("CWG1CON1 equ 0611h");


typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG1POLA :1;
        unsigned CWG1POLB :1;
        unsigned CWG1POLC :1;
        unsigned CWG1POLD :1;
        unsigned :1;
        unsigned CWG1IN :1;
    };
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __attribute__((address(0x611)));
# 17900 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1AS0 __attribute__((address(0x612)));

__asm("CWG1AS0 equ 0612h");


typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSDBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSCA1 :1;
        unsigned LSDB0 :1;
        unsigned LSDB1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC :2;
        unsigned CWG1LSDB :2;
        unsigned CWG1REN :1;
        unsigned CWG1SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC0 :1;
        unsigned CWG1LSAC1 :1;
        unsigned CWG1LSDB0 :1;
        unsigned CWG1LSDB1 :1;
    };
} CWG1AS0bits_t;
extern volatile CWG1AS0bits_t CWG1AS0bits __attribute__((address(0x612)));
# 18020 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1AS1 __attribute__((address(0x613)));

__asm("CWG1AS1 equ 0613h");


typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
    };
} CWG1AS1bits_t;
extern volatile CWG1AS1bits_t CWG1AS1bits __attribute__((address(0x613)));
# 18076 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1STR __attribute__((address(0x614)));

__asm("CWG1STR equ 0614h");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG1STRA :1;
        unsigned CWG1STRB :1;
        unsigned CWG1STRC :1;
        unsigned CWG1STRD :1;
        unsigned CWG1OVRA :1;
        unsigned CWG1OVRB :1;
        unsigned CWG1OVRC :1;
        unsigned CWG1OVRD :1;
    };
} CWG1STRbits_t;
extern volatile CWG1STRbits_t CWG1STRbits __attribute__((address(0x614)));
# 18188 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2CLK __attribute__((address(0x616)));

__asm("CWG2CLK equ 0616h");


extern volatile unsigned char CWG2CLKCON __attribute__((address(0x616)));

__asm("CWG2CLKCON equ 0616h");


typedef union {
    struct {
        unsigned CLK :1;
    };
    struct {
        unsigned CWG2CS :1;
    };
} CWG2CLKbits_t;
extern volatile CWG2CLKbits_t CWG2CLKbits __attribute__((address(0x616)));
# 18219 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned CLK :1;
    };
    struct {
        unsigned CWG2CS :1;
    };
} CWG2CLKCONbits_t;
extern volatile CWG2CLKCONbits_t CWG2CLKCONbits __attribute__((address(0x616)));
# 18242 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2ISM __attribute__((address(0x617)));

__asm("CWG2ISM equ 0617h");


extern volatile unsigned char CWG2DAT __attribute__((address(0x617)));

__asm("CWG2DAT equ 0617h");


typedef union {
    struct {
        unsigned DAT :4;
    };
    struct {
        unsigned CWG2DAT0 :1;
        unsigned CWG2DAT1 :1;
        unsigned CWG2DAT2 :1;
        unsigned CWG2DAT3 :1;
    };
} CWG2ISMbits_t;
extern volatile CWG2ISMbits_t CWG2ISMbits __attribute__((address(0x617)));
# 18291 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned DAT :4;
    };
    struct {
        unsigned CWG2DAT0 :1;
        unsigned CWG2DAT1 :1;
        unsigned CWG2DAT2 :1;
        unsigned CWG2DAT3 :1;
    };
} CWG2DATbits_t;
extern volatile CWG2DATbits_t CWG2DATbits __attribute__((address(0x617)));
# 18332 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2DBR __attribute__((address(0x618)));

__asm("CWG2DBR equ 0618h");


typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG2DBR :6;
    };
    struct {
        unsigned CWG2DBR0 :1;
        unsigned CWG2DBR1 :1;
        unsigned CWG2DBR2 :1;
        unsigned CWG2DBR3 :1;
        unsigned CWG2DBR4 :1;
        unsigned CWG2DBR5 :1;
    };
} CWG2DBRbits_t;
extern volatile CWG2DBRbits_t CWG2DBRbits __attribute__((address(0x618)));
# 18436 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2DBF __attribute__((address(0x619)));

__asm("CWG2DBF equ 0619h");


typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG2DBF :6;
    };
    struct {
        unsigned CWG2DBF0 :1;
        unsigned CWG2DBF1 :1;
        unsigned CWG2DBF2 :1;
        unsigned CWG2DBF3 :1;
        unsigned CWG2DBF4 :1;
        unsigned CWG2DBF5 :1;
    };
} CWG2DBFbits_t;
extern volatile CWG2DBFbits_t CWG2DBFbits __attribute__((address(0x619)));
# 18540 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2CON0 __attribute__((address(0x61A)));

__asm("CWG2CON0 equ 061Ah");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G2EN :1;
    };
    struct {
        unsigned CWG2MODE :3;
        unsigned :3;
        unsigned CWG2LD :1;
        unsigned CWG2EN :1;
    };
    struct {
        unsigned CWG2MODE0 :1;
        unsigned CWG2MODE1 :1;
        unsigned CWG2MODE2 :1;
    };
} CWG2CON0bits_t;
extern volatile CWG2CON0bits_t CWG2CON0bits __attribute__((address(0x61A)));
# 18641 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2CON1 __attribute__((address(0x61B)));

__asm("CWG2CON1 equ 061Bh");


typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG2POLA :1;
        unsigned CWG2POLB :1;
        unsigned CWG2POLC :1;
        unsigned CWG2POLD :1;
        unsigned :1;
        unsigned CWG2IN :1;
    };
} CWG2CON1bits_t;
extern volatile CWG2CON1bits_t CWG2CON1bits __attribute__((address(0x61B)));
# 18719 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2AS0 __attribute__((address(0x61C)));

__asm("CWG2AS0 equ 061Ch");


typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSDBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSCA1 :1;
        unsigned LSDB0 :1;
        unsigned LSDB1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG2LSAC :2;
        unsigned CWG2LSDB :2;
        unsigned CWG2REN :1;
        unsigned CWG2SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG2LSAC0 :1;
        unsigned CWG2LSAC1 :1;
        unsigned CWG2LSDB0 :1;
        unsigned CWG2LSDB1 :1;
    };
} CWG2AS0bits_t;
extern volatile CWG2AS0bits_t CWG2AS0bits __attribute__((address(0x61C)));
# 18839 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2AS1 __attribute__((address(0x61D)));

__asm("CWG2AS1 equ 061Dh");


typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
    };
} CWG2AS1bits_t;
extern volatile CWG2AS1bits_t CWG2AS1bits __attribute__((address(0x61D)));
# 18895 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2STR __attribute__((address(0x61E)));

__asm("CWG2STR equ 061Eh");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG2STRA :1;
        unsigned CWG2STRB :1;
        unsigned CWG2STRC :1;
        unsigned CWG2STRD :1;
        unsigned CWG2OVRA :1;
        unsigned CWG2OVRB :1;
        unsigned CWG2OVRC :1;
        unsigned CWG2OVRD :1;
    };
} CWG2STRbits_t;
extern volatile CWG2STRbits_t CWG2STRbits __attribute__((address(0x61E)));
# 19007 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR0 __attribute__((address(0x70C)));

__asm("PIR0 equ 070Ch");


typedef union {
    struct {
        unsigned INTF :1;
        unsigned :3;
        unsigned IOCIF :1;
        unsigned TMR0IF :1;
    };
} PIR0bits_t;
extern volatile PIR0bits_t PIR0bits __attribute__((address(0x70C)));
# 19040 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x70D)));

__asm("PIR1 equ 070Dh");


typedef union {
    struct {
        unsigned ADIF :1;
        unsigned ADTIF :1;
        unsigned :4;
        unsigned CSWIF :1;
        unsigned OSFIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x70D)));
# 19079 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x70E)));

__asm("PIR2 equ 070Eh");


typedef union {
    struct {
        unsigned C1IF :1;
        unsigned C2IF :1;
        unsigned :4;
        unsigned ZCDIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x70E)));
# 19112 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0x70F)));

__asm("PIR3 equ 070Fh");


typedef union {
    struct {
        unsigned SSP1IF :1;
        unsigned BCL1IF :1;
        unsigned SSP2IF :1;
        unsigned BCL2IF :1;
        unsigned TX1IF :1;
        unsigned RC1IF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x70F)));
# 19162 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR4 __attribute__((address(0x710)));

__asm("PIR4 equ 0710h");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned TMR3IF :1;
        unsigned TMR4IF :1;
        unsigned TMR5IF :1;
        unsigned TMR6IF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0x710)));
# 19212 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR5 __attribute__((address(0x711)));

__asm("PIR5 equ 0711h");


typedef union {
    struct {
        unsigned TMR1GIF :1;
        unsigned TMR3GIF :1;
        unsigned TMR5GIF :1;
        unsigned :1;
        unsigned CLC1IF :1;
        unsigned CLC2IF :1;
        unsigned CLC3IF :1;
        unsigned CLC4IF :1;
    };
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __attribute__((address(0x711)));
# 19269 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR6 __attribute__((address(0x712)));

__asm("PIR6 equ 0712h");


typedef union {
    struct {
        unsigned CCP1IF :1;
        unsigned CCP2IF :1;
        unsigned CCP3IF :1;
        unsigned CCP4IF :1;
    };
} PIR6bits_t;
extern volatile PIR6bits_t PIR6bits __attribute__((address(0x712)));
# 19307 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR7 __attribute__((address(0x713)));

__asm("PIR7 equ 0713h");


typedef union {
    struct {
        unsigned CWG1IF :1;
        unsigned CWG2IF :1;
        unsigned :2;
        unsigned NCO1IF :1;
        unsigned NVMIF :1;
    };
} PIR7bits_t;
extern volatile PIR7bits_t PIR7bits __attribute__((address(0x713)));
# 19346 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIR8 __attribute__((address(0x714)));

__asm("PIR8 equ 0714h");


typedef union {
    struct {
        unsigned SMT1IF :1;
        unsigned SMT1PRAIF :1;
        unsigned SMT1PWAIF :1;
    };
} PIR8bits_t;
extern volatile PIR8bits_t PIR8bits __attribute__((address(0x714)));
# 19378 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE0 __attribute__((address(0x716)));

__asm("PIE0 equ 0716h");


typedef union {
    struct {
        unsigned INTE :1;
        unsigned :3;
        unsigned IOCIE :1;
        unsigned TMR0IE :1;
    };
} PIE0bits_t;
extern volatile PIE0bits_t PIE0bits __attribute__((address(0x716)));
# 19411 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x717)));

__asm("PIE1 equ 0717h");


typedef union {
    struct {
        unsigned ADIE :1;
        unsigned ADTIE :1;
        unsigned :4;
        unsigned CSWIE :1;
        unsigned OSFIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x717)));
# 19450 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x718)));

__asm("PIE2 equ 0718h");


typedef union {
    struct {
        unsigned C1IE :1;
        unsigned C2IE :1;
        unsigned :4;
        unsigned ZCDIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x718)));
# 19483 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0x719)));

__asm("PIE3 equ 0719h");


typedef union {
    struct {
        unsigned SSP1IE :1;
        unsigned BCL1IE :1;
        unsigned SSP2IE :1;
        unsigned BCL2IE :1;
        unsigned TX1IE :1;
        unsigned RC1IE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x719)));
# 19533 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE4 __attribute__((address(0x71A)));

__asm("PIE4 equ 071Ah");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned TMR3IE :1;
        unsigned TMR4IE :1;
        unsigned TMR5IE :1;
        unsigned TMR6IE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0x71A)));
# 19583 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE5 __attribute__((address(0x71B)));

__asm("PIE5 equ 071Bh");


typedef union {
    struct {
        unsigned TMR1GIE :1;
        unsigned TMR3GIE :1;
        unsigned TMR5GIE :1;
        unsigned :1;
        unsigned CLC1IE :1;
        unsigned CLC2IE :1;
        unsigned CLC3IE :1;
        unsigned CLC4IE :1;
    };
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __attribute__((address(0x71B)));
# 19640 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE6 __attribute__((address(0x71C)));

__asm("PIE6 equ 071Ch");


typedef union {
    struct {
        unsigned CCP1IE :1;
        unsigned CCP2IE :1;
        unsigned CCP3IE :1;
        unsigned CCP4IE :1;
    };
} PIE6bits_t;
extern volatile PIE6bits_t PIE6bits __attribute__((address(0x71C)));
# 19678 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE7 __attribute__((address(0x71D)));

__asm("PIE7 equ 071Dh");


typedef union {
    struct {
        unsigned CWG1IE :1;
        unsigned CWG2IE :1;
        unsigned :2;
        unsigned NCO1IE :1;
        unsigned NVMIE :1;
    };
    struct {
        unsigned :4;
        unsigned NCOIE :1;
    };
} PIE7bits_t;
extern volatile PIE7bits_t PIE7bits __attribute__((address(0x71D)));
# 19726 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PIE8 __attribute__((address(0x71E)));

__asm("PIE8 equ 071Eh");


typedef union {
    struct {
        unsigned SMT1IE :1;
        unsigned SMT1PRAIE :1;
        unsigned SMT1PWAIE :1;
    };
} PIE8bits_t;
extern volatile PIE8bits_t PIE8bits __attribute__((address(0x71E)));
# 19758 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD0 __attribute__((address(0x796)));

__asm("PMD0 equ 0796h");


typedef union {
    struct {
        unsigned IOCMD :1;
        unsigned CLKRMD :1;
        unsigned NVMMD :1;
        unsigned :3;
        unsigned FVRMD :1;
        unsigned SYSCMD :1;
    };
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __attribute__((address(0x796)));
# 19803 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD1 __attribute__((address(0x797)));

__asm("PMD1 equ 0797h");


typedef union {
    struct {
        unsigned TMR0MD :1;
        unsigned TMR1MD :1;
        unsigned TMR2MD :1;
        unsigned TMR3MD :1;
        unsigned TMR4MD :1;
        unsigned TMR5MD :1;
        unsigned TMR6MD :1;
    };
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __attribute__((address(0x797)));
# 19859 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD2 __attribute__((address(0x798)));

__asm("PMD2 equ 0798h");


typedef union {
    struct {
        unsigned :7;
        unsigned NCO1MD :1;
    };
} PMD2bits_t;
extern volatile PMD2bits_t PMD2bits __attribute__((address(0x798)));
# 19880 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD3 __attribute__((address(0x799)));

__asm("PMD3 equ 0799h");


typedef union {
    struct {
        unsigned ZCDMD :1;
        unsigned CMP1MD :1;
        unsigned CMP2MD :1;
        unsigned :2;
        unsigned ADCMD :1;
        unsigned DAC1MD :1;
    };
} PMD3bits_t;
extern volatile PMD3bits_t PMD3bits __attribute__((address(0x799)));
# 19925 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD4 __attribute__((address(0x79A)));

__asm("PMD4 equ 079Ah");


typedef union {
    struct {
        unsigned CCP1MD :1;
        unsigned CCP2MD :1;
        unsigned CCP3MD :1;
        unsigned CCP4MD :1;
        unsigned :1;
        unsigned PWM6MD :1;
        unsigned PWM7MD :1;
    };
} PMD4bits_t;
extern volatile PMD4bits_t PMD4bits __attribute__((address(0x79A)));
# 19976 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD5 __attribute__((address(0x79B)));

__asm("PMD5 equ 079Bh");


typedef union {
    struct {
        unsigned :5;
        unsigned CWG1MD :1;
        unsigned CWG2MD :1;
    };
} PMD5bits_t;
extern volatile PMD5bits_t PMD5bits __attribute__((address(0x79B)));
# 20003 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD6 __attribute__((address(0x79C)));

__asm("PMD6 equ 079Ch");


typedef union {
    struct {
        unsigned MSSP1MD :1;
        unsigned MSSP2MD :1;
        unsigned :2;
        unsigned U1MD :1;
    };
} PMD6bits_t;
extern volatile PMD6bits_t PMD6bits __attribute__((address(0x79C)));
# 20036 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PMD7 __attribute__((address(0x79D)));

__asm("PMD7 equ 079Dh");


typedef union {
    struct {
        unsigned DSM1MD :1;
        unsigned CLC1MD :1;
        unsigned CLC2MD :1;
        unsigned CLC3MD :1;
        unsigned CLC4MD :1;
        unsigned SMT1MD :1;
    };
} PMD7bits_t;
extern volatile PMD7bits_t PMD7bits __attribute__((address(0x79D)));
# 20086 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WDTCON0 __attribute__((address(0x80C)));

__asm("WDTCON0 equ 080Ch");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned WDTPS :5;
    };
    struct {
        unsigned SWDTEN :1;
    };
    struct {
        unsigned WDTSEN :1;
    };
    struct {
        unsigned :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
        unsigned WDTPS4 :1;
    };
} WDTCON0bits_t;
extern volatile WDTCON0bits_t WDTCON0bits __attribute__((address(0x80C)));
# 20161 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WDTCON1 __attribute__((address(0x80D)));

__asm("WDTCON1 equ 080Dh");


typedef union {
    struct {
        unsigned WINDOW :3;
        unsigned :1;
        unsigned WDTCS :3;
    };
    struct {
        unsigned WINDOW0 :1;
        unsigned WINDOW1 :1;
        unsigned WINDOW2 :1;
    };
    struct {
        unsigned WDTWINDOW :3;
    };
    struct {
        unsigned WDTWINDOW0 :1;
        unsigned WDTWINDOW1 :1;
        unsigned WDTWINDOW2 :1;
        unsigned :1;
        unsigned WDTCS0 :1;
        unsigned WDTCS1 :1;
        unsigned WDTCS2 :1;
    };
} WDTCON1bits_t;
extern volatile WDTCON1bits_t WDTCON1bits __attribute__((address(0x80D)));
# 20255 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WDTPSL __attribute__((address(0x80E)));

__asm("WDTPSL equ 080Eh");


typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT0 :1;
        unsigned PSCNT1 :1;
        unsigned PSCNT2 :1;
        unsigned PSCNT3 :1;
        unsigned PSCNT4 :1;
        unsigned PSCNT5 :1;
        unsigned PSCNT6 :1;
        unsigned PSCNT7 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT0 :1;
        unsigned WDTPSCNT1 :1;
        unsigned WDTPSCNT2 :1;
        unsigned WDTPSCNT3 :1;
        unsigned WDTPSCNT4 :1;
        unsigned WDTPSCNT5 :1;
        unsigned WDTPSCNT6 :1;
        unsigned WDTPSCNT7 :1;
    };
} WDTPSLbits_t;
extern volatile WDTPSLbits_t WDTPSLbits __attribute__((address(0x80E)));
# 20383 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WDTPSH __attribute__((address(0x80F)));

__asm("WDTPSH equ 080Fh");


typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT8 :1;
        unsigned PSCNT9 :1;
        unsigned PSCNT10 :1;
        unsigned PSCNT11 :1;
        unsigned PSCNT12 :1;
        unsigned PSCNT13 :1;
        unsigned PSCNT14 :1;
        unsigned PSCNT15 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT8 :1;
        unsigned WDTPSCNT9 :1;
        unsigned WDTPSCNT10 :1;
        unsigned WDTPSCNT11 :1;
        unsigned WDTPSCNT12 :1;
        unsigned WDTPSCNT13 :1;
        unsigned WDTPSCNT14 :1;
        unsigned WDTPSCNT15 :1;
    };
} WDTPSHbits_t;
extern volatile WDTPSHbits_t WDTPSHbits __attribute__((address(0x80F)));
# 20511 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WDTTMR __attribute__((address(0x810)));

__asm("WDTTMR equ 0810h");


typedef union {
    struct {
        unsigned PSCNT16 :1;
        unsigned PSCNT17 :1;
        unsigned STATE :1;
        unsigned WDTTMR :5;
    };
    struct {
        unsigned WDTPSCNT16 :1;
        unsigned WDTPSCNT17 :1;
        unsigned WDTSTATE :1;
        unsigned WDTTMR0 :1;
        unsigned WDTTMR1 :1;
        unsigned WDTTMR2 :1;
        unsigned WDTTMR3 :1;
    };
} WDTTMRbits_t;
extern volatile WDTTMRbits_t WDTTMRbits __attribute__((address(0x810)));
# 20593 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char BORCON __attribute__((address(0x811)));

__asm("BORCON equ 0811h");


typedef union {
    struct {
        unsigned BORRDY :1;
        unsigned :6;
        unsigned SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x811)));
# 20620 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0x812)));

__asm("VREGCON equ 0812h");


typedef union {
    struct {
        unsigned :1;
        unsigned VREGPM :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x812)));
# 20641 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PCON0 __attribute__((address(0x813)));

__asm("PCON0 equ 0813h");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nRI :1;
        unsigned nRMCLR :1;
        unsigned nRWDT :1;
        unsigned nWDTWV :1;
        unsigned STKUNF :1;
        unsigned STKOVF :1;
    };
} PCON0bits_t;
extern volatile PCON0bits_t PCON0bits __attribute__((address(0x813)));
# 20703 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PCON1 __attribute__((address(0x814)));

__asm("PCON1 equ 0814h");


typedef union {
    struct {
        unsigned :1;
        unsigned nMEMV :1;
    };
} PCON1bits_t;
extern volatile PCON1bits_t PCON1bits __attribute__((address(0x814)));
# 20724 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short NVMADR __attribute__((address(0x81A)));

__asm("NVMADR equ 081Ah");




extern volatile unsigned char NVMADRL __attribute__((address(0x81A)));

__asm("NVMADRL equ 081Ah");


typedef union {
    struct {
        unsigned NVMADRL0 :1;
        unsigned NVMADRL1 :1;
        unsigned NVMADRL2 :1;
        unsigned NVMADRL3 :1;
        unsigned NVMADRL4 :1;
        unsigned NVMADRL5 :1;
        unsigned NVMADRL6 :1;
        unsigned NVMADRL7 :1;
    };
} NVMADRLbits_t;
extern volatile NVMADRLbits_t NVMADRLbits __attribute__((address(0x81A)));
# 20793 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NVMADRH __attribute__((address(0x81B)));

__asm("NVMADRH equ 081Bh");


typedef union {
    struct {
        unsigned NVMADRH0 :1;
        unsigned NVMADRH1 :1;
        unsigned NVMADRH2 :1;
        unsigned NVMADRH3 :1;
        unsigned NVMADRH4 :1;
        unsigned NVMADRH5 :1;
        unsigned NVMADRH6 :1;
    };
} NVMADRHbits_t;
extern volatile NVMADRHbits_t NVMADRHbits __attribute__((address(0x81B)));
# 20849 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short NVMDAT __attribute__((address(0x81C)));

__asm("NVMDAT equ 081Ch");




extern volatile unsigned char NVMDATL __attribute__((address(0x81C)));

__asm("NVMDATL equ 081Ch");


typedef union {
    struct {
        unsigned NVMDATL0 :1;
        unsigned NVMDATL1 :1;
        unsigned NVMDATL2 :1;
        unsigned NVMDATL3 :1;
        unsigned NVMDATL4 :1;
        unsigned NVMDATL5 :1;
        unsigned NVMDATL6 :1;
        unsigned NVMDATL7 :1;
    };
} NVMDATLbits_t;
extern volatile NVMDATLbits_t NVMDATLbits __attribute__((address(0x81C)));
# 20918 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NVMDATH __attribute__((address(0x81D)));

__asm("NVMDATH equ 081Dh");


typedef union {
    struct {
        unsigned NVMDATH0 :1;
        unsigned NVMDATH1 :1;
        unsigned NVMDATH2 :1;
        unsigned NVMDATH3 :1;
        unsigned NVMDATH4 :1;
        unsigned NVMDATH5 :1;
    };
} NVMDATHbits_t;
extern volatile NVMDATHbits_t NVMDATHbits __attribute__((address(0x81D)));
# 20968 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NVMCON1 __attribute__((address(0x81E)));

__asm("NVMCON1 equ 081Eh");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned LWLO :1;
        unsigned NVMREGS :1;
    };
} NVMCON1bits_t;
extern volatile NVMCON1bits_t NVMCON1bits __attribute__((address(0x81E)));
# 21024 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char NVMCON2 __attribute__((address(0x81F)));

__asm("NVMCON2 equ 081Fh");


typedef union {
    struct {
        unsigned NVMCON2 :8;
    };
} NVMCON2bits_t;
extern volatile NVMCON2bits_t NVMCON2bits __attribute__((address(0x81F)));
# 21044 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CPUDOZE __attribute__((address(0x88C)));

__asm("CPUDOZE equ 088Ch");


typedef union {
    struct {
        unsigned DOZE :3;
        unsigned :1;
        unsigned DOE :1;
        unsigned ROI :1;
        unsigned DOZEN :1;
        unsigned IDLEN :1;
    };
    struct {
        unsigned DOZE0 :1;
        unsigned DOZE1 :1;
        unsigned DOZE2 :1;
    };
} CPUDOZEbits_t;
extern volatile CPUDOZEbits_t CPUDOZEbits __attribute__((address(0x88C)));
# 21109 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char OSCCON1 __attribute__((address(0x88D)));

__asm("OSCCON1 equ 088Dh");


typedef union {
    struct {
        unsigned NDIV :4;
        unsigned NOSC :3;
    };
    struct {
        unsigned NDIV0 :1;
        unsigned NDIV1 :1;
        unsigned NDIV2 :1;
        unsigned NDIV3 :1;
        unsigned NOSC0 :1;
        unsigned NOSC1 :1;
        unsigned NOSC2 :1;
    };
} OSCCON1bits_t;
extern volatile OSCCON1bits_t OSCCON1bits __attribute__((address(0x88D)));
# 21179 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char OSCCON2 __attribute__((address(0x88E)));

__asm("OSCCON2 equ 088Eh");


typedef union {
    struct {
        unsigned CDIV :4;
        unsigned COSC :3;
    };
    struct {
        unsigned CDIV0 :1;
        unsigned CDIV1 :1;
        unsigned CDIV2 :1;
        unsigned CDIV3 :1;
        unsigned COSC0 :1;
        unsigned COSC1 :1;
        unsigned COSC2 :1;
    };
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __attribute__((address(0x88E)));
# 21249 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char OSCCON3 __attribute__((address(0x88F)));

__asm("OSCCON3 equ 088Fh");


typedef union {
    struct {
        unsigned :3;
        unsigned NOSCR :1;
        unsigned ORDY :1;
        unsigned :1;
        unsigned SOSCPWR :1;
        unsigned CSWHOLD :1;
    };
} OSCCON3bits_t;
extern volatile OSCCON3bits_t OSCCON3bits __attribute__((address(0x88F)));
# 21289 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char OSCSTAT __attribute__((address(0x890)));

__asm("OSCSTAT equ 0890h");


typedef union {
    struct {
        unsigned PLLR :1;
        unsigned :1;
        unsigned ADOR :1;
        unsigned SOR :1;
        unsigned LFOR :1;
        unsigned MFOR :1;
        unsigned HFOR :1;
        unsigned EXTOR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x890)));
# 21346 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char OSCEN __attribute__((address(0x891)));

__asm("OSCEN equ 0891h");


typedef union {
    struct {
        unsigned :2;
        unsigned ADOEN :1;
        unsigned SOSCEN :1;
        unsigned LFOEN :1;
        unsigned MFOEN :1;
        unsigned HFOEN :1;
        unsigned EXTOEN :1;
    };
} OSCENbits_t;
extern volatile OSCENbits_t OSCENbits __attribute__((address(0x891)));
# 21397 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x892)));

__asm("OSCTUNE equ 0892h");


typedef union {
    struct {
        unsigned HFTUN :6;
    };
    struct {
        unsigned HFTUN0 :1;
        unsigned HFTUN1 :1;
        unsigned HFTUN2 :1;
        unsigned HFTUN3 :1;
        unsigned HFTUN4 :1;
        unsigned HFTUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x892)));
# 21455 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char OSCFRQ __attribute__((address(0x893)));

__asm("OSCFRQ equ 0893h");


typedef union {
    struct {
        unsigned HFFRQ :3;
    };
    struct {
        unsigned HFFRQ0 :1;
        unsigned HFFRQ1 :1;
        unsigned HFFRQ2 :1;
    };
} OSCFRQbits_t;
extern volatile OSCFRQbits_t OSCFRQbits __attribute__((address(0x893)));
# 21495 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLKRCON __attribute__((address(0x895)));

__asm("CLKRCON equ 0895h");


typedef union {
    struct {
        unsigned CLKRDIV :3;
        unsigned CLKRDC :2;
        unsigned :2;
        unsigned CLKREN :1;
    };
    struct {
        unsigned CLKRDIV0 :1;
        unsigned CLKRDIV1 :1;
        unsigned CLKRDIV2 :1;
        unsigned CLKRDC0 :1;
        unsigned CLKRDC1 :1;
    };
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __attribute__((address(0x895)));
# 21560 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLKRCLK __attribute__((address(0x896)));

__asm("CLKRCLK equ 0896h");


typedef union {
    struct {
        unsigned CLKRCLK :4;
    };
    struct {
        unsigned CLKRCLK0 :1;
        unsigned CLKRCLK1 :1;
        unsigned CLKRCLK2 :1;
        unsigned CLKRCLK3 :1;
    };
} CLKRCLKbits_t;
extern volatile CLKRCLKbits_t CLKRCLKbits __attribute__((address(0x896)));
# 21606 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MD1CON0 __attribute__((address(0x897)));

__asm("MD1CON0 equ 0897h");


typedef union {
    struct {
        unsigned BIT :1;
        unsigned :3;
        unsigned OPOL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MD1BIT :1;
        unsigned :3;
        unsigned MD1OPOL :1;
        unsigned MD1OUT :1;
        unsigned :1;
        unsigned MD1EN :1;
    };
} MD1CON0bits_t;
extern volatile MD1CON0bits_t MD1CON0bits __attribute__((address(0x897)));
# 21674 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MD1CON1 __attribute__((address(0x898)));

__asm("MD1CON1 equ 0898h");


typedef union {
    struct {
        unsigned CLSYNC :1;
        unsigned CLPOL :1;
        unsigned :2;
        unsigned CHSYNC :1;
        unsigned CHPOL :1;
    };
    struct {
        unsigned MD1CLSYNC :1;
        unsigned MD1CLPOL :1;
        unsigned :2;
        unsigned MD1CHSYNC :1;
        unsigned MD1CHPOL :1;
    };
} MD1CON1bits_t;
extern volatile MD1CON1bits_t MD1CON1bits __attribute__((address(0x898)));
# 21740 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MD1SRC __attribute__((address(0x899)));

__asm("MD1SRC equ 0899h");


typedef union {
    struct {
        unsigned MS :5;
    };
    struct {
        unsigned MS0 :1;
        unsigned MS1 :1;
        unsigned MS2 :1;
        unsigned MS3 :1;
        unsigned MS4 :1;
    };
    struct {
        unsigned MD1MS :5;
    };
    struct {
        unsigned MD1MS0 :1;
        unsigned MD1MS1 :1;
        unsigned MD1MS2 :1;
        unsigned MD1MS3 :1;
        unsigned MD1MS4 :1;
    };
} MD1SRCbits_t;
extern volatile MD1SRCbits_t MD1SRCbits __attribute__((address(0x899)));
# 21832 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MD1CARL __attribute__((address(0x89A)));

__asm("MD1CARL equ 089Ah");


typedef union {
    struct {
        unsigned CL :4;
    };
    struct {
        unsigned CL0 :1;
        unsigned CL1 :1;
        unsigned CL2 :1;
        unsigned CL3 :1;
    };
    struct {
        unsigned MD1CL :4;
    };
    struct {
        unsigned MD1CL0 :1;
        unsigned MD1CL1 :1;
        unsigned MD1CL2 :1;
        unsigned MD1CL3 :1;
    };
} MD1CARLbits_t;
extern volatile MD1CARLbits_t MD1CARLbits __attribute__((address(0x89A)));
# 21912 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MD1CARH __attribute__((address(0x89B)));

__asm("MD1CARH equ 089Bh");


typedef union {
    struct {
        unsigned CH :4;
    };
    struct {
        unsigned CH0 :1;
        unsigned CH1 :1;
        unsigned CH2 :1;
        unsigned CH3 :1;
    };
    struct {
        unsigned MD1CH :4;
    };
    struct {
        unsigned MD1CH0 :1;
        unsigned MD1CH1 :1;
        unsigned MD1CH2 :1;
        unsigned MD1CH3 :1;
    };
} MD1CARHbits_t;
extern volatile MD1CARHbits_t MD1CARHbits __attribute__((address(0x89B)));
# 21992 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x90C)));

__asm("FVRCON equ 090Ch");


typedef union {
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
        unsigned TSRNG :1;
        unsigned TSEN :1;
        unsigned FVRRDY :1;
        unsigned FVREN :1;
    };
    struct {
        unsigned ADFVR0 :1;
        unsigned ADFVR1 :1;
        unsigned CDAFVR0 :1;
        unsigned CDAFVR1 :1;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x90C)));
# 22068 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char DAC1CON0 __attribute__((address(0x90E)));

__asm("DAC1CON0 equ 090Eh");


typedef union {
    struct {
        unsigned NSS :1;
        unsigned :1;
        unsigned PSS :2;
        unsigned :1;
        unsigned OE1 :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned DAC1NSS :1;
        unsigned :1;
        unsigned DAC1PSS0 :1;
        unsigned DAC1PSS1 :1;
        unsigned :1;
        unsigned DAC1OE1 :1;
        unsigned :1;
        unsigned DAC1EN :1;
    };
    struct {
        unsigned :2;
        unsigned PSS0 :1;
        unsigned PSS1 :1;
    };
} DAC1CON0bits_t;
extern volatile DAC1CON0bits_t DAC1CON0bits __attribute__((address(0x90E)));
# 22159 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char DAC1CON1 __attribute__((address(0x90F)));

__asm("DAC1CON1 equ 090Fh");


typedef union {
    struct {
        unsigned DAC1R :5;
    };
    struct {
        unsigned DAC1R0 :1;
        unsigned DAC1R1 :1;
        unsigned DAC1R2 :1;
        unsigned DAC1R3 :1;
        unsigned DAC1R4 :1;
    };
} DAC1CON1bits_t;
extern volatile DAC1CON1bits_t DAC1CON1bits __attribute__((address(0x90F)));
# 22211 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ZCDCON __attribute__((address(0x91F)));

__asm("ZCDCON equ 091Fh");


typedef union {
    struct {
        unsigned ZCDINTN :1;
        unsigned ZCDINTP :1;
        unsigned :2;
        unsigned ZCDPOL :1;
        unsigned ZCDOUT :1;
        unsigned :1;
        unsigned ZCDSEN :1;
    };
} ZCDCONbits_t;
extern volatile ZCDCONbits_t ZCDCONbits __attribute__((address(0x91F)));
# 22257 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x98F)));

__asm("CMOUT equ 098Fh");


extern volatile unsigned char CMSTAT __attribute__((address(0x98F)));

__asm("CMSTAT equ 098Fh");


typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
    };
    struct {
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x98F)));
# 22300 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
    };
    struct {
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
} CMSTATbits_t;
extern volatile CMSTATbits_t CMSTATbits __attribute__((address(0x98F)));
# 22335 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x990)));

__asm("CM1CON0 equ 0990h");


typedef union {
    struct {
        unsigned SYNC :1;
        unsigned HYS :1;
        unsigned :2;
        unsigned POL :1;
        unsigned :1;
        unsigned OUT :1;
        unsigned EN :1;
    };
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned :2;
        unsigned C1POL :1;
        unsigned :1;
        unsigned C1OUT :1;
        unsigned C1EN :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x990)));
# 22415 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x991)));

__asm("CM1CON1 equ 0991h");


typedef union {
    struct {
        unsigned INTN :1;
        unsigned INTP :1;
    };
    struct {
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x991)));
# 22455 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM1NCH __attribute__((address(0x992)));

__asm("CM1NCH equ 0992h");


typedef union {
    struct {
        unsigned NCH :3;
    };
    struct {
        unsigned NCH0 :1;
        unsigned NCH1 :1;
        unsigned NCH2 :1;
    };
    struct {
        unsigned C1NCH0 :1;
        unsigned C1NCH1 :1;
        unsigned C1NCH2 :1;
    };
} CM1NCHbits_t;
extern volatile CM1NCHbits_t CM1NCHbits __attribute__((address(0x992)));
# 22515 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM1PCH __attribute__((address(0x993)));

__asm("CM1PCH equ 0993h");


typedef union {
    struct {
        unsigned PCH :3;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
        unsigned PCH2 :1;
    };
    struct {
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
        unsigned C1PCH2 :1;
    };
} CM1PCHbits_t;
extern volatile CM1PCHbits_t CM1PCHbits __attribute__((address(0x993)));
# 22575 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x994)));

__asm("CM2CON0 equ 0994h");


typedef union {
    struct {
        unsigned SYNC :1;
        unsigned HYS :1;
        unsigned :2;
        unsigned POL :1;
        unsigned :1;
        unsigned OUT :1;
        unsigned EN :1;
    };
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned :2;
        unsigned C2POL :1;
        unsigned :1;
        unsigned C2OUT :1;
        unsigned C2EN :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x994)));
# 22655 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x995)));

__asm("CM2CON1 equ 0995h");


typedef union {
    struct {
        unsigned INTN :1;
        unsigned INTP :1;
    };
    struct {
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x995)));
# 22695 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM2NCH __attribute__((address(0x996)));

__asm("CM2NCH equ 0996h");


typedef union {
    struct {
        unsigned NCH :3;
    };
    struct {
        unsigned NCH0 :1;
        unsigned NCH1 :1;
        unsigned NCH2 :1;
    };
    struct {
        unsigned C2NCH0 :1;
        unsigned C2NCH1 :1;
        unsigned C2NCH2 :1;
    };
} CM2NCHbits_t;
extern volatile CM2NCHbits_t CM2NCHbits __attribute__((address(0x996)));
# 22755 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CM2PCH __attribute__((address(0x997)));

__asm("CM2PCH equ 0997h");


typedef union {
    struct {
        unsigned PCH :3;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
        unsigned PCH2 :1;
    };
    struct {
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
        unsigned C2PCH2 :1;
    };
} CM2PCHbits_t;
extern volatile CM2PCHbits_t CM2PCHbits __attribute__((address(0x997)));
# 22815 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLCDATA __attribute__((address(0x1E0F)));

__asm("CLCDATA equ 01E0Fh");


typedef union {
    struct {
        unsigned MLC1OUT :1;
        unsigned MLC2OUT :1;
        unsigned MLC3OUT :1;
        unsigned MLC4OUT :1;
    };
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __attribute__((address(0x1E0F)));
# 22853 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1CON __attribute__((address(0x1E10)));

__asm("CLC1CON equ 01E10h");


typedef union {
    struct {
        unsigned LC1MODE :3;
        unsigned LC1INTN :1;
        unsigned LC1INTP :1;
        unsigned LC1OUT :1;
        unsigned :1;
        unsigned LC1EN :1;
    };
    struct {
        unsigned LC1MODE0 :1;
        unsigned LC1MODE1 :1;
        unsigned LC1MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC1CONbits_t;
extern volatile CLC1CONbits_t CLC1CONbits __attribute__((address(0x1E10)));
# 22971 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1POL __attribute__((address(0x1E11)));

__asm("CLC1POL equ 01E11h");


typedef union {
    struct {
        unsigned LC1G1POL :1;
        unsigned LC1G2POL :1;
        unsigned LC1G3POL :1;
        unsigned LC1G4POL :1;
        unsigned :3;
        unsigned LC1POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC1POLbits_t;
extern volatile CLC1POLbits_t CLC1POLbits __attribute__((address(0x1E11)));
# 23049 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1SEL0 __attribute__((address(0x1E12)));

__asm("CLC1SEL0 equ 01E12h");


typedef union {
    struct {
        unsigned LC1D1S0 :1;
        unsigned LC1D1S1 :1;
        unsigned LC1D1S2 :1;
        unsigned LC1D1S3 :1;
        unsigned LC1D1S4 :1;
        unsigned LC1D1S5 :1;
    };
    struct {
        unsigned LC1D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC1SEL0bits_t;
extern volatile CLC1SEL0bits_t CLC1SEL0bits __attribute__((address(0x1E12)));
# 23153 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1SEL1 __attribute__((address(0x1E13)));

__asm("CLC1SEL1 equ 01E13h");


typedef union {
    struct {
        unsigned LC1D2S0 :1;
        unsigned LC1D2S1 :1;
        unsigned LC1D2S2 :1;
        unsigned LC1D2S3 :1;
        unsigned LC1D2S4 :1;
        unsigned LC1D2S5 :1;
    };
    struct {
        unsigned LC1D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC1SEL1bits_t;
extern volatile CLC1SEL1bits_t CLC1SEL1bits __attribute__((address(0x1E13)));
# 23257 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1SEL2 __attribute__((address(0x1E14)));

__asm("CLC1SEL2 equ 01E14h");


typedef union {
    struct {
        unsigned LC1D3S0 :1;
        unsigned LC1D3S1 :1;
        unsigned LC1D3S2 :1;
        unsigned LC1D3S3 :1;
        unsigned LC1D3S4 :1;
        unsigned LC1D3S5 :1;
    };
    struct {
        unsigned LC1D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC1SEL2bits_t;
extern volatile CLC1SEL2bits_t CLC1SEL2bits __attribute__((address(0x1E14)));
# 23361 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1SEL3 __attribute__((address(0x1E15)));

__asm("CLC1SEL3 equ 01E15h");


typedef union {
    struct {
        unsigned LC1D4S0 :1;
        unsigned LC1D4S1 :1;
        unsigned LC1D4S2 :1;
        unsigned LC1D4S3 :1;
        unsigned LC1D4S4 :1;
        unsigned LC1D4S5 :1;
    };
    struct {
        unsigned LC1D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC1SEL3bits_t;
extern volatile CLC1SEL3bits_t CLC1SEL3bits __attribute__((address(0x1E15)));
# 23465 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1GLS0 __attribute__((address(0x1E16)));

__asm("CLC1GLS0 equ 01E16h");


typedef union {
    struct {
        unsigned LC1G1D1N :1;
        unsigned LC1G1D1T :1;
        unsigned LC1G1D2N :1;
        unsigned LC1G1D2T :1;
        unsigned LC1G1D3N :1;
        unsigned LC1G1D3T :1;
        unsigned LC1G1D4N :1;
        unsigned LC1G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS0bits_t;
extern volatile CLC1GLS0bits_t CLC1GLS0bits __attribute__((address(0x1E16)));
# 23577 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1GLS1 __attribute__((address(0x1E17)));

__asm("CLC1GLS1 equ 01E17h");


typedef union {
    struct {
        unsigned LC1G2D1N :1;
        unsigned LC1G2D1T :1;
        unsigned LC1G2D2N :1;
        unsigned LC1G2D2T :1;
        unsigned LC1G2D3N :1;
        unsigned LC1G2D3T :1;
        unsigned LC1G2D4N :1;
        unsigned LC1G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS1bits_t;
extern volatile CLC1GLS1bits_t CLC1GLS1bits __attribute__((address(0x1E17)));
# 23689 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1GLS2 __attribute__((address(0x1E18)));

__asm("CLC1GLS2 equ 01E18h");


typedef union {
    struct {
        unsigned LC1G3D1N :1;
        unsigned LC1G3D1T :1;
        unsigned LC1G3D2N :1;
        unsigned LC1G3D2T :1;
        unsigned LC1G3D3N :1;
        unsigned LC1G3D3T :1;
        unsigned LC1G3D4N :1;
        unsigned LC1G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS2bits_t;
extern volatile CLC1GLS2bits_t CLC1GLS2bits __attribute__((address(0x1E18)));
# 23801 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC1GLS3 __attribute__((address(0x1E19)));

__asm("CLC1GLS3 equ 01E19h");


typedef union {
    struct {
        unsigned LC1G4D1N :1;
        unsigned LC1G4D1T :1;
        unsigned LC1G4D2N :1;
        unsigned LC1G4D2T :1;
        unsigned LC1G4D3N :1;
        unsigned LC1G4D3T :1;
        unsigned LC1G4D4N :1;
        unsigned LC1G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC1GLS3bits_t;
extern volatile CLC1GLS3bits_t CLC1GLS3bits __attribute__((address(0x1E19)));
# 23913 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2CON __attribute__((address(0x1E1A)));

__asm("CLC2CON equ 01E1Ah");


typedef union {
    struct {
        unsigned LC2MODE :3;
        unsigned LC2INTN :1;
        unsigned LC2INTP :1;
        unsigned LC2OUT :1;
        unsigned :1;
        unsigned LC2EN :1;
    };
    struct {
        unsigned LC2MODE0 :1;
        unsigned LC2MODE1 :1;
        unsigned LC2MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC2CONbits_t;
extern volatile CLC2CONbits_t CLC2CONbits __attribute__((address(0x1E1A)));
# 24031 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2POL __attribute__((address(0x1E1B)));

__asm("CLC2POL equ 01E1Bh");


typedef union {
    struct {
        unsigned LC2G1POL :1;
        unsigned LC2G2POL :1;
        unsigned LC2G3POL :1;
        unsigned LC2G4POL :1;
        unsigned :3;
        unsigned LC2POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC2POLbits_t;
extern volatile CLC2POLbits_t CLC2POLbits __attribute__((address(0x1E1B)));
# 24109 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2SEL0 __attribute__((address(0x1E1C)));

__asm("CLC2SEL0 equ 01E1Ch");


typedef union {
    struct {
        unsigned LC2D1S0 :1;
        unsigned LC2D1S1 :1;
        unsigned LC2D1S2 :1;
        unsigned LC2D1S3 :1;
        unsigned LC2D1S4 :1;
        unsigned LC2D1S5 :1;
    };
    struct {
        unsigned LC2D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC2SEL0bits_t;
extern volatile CLC2SEL0bits_t CLC2SEL0bits __attribute__((address(0x1E1C)));
# 24213 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2SEL1 __attribute__((address(0x1E1D)));

__asm("CLC2SEL1 equ 01E1Dh");


typedef union {
    struct {
        unsigned LC2D2S0 :1;
        unsigned LC2D2S1 :1;
        unsigned LC2D2S2 :1;
        unsigned LC2D2S3 :1;
        unsigned LC2D2S4 :1;
        unsigned LC2D2S5 :1;
    };
    struct {
        unsigned LC2D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC2SEL1bits_t;
extern volatile CLC2SEL1bits_t CLC2SEL1bits __attribute__((address(0x1E1D)));
# 24317 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2SEL2 __attribute__((address(0x1E1E)));

__asm("CLC2SEL2 equ 01E1Eh");


typedef union {
    struct {
        unsigned LC2D3S0 :1;
        unsigned LC2D3S1 :1;
        unsigned LC2D3S2 :1;
        unsigned LC2D3S3 :1;
        unsigned LC2D3S4 :1;
        unsigned LC2D3S5 :1;
    };
    struct {
        unsigned LC2D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC2SEL2bits_t;
extern volatile CLC2SEL2bits_t CLC2SEL2bits __attribute__((address(0x1E1E)));
# 24421 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2SEL3 __attribute__((address(0x1E1F)));

__asm("CLC2SEL3 equ 01E1Fh");


typedef union {
    struct {
        unsigned LC2D4S0 :1;
        unsigned LC2D4S1 :1;
        unsigned LC2D4S2 :1;
        unsigned LC2D4S3 :1;
        unsigned LC2D4S4 :1;
        unsigned LC2D4S5 :1;
    };
    struct {
        unsigned LC2D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC2SEL3bits_t;
extern volatile CLC2SEL3bits_t CLC2SEL3bits __attribute__((address(0x1E1F)));
# 24525 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2GLS0 __attribute__((address(0x1E20)));

__asm("CLC2GLS0 equ 01E20h");


typedef union {
    struct {
        unsigned LC2G1D1N :1;
        unsigned LC2G1D1T :1;
        unsigned LC2G1D2N :1;
        unsigned LC2G1D2T :1;
        unsigned LC2G1D3N :1;
        unsigned LC2G1D3T :1;
        unsigned LC2G1D4N :1;
        unsigned LC2G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS0bits_t;
extern volatile CLC2GLS0bits_t CLC2GLS0bits __attribute__((address(0x1E20)));
# 24637 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2GLS1 __attribute__((address(0x1E21)));

__asm("CLC2GLS1 equ 01E21h");


typedef union {
    struct {
        unsigned LC2G2D1N :1;
        unsigned LC2G2D1T :1;
        unsigned LC2G2D2N :1;
        unsigned LC2G2D2T :1;
        unsigned LC2G2D3N :1;
        unsigned LC2G2D3T :1;
        unsigned LC2G2D4N :1;
        unsigned LC2G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS1bits_t;
extern volatile CLC2GLS1bits_t CLC2GLS1bits __attribute__((address(0x1E21)));
# 24749 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2GLS2 __attribute__((address(0x1E22)));

__asm("CLC2GLS2 equ 01E22h");


typedef union {
    struct {
        unsigned LC2G3D1N :1;
        unsigned LC2G3D1T :1;
        unsigned LC2G3D2N :1;
        unsigned LC2G3D2T :1;
        unsigned LC2G3D3N :1;
        unsigned LC2G3D3T :1;
        unsigned LC2G3D4N :1;
        unsigned LC2G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS2bits_t;
extern volatile CLC2GLS2bits_t CLC2GLS2bits __attribute__((address(0x1E22)));
# 24861 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC2GLS3 __attribute__((address(0x1E23)));

__asm("CLC2GLS3 equ 01E23h");


typedef union {
    struct {
        unsigned LC2G4D1N :1;
        unsigned LC2G4D1T :1;
        unsigned LC2G4D2N :1;
        unsigned LC2G4D2T :1;
        unsigned LC2G4D3N :1;
        unsigned LC2G4D3T :1;
        unsigned LC2G4D4N :1;
        unsigned LC2G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC2GLS3bits_t;
extern volatile CLC2GLS3bits_t CLC2GLS3bits __attribute__((address(0x1E23)));
# 24973 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3CON __attribute__((address(0x1E24)));

__asm("CLC3CON equ 01E24h");


typedef union {
    struct {
        unsigned LC3MODE :3;
        unsigned LC3INTN :1;
        unsigned LC3INTP :1;
        unsigned LC3OUT :1;
        unsigned :1;
        unsigned LC3EN :1;
    };
    struct {
        unsigned LC3MODE0 :1;
        unsigned LC3MODE1 :1;
        unsigned LC3MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC3CONbits_t;
extern volatile CLC3CONbits_t CLC3CONbits __attribute__((address(0x1E24)));
# 25091 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3POL __attribute__((address(0x1E25)));

__asm("CLC3POL equ 01E25h");


typedef union {
    struct {
        unsigned LC3G1POL :1;
        unsigned LC3G2POL :1;
        unsigned LC3G3POL :1;
        unsigned LC3G4POL :1;
        unsigned :3;
        unsigned LC3POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC3POLbits_t;
extern volatile CLC3POLbits_t CLC3POLbits __attribute__((address(0x1E25)));
# 25169 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3SEL0 __attribute__((address(0x1E26)));

__asm("CLC3SEL0 equ 01E26h");


typedef union {
    struct {
        unsigned LC3D1S0 :1;
        unsigned LC3D1S1 :1;
        unsigned LC3D1S2 :1;
        unsigned LC3D1S3 :1;
        unsigned LC3D1S4 :1;
        unsigned LC3D1S5 :1;
    };
    struct {
        unsigned LC3D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC3SEL0bits_t;
extern volatile CLC3SEL0bits_t CLC3SEL0bits __attribute__((address(0x1E26)));
# 25273 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3SEL1 __attribute__((address(0x1E27)));

__asm("CLC3SEL1 equ 01E27h");


typedef union {
    struct {
        unsigned LC3D2S0 :1;
        unsigned LC3D2S1 :1;
        unsigned LC3D2S2 :1;
        unsigned LC3D2S3 :1;
        unsigned LC3D2S4 :1;
        unsigned LC3D2S5 :1;
    };
    struct {
        unsigned LC3D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC3SEL1bits_t;
extern volatile CLC3SEL1bits_t CLC3SEL1bits __attribute__((address(0x1E27)));
# 25377 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3SEL2 __attribute__((address(0x1E28)));

__asm("CLC3SEL2 equ 01E28h");


typedef union {
    struct {
        unsigned LC3D3S0 :1;
        unsigned LC3D3S1 :1;
        unsigned LC3D3S2 :1;
        unsigned LC3D3S3 :1;
        unsigned LC3D3S4 :1;
        unsigned LC3D3S5 :1;
    };
    struct {
        unsigned LC3D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC3SEL2bits_t;
extern volatile CLC3SEL2bits_t CLC3SEL2bits __attribute__((address(0x1E28)));
# 25481 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3SEL3 __attribute__((address(0x1E29)));

__asm("CLC3SEL3 equ 01E29h");


typedef union {
    struct {
        unsigned LC3D4S0 :1;
        unsigned LC3D4S1 :1;
        unsigned LC3D4S2 :1;
        unsigned LC3D4S3 :1;
        unsigned LC3D4S4 :1;
        unsigned LC3D4S5 :1;
    };
    struct {
        unsigned LC3D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC3SEL3bits_t;
extern volatile CLC3SEL3bits_t CLC3SEL3bits __attribute__((address(0x1E29)));
# 25585 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3GLS0 __attribute__((address(0x1E2A)));

__asm("CLC3GLS0 equ 01E2Ah");


typedef union {
    struct {
        unsigned LC3G1D1N :1;
        unsigned LC3G1D1T :1;
        unsigned LC3G1D2N :1;
        unsigned LC3G1D2T :1;
        unsigned LC3G1D3N :1;
        unsigned LC3G1D3T :1;
        unsigned LC3G1D4N :1;
        unsigned LC3G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS0bits_t;
extern volatile CLC3GLS0bits_t CLC3GLS0bits __attribute__((address(0x1E2A)));
# 25697 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3GLS1 __attribute__((address(0x1E2B)));

__asm("CLC3GLS1 equ 01E2Bh");


typedef union {
    struct {
        unsigned LC3G2D1N :1;
        unsigned LC3G2D1T :1;
        unsigned LC3G2D2N :1;
        unsigned LC3G2D2T :1;
        unsigned LC3G2D3N :1;
        unsigned LC3G2D3T :1;
        unsigned LC3G2D4N :1;
        unsigned LC3G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS1bits_t;
extern volatile CLC3GLS1bits_t CLC3GLS1bits __attribute__((address(0x1E2B)));
# 25809 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3GLS2 __attribute__((address(0x1E2C)));

__asm("CLC3GLS2 equ 01E2Ch");


typedef union {
    struct {
        unsigned LC3G3D1N :1;
        unsigned LC3G3D1T :1;
        unsigned LC3G3D2N :1;
        unsigned LC3G3D2T :1;
        unsigned LC3G3D3N :1;
        unsigned LC3G3D3T :1;
        unsigned LC3G3D4N :1;
        unsigned LC3G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS2bits_t;
extern volatile CLC3GLS2bits_t CLC3GLS2bits __attribute__((address(0x1E2C)));
# 25921 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC3GLS3 __attribute__((address(0x1E2D)));

__asm("CLC3GLS3 equ 01E2Dh");


typedef union {
    struct {
        unsigned LC3G4D1N :1;
        unsigned LC3G4D1T :1;
        unsigned LC3G4D2N :1;
        unsigned LC3G4D2T :1;
        unsigned LC3G4D3N :1;
        unsigned LC3G4D3T :1;
        unsigned LC3G4D4N :1;
        unsigned LC3G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC3GLS3bits_t;
extern volatile CLC3GLS3bits_t CLC3GLS3bits __attribute__((address(0x1E2D)));
# 26033 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4CON __attribute__((address(0x1E2E)));

__asm("CLC4CON equ 01E2Eh");


typedef union {
    struct {
        unsigned LC4MODE :3;
        unsigned LC4INTN :1;
        unsigned LC4INTP :1;
        unsigned LC4OUT :1;
        unsigned :1;
        unsigned LC4EN :1;
    };
    struct {
        unsigned LC4MODE0 :1;
        unsigned LC4MODE1 :1;
        unsigned LC4MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC4CONbits_t;
extern volatile CLC4CONbits_t CLC4CONbits __attribute__((address(0x1E2E)));
# 26151 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4POL __attribute__((address(0x1E2F)));

__asm("CLC4POL equ 01E2Fh");


typedef union {
    struct {
        unsigned LC4G1POL :1;
        unsigned LC4G2POL :1;
        unsigned LC4G3POL :1;
        unsigned LC4G4POL :1;
        unsigned :3;
        unsigned LC4POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC4POLbits_t;
extern volatile CLC4POLbits_t CLC4POLbits __attribute__((address(0x1E2F)));
# 26229 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4SEL0 __attribute__((address(0x1E30)));

__asm("CLC4SEL0 equ 01E30h");


typedef union {
    struct {
        unsigned LC4D1S0 :1;
        unsigned LC4D1S1 :1;
        unsigned LC4D1S2 :1;
        unsigned LC4D1S3 :1;
        unsigned LC4D1S4 :1;
        unsigned LC4D1S5 :1;
    };
    struct {
        unsigned LC4D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC4SEL0bits_t;
extern volatile CLC4SEL0bits_t CLC4SEL0bits __attribute__((address(0x1E30)));
# 26333 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4SEL1 __attribute__((address(0x1E31)));

__asm("CLC4SEL1 equ 01E31h");


typedef union {
    struct {
        unsigned LC4D2S0 :1;
        unsigned LC4D2S1 :1;
        unsigned LC4D2S2 :1;
        unsigned LC4D2S3 :1;
        unsigned LC4D2S4 :1;
        unsigned LC4D2S5 :1;
    };
    struct {
        unsigned LC4D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC4SEL1bits_t;
extern volatile CLC4SEL1bits_t CLC4SEL1bits __attribute__((address(0x1E31)));
# 26437 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4SEL2 __attribute__((address(0x1E32)));

__asm("CLC4SEL2 equ 01E32h");


typedef union {
    struct {
        unsigned LC4D3S0 :1;
        unsigned LC4D3S1 :1;
        unsigned LC4D3S2 :1;
        unsigned LC4D3S3 :1;
        unsigned LC4D3S4 :1;
        unsigned LC4D3S5 :1;
    };
    struct {
        unsigned LC4D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC4SEL2bits_t;
extern volatile CLC4SEL2bits_t CLC4SEL2bits __attribute__((address(0x1E32)));
# 26541 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4SEL3 __attribute__((address(0x1E33)));

__asm("CLC4SEL3 equ 01E33h");


typedef union {
    struct {
        unsigned LC4D4S0 :1;
        unsigned LC4D4S1 :1;
        unsigned LC4D4S2 :1;
        unsigned LC4D4S3 :1;
        unsigned LC4D4S4 :1;
        unsigned LC4D4S5 :1;
    };
    struct {
        unsigned LC4D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC4SEL3bits_t;
extern volatile CLC4SEL3bits_t CLC4SEL3bits __attribute__((address(0x1E33)));
# 26645 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4GLS0 __attribute__((address(0x1E34)));

__asm("CLC4GLS0 equ 01E34h");


typedef union {
    struct {
        unsigned LC4G1D1N :1;
        unsigned LC4G1D1T :1;
        unsigned LC4G1D2N :1;
        unsigned LC4G1D2T :1;
        unsigned LC4G1D3N :1;
        unsigned LC4G1D3T :1;
        unsigned LC4G1D4N :1;
        unsigned LC4G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS0bits_t;
extern volatile CLC4GLS0bits_t CLC4GLS0bits __attribute__((address(0x1E34)));
# 26757 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4GLS1 __attribute__((address(0x1E35)));

__asm("CLC4GLS1 equ 01E35h");


typedef union {
    struct {
        unsigned LC4G2D1N :1;
        unsigned LC4G2D1T :1;
        unsigned LC4G2D2N :1;
        unsigned LC4G2D2T :1;
        unsigned LC4G2D3N :1;
        unsigned LC4G2D3T :1;
        unsigned LC4G2D4N :1;
        unsigned LC4G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS1bits_t;
extern volatile CLC4GLS1bits_t CLC4GLS1bits __attribute__((address(0x1E35)));
# 26869 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4GLS2 __attribute__((address(0x1E36)));

__asm("CLC4GLS2 equ 01E36h");


typedef union {
    struct {
        unsigned LC4G3D1N :1;
        unsigned LC4G3D1T :1;
        unsigned LC4G3D2N :1;
        unsigned LC4G3D2T :1;
        unsigned LC4G3D3N :1;
        unsigned LC4G3D3T :1;
        unsigned LC4G3D4N :1;
        unsigned LC4G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS2bits_t;
extern volatile CLC4GLS2bits_t CLC4GLS2bits __attribute__((address(0x1E36)));
# 26981 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLC4GLS3 __attribute__((address(0x1E37)));

__asm("CLC4GLS3 equ 01E37h");


typedef union {
    struct {
        unsigned LC4G4D1N :1;
        unsigned LC4G4D1T :1;
        unsigned LC4G4D2N :1;
        unsigned LC4G4D2T :1;
        unsigned LC4G4D3N :1;
        unsigned LC4G4D3T :1;
        unsigned LC4G4D4N :1;
        unsigned LC4G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC4GLS3bits_t;
extern volatile CLC4GLS3bits_t CLC4GLS3bits __attribute__((address(0x1E37)));
# 27093 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PPSLOCK __attribute__((address(0x1E8F)));

__asm("PPSLOCK equ 01E8Fh");


typedef union {
    struct {
        unsigned PPSLOCKED :1;
    };
} PPSLOCKbits_t;
extern volatile PPSLOCKbits_t PPSLOCKbits __attribute__((address(0x1E8F)));
# 27113 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char INTPPS __attribute__((address(0x1E90)));

__asm("INTPPS equ 01E90h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :1;
    };
    struct {
        unsigned INTPPS :4;
    };
    struct {
        unsigned INTPPS0 :1;
        unsigned INTPPS1 :1;
        unsigned INTPPS2 :1;
        unsigned INTPPS3 :1;
    };
} INTPPSbits_t;
extern volatile INTPPSbits_t INTPPSbits __attribute__((address(0x1E90)));
# 27173 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T0CKIPPS __attribute__((address(0x1E91)));

__asm("T0CKIPPS equ 01E91h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :1;
    };
    struct {
        unsigned T0CKIPPS :4;
    };
    struct {
        unsigned T0CKIPPS0 :1;
        unsigned T0CKIPPS1 :1;
        unsigned T0CKIPPS2 :1;
        unsigned T0CKIPPS3 :1;
    };
} T0CKIPPSbits_t;
extern volatile T0CKIPPSbits_t T0CKIPPSbits __attribute__((address(0x1E91)));
# 27233 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T1CKIPPS __attribute__((address(0x1E92)));

__asm("T1CKIPPS equ 01E92h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T1CKIPPS :5;
    };
    struct {
        unsigned T1CKIPPS0 :1;
        unsigned T1CKIPPS1 :1;
        unsigned T1CKIPPS2 :1;
        unsigned T1CKIPPS3 :1;
        unsigned T1CKIPPS4 :1;
    };
} T1CKIPPSbits_t;
extern volatile T1CKIPPSbits_t T1CKIPPSbits __attribute__((address(0x1E92)));
# 27299 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T1GPPS __attribute__((address(0x1E93)));

__asm("T1GPPS equ 01E93h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T1GPPS :5;
    };
    struct {
        unsigned T1GPPS0 :1;
        unsigned T1GPPS1 :1;
        unsigned T1GPPS2 :1;
        unsigned T1GPPS3 :1;
        unsigned T1GPPS4 :1;
    };
} T1GPPSbits_t;
extern volatile T1GPPSbits_t T1GPPSbits __attribute__((address(0x1E93)));
# 27365 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T3CKIPPS __attribute__((address(0x1E94)));

__asm("T3CKIPPS equ 01E94h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T3CKIPPS :5;
    };
    struct {
        unsigned T3CKIPPS0 :1;
        unsigned T3CKIPPS1 :1;
        unsigned T3CKIPPS2 :1;
        unsigned T3CKIPPS3 :1;
        unsigned T3CKIPPS4 :1;
    };
} T3CKIPPSbits_t;
extern volatile T3CKIPPSbits_t T3CKIPPSbits __attribute__((address(0x1E94)));
# 27431 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T3GPPS __attribute__((address(0x1E95)));

__asm("T3GPPS equ 01E95h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T3GPPS :5;
    };
    struct {
        unsigned T3GPPS0 :1;
        unsigned T3GPPS1 :1;
        unsigned T3GPPS2 :1;
        unsigned T3GPPS3 :1;
        unsigned T3GPPS4 :1;
    };
} T3GPPSbits_t;
extern volatile T3GPPSbits_t T3GPPSbits __attribute__((address(0x1E95)));
# 27497 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T5CKIPPS __attribute__((address(0x1E96)));

__asm("T5CKIPPS equ 01E96h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T5CKIPPS :5;
    };
    struct {
        unsigned T5CKIPPS0 :1;
        unsigned T5CKIPPS1 :1;
        unsigned T5CKIPPS2 :1;
        unsigned T5CKIPPS3 :1;
        unsigned T5CKIPPS4 :1;
    };
} T5CKIPPSbits_t;
extern volatile T5CKIPPSbits_t T5CKIPPSbits __attribute__((address(0x1E96)));
# 27563 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T5GPPS __attribute__((address(0x1E97)));

__asm("T5GPPS equ 01E97h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T5GPPS :5;
    };
    struct {
        unsigned T5GPPS0 :1;
        unsigned T5GPPS1 :1;
        unsigned T5GPPS2 :1;
        unsigned T5GPPS3 :1;
        unsigned T5GPPS4 :1;
    };
} T5GPPSbits_t;
extern volatile T5GPPSbits_t T5GPPSbits __attribute__((address(0x1E97)));
# 27629 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T2INPPS __attribute__((address(0x1E9C)));

__asm("T2INPPS equ 01E9Ch");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T2INPPS :5;
    };
    struct {
        unsigned T2INPPS0 :1;
        unsigned T2INPPS1 :1;
        unsigned T2INPPS2 :1;
        unsigned T2INPPS3 :1;
        unsigned T2INPPS4 :1;
    };
} T2INPPSbits_t;
extern volatile T2INPPSbits_t T2INPPSbits __attribute__((address(0x1E9C)));
# 27695 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T4INPPS __attribute__((address(0x1E9D)));

__asm("T4INPPS equ 01E9Dh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T4INPPS :5;
    };
    struct {
        unsigned T4INPPS0 :1;
        unsigned T4INPPS1 :1;
        unsigned T4INPPS2 :1;
        unsigned T4INPPS3 :1;
        unsigned T4INPPS4 :1;
    };
} T4INPPSbits_t;
extern volatile T4INPPSbits_t T4INPPSbits __attribute__((address(0x1E9D)));
# 27761 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char T6INPPS __attribute__((address(0x1E9E)));

__asm("T6INPPS equ 01E9Eh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T6INPPS :5;
    };
    struct {
        unsigned T6INPPS0 :1;
        unsigned T6INPPS1 :1;
        unsigned T6INPPS2 :1;
        unsigned T6INPPS3 :1;
        unsigned T6INPPS4 :1;
    };
} T6INPPSbits_t;
extern volatile T6INPPSbits_t T6INPPSbits __attribute__((address(0x1E9E)));
# 27827 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP1PPS __attribute__((address(0x1EA1)));

__asm("CCP1PPS equ 01EA1h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CCP1PPS :5;
    };
    struct {
        unsigned CCP1PPS0 :1;
        unsigned CCP1PPS1 :1;
        unsigned CCP1PPS2 :1;
        unsigned CCP1PPS3 :1;
        unsigned CCP1PPS4 :1;
    };
} CCP1PPSbits_t;
extern volatile CCP1PPSbits_t CCP1PPSbits __attribute__((address(0x1EA1)));
# 27893 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP2PPS __attribute__((address(0x1EA2)));

__asm("CCP2PPS equ 01EA2h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CCP2PPS :5;
    };
    struct {
        unsigned CCP2PPS0 :1;
        unsigned CCP2PPS1 :1;
        unsigned CCP2PPS2 :1;
        unsigned CCP2PPS3 :1;
        unsigned CCP2PPS4 :1;
    };
} CCP2PPSbits_t;
extern volatile CCP2PPSbits_t CCP2PPSbits __attribute__((address(0x1EA2)));
# 27959 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP3PPS __attribute__((address(0x1EA3)));

__asm("CCP3PPS equ 01EA3h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CCP3PPS :5;
    };
    struct {
        unsigned CCP3PPS0 :1;
        unsigned CCP3PPS1 :1;
        unsigned CCP3PPS2 :1;
        unsigned CCP3PPS3 :1;
        unsigned CCP3PPS4 :1;
    };
} CCP3PPSbits_t;
extern volatile CCP3PPSbits_t CCP3PPSbits __attribute__((address(0x1EA3)));
# 28025 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CCP4PPS __attribute__((address(0x1EA4)));

__asm("CCP4PPS equ 01EA4h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CCP4PPS :5;
    };
    struct {
        unsigned CCP4PPS0 :1;
        unsigned CCP4PPS1 :1;
        unsigned CCP4PPS2 :1;
        unsigned CCP4PPS3 :1;
        unsigned CCP4PPS4 :1;
    };
} CCP4PPSbits_t;
extern volatile CCP4PPSbits_t CCP4PPSbits __attribute__((address(0x1EA4)));
# 28091 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1WINPPS __attribute__((address(0x1EA9)));

__asm("SMT1WINPPS equ 01EA9h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SMT1WINPPS :5;
    };
    struct {
        unsigned SMT1WINPPS0 :1;
        unsigned SMT1WINPPS1 :1;
        unsigned SMT1WINPPS2 :1;
        unsigned SMT1WINPPS3 :1;
        unsigned SMT1WINPPS4 :1;
    };
} SMT1WINPPSbits_t;
extern volatile SMT1WINPPSbits_t SMT1WINPPSbits __attribute__((address(0x1EA9)));
# 28157 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SMT1SIGPPS __attribute__((address(0x1EAA)));

__asm("SMT1SIGPPS equ 01EAAh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SMT1SIGPPS :5;
    };
    struct {
        unsigned SMT1SIGPPS0 :1;
        unsigned SMT1SIGPPS1 :1;
        unsigned SMT1SIGPPS2 :1;
        unsigned SMT1SIGPPS3 :1;
        unsigned SMT1SIGPPS4 :1;
    };
} SMT1SIGPPSbits_t;
extern volatile SMT1SIGPPSbits_t SMT1SIGPPSbits __attribute__((address(0x1EAA)));
# 28223 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG1PPS __attribute__((address(0x1EB1)));

__asm("CWG1PPS equ 01EB1h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWG1PPS :5;
    };
    struct {
        unsigned CWG1PPS0 :1;
        unsigned CWG1PPS1 :1;
        unsigned CWG1PPS2 :1;
        unsigned CWG1PPS3 :1;
        unsigned CWG1PPS4 :1;
    };
} CWG1PPSbits_t;
extern volatile CWG1PPSbits_t CWG1PPSbits __attribute__((address(0x1EB1)));
# 28289 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CWG2PPS __attribute__((address(0x1EB2)));

__asm("CWG2PPS equ 01EB2h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWG2PPS :5;
    };
    struct {
        unsigned CWG2PPS0 :1;
        unsigned CWG2PPS1 :1;
        unsigned CWG2PPS2 :1;
        unsigned CWG2PPS3 :1;
        unsigned CWG2PPS4 :1;
    };
} CWG2PPSbits_t;
extern volatile CWG2PPSbits_t CWG2PPSbits __attribute__((address(0x1EB2)));
# 28355 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MDCARLPPS __attribute__((address(0x1EB8)));

__asm("MDCARLPPS equ 01EB8h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDCARLPPS :5;
    };
    struct {
        unsigned MDCARLPPS0 :1;
        unsigned MDCARLPPS1 :1;
        unsigned MDCARLPPS2 :1;
        unsigned MDCARLPPS3 :1;
        unsigned MDCARLPPS4 :1;
    };
} MDCARLPPSbits_t;
extern volatile MDCARLPPSbits_t MDCARLPPSbits __attribute__((address(0x1EB8)));
# 28421 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MDCARHPPS __attribute__((address(0x1EB9)));

__asm("MDCARHPPS equ 01EB9h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDCARHPPS :5;
    };
    struct {
        unsigned MDCARHPPS0 :1;
        unsigned MDCARHPPS1 :1;
        unsigned MDCARHPPS2 :1;
        unsigned MDCARHPPS3 :1;
        unsigned MDCARHPPS4 :1;
    };
} MDCARHPPSbits_t;
extern volatile MDCARHPPSbits_t MDCARHPPSbits __attribute__((address(0x1EB9)));
# 28487 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char MDSRCPPS __attribute__((address(0x1EBA)));

__asm("MDSRCPPS equ 01EBAh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDSRCPPS :5;
    };
    struct {
        unsigned MDSRCPPS0 :1;
        unsigned MDSRCPPS1 :1;
        unsigned MDSRCPPS2 :1;
        unsigned MDSRCPPS3 :1;
        unsigned MDSRCPPS4 :1;
    };
} MDSRCPPSbits_t;
extern volatile MDSRCPPSbits_t MDSRCPPSbits __attribute__((address(0x1EBA)));
# 28553 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLCIN0PPS __attribute__((address(0x1EBB)));

__asm("CLCIN0PPS equ 01EBBh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN0PPS :5;
    };
    struct {
        unsigned CLCIN0PPS0 :1;
        unsigned CLCIN0PPS1 :1;
        unsigned CLCIN0PPS2 :1;
        unsigned CLCIN0PPS3 :1;
        unsigned CLCIN0PPS4 :1;
    };
} CLCIN0PPSbits_t;
extern volatile CLCIN0PPSbits_t CLCIN0PPSbits __attribute__((address(0x1EBB)));
# 28619 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLCIN1PPS __attribute__((address(0x1EBC)));

__asm("CLCIN1PPS equ 01EBCh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN1PPS :5;
    };
    struct {
        unsigned CLCIN1PPS0 :1;
        unsigned CLCIN1PPS1 :1;
        unsigned CLCIN1PPS2 :1;
        unsigned CLCIN1PPS3 :1;
        unsigned CLCIN1PPS4 :1;
    };
} CLCIN1PPSbits_t;
extern volatile CLCIN1PPSbits_t CLCIN1PPSbits __attribute__((address(0x1EBC)));
# 28685 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLCIN2PPS __attribute__((address(0x1EBD)));

__asm("CLCIN2PPS equ 01EBDh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN2PPS :5;
    };
    struct {
        unsigned CLCIN2PPS0 :1;
        unsigned CLCIN2PPS1 :1;
        unsigned CLCIN2PPS2 :1;
        unsigned CLCIN2PPS3 :1;
        unsigned CLCIN2PPS4 :1;
    };
} CLCIN2PPSbits_t;
extern volatile CLCIN2PPSbits_t CLCIN2PPSbits __attribute__((address(0x1EBD)));
# 28751 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CLCIN3PPS __attribute__((address(0x1EBE)));

__asm("CLCIN3PPS equ 01EBEh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN3PPS :5;
    };
    struct {
        unsigned CLCIN3PPS0 :1;
        unsigned CLCIN3PPS1 :1;
        unsigned CLCIN3PPS2 :1;
        unsigned CLCIN3PPS3 :1;
        unsigned CLCIN3PPS4 :1;
    };
} CLCIN3PPSbits_t;
extern volatile CLCIN3PPSbits_t CLCIN3PPSbits __attribute__((address(0x1EBE)));
# 28817 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ADACTPPS __attribute__((address(0x1EC3)));

__asm("ADACTPPS equ 01EC3h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned ADACTPPS :5;
    };
    struct {
        unsigned ADACTPPS0 :1;
        unsigned ADACTPPS1 :1;
        unsigned ADACTPPS2 :1;
        unsigned ADACTPPS3 :1;
        unsigned ADACTPPS4 :1;
    };
} ADACTPPSbits_t;
extern volatile ADACTPPSbits_t ADACTPPSbits __attribute__((address(0x1EC3)));
# 28883 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1CLKPPS __attribute__((address(0x1EC5)));

__asm("SSP1CLKPPS equ 01EC5h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SSP1CLKPPS :5;
    };
    struct {
        unsigned SSP1CLKPPS0 :1;
        unsigned SSP1CLKPPS1 :1;
        unsigned SSP1CLKPPS2 :1;
        unsigned SSP1CLKPPS3 :1;
        unsigned SSP1CLKPPS4 :1;
    };
} SSP1CLKPPSbits_t;
extern volatile SSP1CLKPPSbits_t SSP1CLKPPSbits __attribute__((address(0x1EC5)));
# 28949 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1DATPPS __attribute__((address(0x1EC6)));

__asm("SSP1DATPPS equ 01EC6h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SSP1DATPPS :5;
    };
    struct {
        unsigned SSP1DATPPS0 :1;
        unsigned SSP1DATPPS1 :1;
        unsigned SSP1DATPPS2 :1;
        unsigned SSP1DATPPS3 :1;
        unsigned SSP1DATPPS4 :1;
    };
} SSP1DATPPSbits_t;
extern volatile SSP1DATPPSbits_t SSP1DATPPSbits __attribute__((address(0x1EC6)));
# 29015 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP1SSPPS __attribute__((address(0x1EC7)));

__asm("SSP1SSPPS equ 01EC7h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SSP1SSPPS :5;
    };
    struct {
        unsigned SSP1SSPPS0 :1;
        unsigned SSP1SSPPS1 :1;
        unsigned SSP1SSPPS2 :1;
        unsigned SSP1SSPPS3 :1;
        unsigned SSP1SSPPS4 :1;
    };
} SSP1SSPPSbits_t;
extern volatile SSP1SSPPSbits_t SSP1SSPPSbits __attribute__((address(0x1EC7)));
# 29081 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2CLKPPS __attribute__((address(0x1EC8)));

__asm("SSP2CLKPPS equ 01EC8h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SSP2CLKPPS :5;
    };
    struct {
        unsigned SSP2CLKPPS0 :1;
        unsigned SSP2CLKPPS1 :1;
        unsigned SSP2CLKPPS2 :1;
        unsigned SSP2CLKPPS3 :1;
        unsigned SSP2CLKPPS4 :1;
    };
} SSP2CLKPPSbits_t;
extern volatile SSP2CLKPPSbits_t SSP2CLKPPSbits __attribute__((address(0x1EC8)));
# 29147 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2DATPPS __attribute__((address(0x1EC9)));

__asm("SSP2DATPPS equ 01EC9h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SSP2DATPPS :5;
    };
    struct {
        unsigned SSP2DATPPS0 :1;
        unsigned SSP2DATPPS1 :1;
        unsigned SSP2DATPPS2 :1;
        unsigned SSP2DATPPS3 :1;
        unsigned SSP2DATPPS4 :1;
    };
} SSP2DATPPSbits_t;
extern volatile SSP2DATPPSbits_t SSP2DATPPSbits __attribute__((address(0x1EC9)));
# 29213 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SSP2SSPPS __attribute__((address(0x1ECA)));

__asm("SSP2SSPPS equ 01ECAh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SSP2SSPPS :5;
    };
    struct {
        unsigned SSP2SSPPS0 :1;
        unsigned SSP2SSPPS1 :1;
        unsigned SSP2SSPPS2 :1;
        unsigned SSP2SSPPS3 :1;
        unsigned SSP2SSPPS4 :1;
    };
} SSP2SSPPSbits_t;
extern volatile SSP2SSPPSbits_t SSP2SSPPSbits __attribute__((address(0x1ECA)));
# 29279 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RX1PPS __attribute__((address(0x1ECB)));

__asm("RX1PPS equ 01ECBh");


extern volatile unsigned char RX1DTPPS __attribute__((address(0x1ECB)));

__asm("RX1DTPPS equ 01ECBh");

extern volatile unsigned char RXPPS __attribute__((address(0x1ECB)));

__asm("RXPPS equ 01ECBh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned RX1DTPPS :5;
    };
    struct {
        unsigned RX1DTPPS0 :1;
        unsigned RX1DTPPS1 :1;
        unsigned RX1DTPPS2 :1;
        unsigned RX1DTPPS3 :1;
        unsigned RX1DTPPS4 :1;
    };
} RX1PPSbits_t;
extern volatile RX1PPSbits_t RX1PPSbits __attribute__((address(0x1ECB)));
# 29352 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned RX1DTPPS :5;
    };
    struct {
        unsigned RX1DTPPS0 :1;
        unsigned RX1DTPPS1 :1;
        unsigned RX1DTPPS2 :1;
        unsigned RX1DTPPS3 :1;
        unsigned RX1DTPPS4 :1;
    };
} RX1DTPPSbits_t;
extern volatile RX1DTPPSbits_t RX1DTPPSbits __attribute__((address(0x1ECB)));
# 29410 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned RX1DTPPS :5;
    };
    struct {
        unsigned RX1DTPPS0 :1;
        unsigned RX1DTPPS1 :1;
        unsigned RX1DTPPS2 :1;
        unsigned RX1DTPPS3 :1;
        unsigned RX1DTPPS4 :1;
    };
} RXPPSbits_t;
extern volatile RXPPSbits_t RXPPSbits __attribute__((address(0x1ECB)));
# 29471 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char CK1PPS __attribute__((address(0x1ECC)));

__asm("CK1PPS equ 01ECCh");


extern volatile unsigned char TX1CKPPS __attribute__((address(0x1ECC)));

__asm("TX1CKPPS equ 01ECCh");

extern volatile unsigned char CKPPS __attribute__((address(0x1ECC)));

__asm("CKPPS equ 01ECCh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned TX1CKPPS :5;
    };
    struct {
        unsigned TX1CKPPS0 :1;
        unsigned TX1CKPPS1 :1;
        unsigned TX1CKPPS2 :1;
        unsigned TX1CKPPS3 :1;
        unsigned TX1CKPPS4 :1;
    };
} CK1PPSbits_t;
extern volatile CK1PPSbits_t CK1PPSbits __attribute__((address(0x1ECC)));
# 29544 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned TX1CKPPS :5;
    };
    struct {
        unsigned TX1CKPPS0 :1;
        unsigned TX1CKPPS1 :1;
        unsigned TX1CKPPS2 :1;
        unsigned TX1CKPPS3 :1;
        unsigned TX1CKPPS4 :1;
    };
} TX1CKPPSbits_t;
extern volatile TX1CKPPSbits_t TX1CKPPSbits __attribute__((address(0x1ECC)));
# 29602 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned TX1CKPPS :5;
    };
    struct {
        unsigned TX1CKPPS0 :1;
        unsigned TX1CKPPS1 :1;
        unsigned TX1CKPPS2 :1;
        unsigned TX1CKPPS3 :1;
        unsigned TX1CKPPS4 :1;
    };
} CKPPSbits_t;
extern volatile CKPPSbits_t CKPPSbits __attribute__((address(0x1ECC)));
# 29663 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RA0PPS __attribute__((address(0x1F10)));

__asm("RA0PPS equ 01F10h");


typedef union {
    struct {
        unsigned RA0PPS :6;
    };
    struct {
        unsigned RA0PPS0 :1;
        unsigned RA0PPS1 :1;
        unsigned RA0PPS2 :1;
        unsigned RA0PPS3 :1;
        unsigned RA0PPS4 :1;
        unsigned RA0PPS5 :1;
    };
} RA0PPSbits_t;
extern volatile RA0PPSbits_t RA0PPSbits __attribute__((address(0x1F10)));
# 29721 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RA1PPS __attribute__((address(0x1F11)));

__asm("RA1PPS equ 01F11h");


typedef union {
    struct {
        unsigned RA1PPS :6;
    };
    struct {
        unsigned RA1PPS0 :1;
        unsigned RA1PPS1 :1;
        unsigned RA1PPS2 :1;
        unsigned RA1PPS3 :1;
        unsigned RA1PPS4 :1;
        unsigned RA1PPS5 :1;
    };
} RA1PPSbits_t;
extern volatile RA1PPSbits_t RA1PPSbits __attribute__((address(0x1F11)));
# 29779 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RA2PPS __attribute__((address(0x1F12)));

__asm("RA2PPS equ 01F12h");


typedef union {
    struct {
        unsigned RA2PPS :6;
    };
    struct {
        unsigned RA2PPS0 :1;
        unsigned RA2PPS1 :1;
        unsigned RA2PPS2 :1;
        unsigned RA2PPS3 :1;
        unsigned RA2PPS4 :1;
        unsigned RA2PPS5 :1;
    };
} RA2PPSbits_t;
extern volatile RA2PPSbits_t RA2PPSbits __attribute__((address(0x1F12)));
# 29837 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RA4PPS __attribute__((address(0x1F14)));

__asm("RA4PPS equ 01F14h");


typedef union {
    struct {
        unsigned RA4PPS :6;
    };
    struct {
        unsigned RA4PPS0 :1;
        unsigned RA4PPS1 :1;
        unsigned RA4PPS2 :1;
        unsigned RA4PPS3 :1;
        unsigned RA4PPS4 :1;
        unsigned RA4PPS5 :1;
    };
} RA4PPSbits_t;
extern volatile RA4PPSbits_t RA4PPSbits __attribute__((address(0x1F14)));
# 29895 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RA5PPS __attribute__((address(0x1F15)));

__asm("RA5PPS equ 01F15h");


typedef union {
    struct {
        unsigned RA5PPS :6;
    };
    struct {
        unsigned RA5PPS0 :1;
        unsigned RA5PPS1 :1;
        unsigned RA5PPS2 :1;
        unsigned RA5PPS3 :1;
        unsigned RA5PPS4 :1;
        unsigned RA5PPS5 :1;
    };
} RA5PPSbits_t;
extern volatile RA5PPSbits_t RA5PPSbits __attribute__((address(0x1F15)));
# 29953 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RB4PPS __attribute__((address(0x1F1C)));

__asm("RB4PPS equ 01F1Ch");


typedef union {
    struct {
        unsigned RB4PPS :6;
    };
    struct {
        unsigned RB4PPS0 :1;
        unsigned RB4PPS1 :1;
        unsigned RB4PPS2 :1;
        unsigned RB4PPS3 :1;
        unsigned RB4PPS4 :1;
        unsigned RB4PPS5 :1;
    };
} RB4PPSbits_t;
extern volatile RB4PPSbits_t RB4PPSbits __attribute__((address(0x1F1C)));
# 30011 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RB5PPS __attribute__((address(0x1F1D)));

__asm("RB5PPS equ 01F1Dh");


typedef union {
    struct {
        unsigned RB5PPS :6;
    };
    struct {
        unsigned RB5PPS0 :1;
        unsigned RB5PPS1 :1;
        unsigned RB5PPS2 :1;
        unsigned RB5PPS3 :1;
        unsigned RB5PPS4 :1;
        unsigned RB5PPS5 :1;
    };
} RB5PPSbits_t;
extern volatile RB5PPSbits_t RB5PPSbits __attribute__((address(0x1F1D)));
# 30069 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RB6PPS __attribute__((address(0x1F1E)));

__asm("RB6PPS equ 01F1Eh");


typedef union {
    struct {
        unsigned RB6PPS :6;
    };
    struct {
        unsigned RB6PPS0 :1;
        unsigned RB6PPS1 :1;
        unsigned RB6PPS2 :1;
        unsigned RB6PPS3 :1;
        unsigned RB6PPS4 :1;
        unsigned RB6PPS5 :1;
    };
} RB6PPSbits_t;
extern volatile RB6PPSbits_t RB6PPSbits __attribute__((address(0x1F1E)));
# 30127 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RB7PPS __attribute__((address(0x1F1F)));

__asm("RB7PPS equ 01F1Fh");


typedef union {
    struct {
        unsigned RB7PPS :6;
    };
    struct {
        unsigned RB7PPS0 :1;
        unsigned RB7PPS1 :1;
        unsigned RB7PPS2 :1;
        unsigned RB7PPS3 :1;
        unsigned RB7PPS4 :1;
        unsigned RB7PPS5 :1;
    };
} RB7PPSbits_t;
extern volatile RB7PPSbits_t RB7PPSbits __attribute__((address(0x1F1F)));
# 30185 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC0PPS __attribute__((address(0x1F20)));

__asm("RC0PPS equ 01F20h");


typedef union {
    struct {
        unsigned RC0PPS :6;
    };
    struct {
        unsigned RC0PPS0 :1;
        unsigned RC0PPS1 :1;
        unsigned RC0PPS2 :1;
        unsigned RC0PPS3 :1;
        unsigned RC0PPS4 :1;
        unsigned RC0PPS5 :1;
    };
} RC0PPSbits_t;
extern volatile RC0PPSbits_t RC0PPSbits __attribute__((address(0x1F20)));
# 30243 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC1PPS __attribute__((address(0x1F21)));

__asm("RC1PPS equ 01F21h");


typedef union {
    struct {
        unsigned RC1PPS :6;
    };
    struct {
        unsigned RC1PPS0 :1;
        unsigned RC1PPS1 :1;
        unsigned RC1PPS2 :1;
        unsigned RC1PPS3 :1;
        unsigned RC1PPS4 :1;
        unsigned RC1PPS5 :1;
    };
} RC1PPSbits_t;
extern volatile RC1PPSbits_t RC1PPSbits __attribute__((address(0x1F21)));
# 30301 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC2PPS __attribute__((address(0x1F22)));

__asm("RC2PPS equ 01F22h");


typedef union {
    struct {
        unsigned RC2PPS :6;
    };
    struct {
        unsigned RC2PPS0 :1;
        unsigned RC2PPS1 :1;
        unsigned RC2PPS2 :1;
        unsigned RC2PPS3 :1;
        unsigned RC2PPS4 :1;
        unsigned RC2PPS5 :1;
    };
} RC2PPSbits_t;
extern volatile RC2PPSbits_t RC2PPSbits __attribute__((address(0x1F22)));
# 30359 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC3PPS __attribute__((address(0x1F23)));

__asm("RC3PPS equ 01F23h");


typedef union {
    struct {
        unsigned RC3PPS :6;
    };
    struct {
        unsigned RC3PPS0 :1;
        unsigned RC3PPS1 :1;
        unsigned RC3PPS2 :1;
        unsigned RC3PPS3 :1;
        unsigned RC3PPS4 :1;
        unsigned RC3PPS5 :1;
    };
} RC3PPSbits_t;
extern volatile RC3PPSbits_t RC3PPSbits __attribute__((address(0x1F23)));
# 30417 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC4PPS __attribute__((address(0x1F24)));

__asm("RC4PPS equ 01F24h");


typedef union {
    struct {
        unsigned RC4PPS :6;
    };
    struct {
        unsigned RC4PPS0 :1;
        unsigned RC4PPS1 :1;
        unsigned RC4PPS2 :1;
        unsigned RC4PPS3 :1;
        unsigned RC4PPS4 :1;
        unsigned RC4PPS5 :1;
    };
} RC4PPSbits_t;
extern volatile RC4PPSbits_t RC4PPSbits __attribute__((address(0x1F24)));
# 30475 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC5PPS __attribute__((address(0x1F25)));

__asm("RC5PPS equ 01F25h");


typedef union {
    struct {
        unsigned RC5PPS :6;
    };
    struct {
        unsigned RC5PPS0 :1;
        unsigned RC5PPS1 :1;
        unsigned RC5PPS2 :1;
        unsigned RC5PPS3 :1;
        unsigned RC5PPS4 :1;
        unsigned RC5PPS5 :1;
    };
} RC5PPSbits_t;
extern volatile RC5PPSbits_t RC5PPSbits __attribute__((address(0x1F25)));
# 30533 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC6PPS __attribute__((address(0x1F26)));

__asm("RC6PPS equ 01F26h");


typedef union {
    struct {
        unsigned RC6PPS :6;
    };
    struct {
        unsigned RC6PPS0 :1;
        unsigned RC6PPS1 :1;
        unsigned RC6PPS2 :1;
        unsigned RC6PPS3 :1;
        unsigned RC6PPS4 :1;
        unsigned RC6PPS5 :1;
    };
} RC6PPSbits_t;
extern volatile RC6PPSbits_t RC6PPSbits __attribute__((address(0x1F26)));
# 30591 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char RC7PPS __attribute__((address(0x1F27)));

__asm("RC7PPS equ 01F27h");


typedef union {
    struct {
        unsigned RC7PPS :6;
    };
    struct {
        unsigned RC7PPS0 :1;
        unsigned RC7PPS1 :1;
        unsigned RC7PPS2 :1;
        unsigned RC7PPS3 :1;
        unsigned RC7PPS4 :1;
        unsigned RC7PPS5 :1;
    };
} RC7PPSbits_t;
extern volatile RC7PPSbits_t RC7PPSbits __attribute__((address(0x1F27)));
# 30649 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x1F38)));

__asm("ANSELA equ 01F38h");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned :1;
        unsigned ANSA4 :1;
        unsigned ANSA5 :1;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x1F38)));
# 30694 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WPUA __attribute__((address(0x1F39)));

__asm("WPUA equ 01F39h");


typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0x1F39)));
# 30744 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ODCONA __attribute__((address(0x1F3A)));

__asm("ODCONA equ 01F3Ah");


typedef union {
    struct {
        unsigned ODCA0 :1;
        unsigned ODCA1 :1;
        unsigned ODCA2 :1;
        unsigned :1;
        unsigned ODCA4 :1;
        unsigned ODCA5 :1;
    };
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __attribute__((address(0x1F3A)));
# 30789 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SLRCONA __attribute__((address(0x1F3B)));

__asm("SLRCONA equ 01F3Bh");


typedef union {
    struct {
        unsigned SLRA0 :1;
        unsigned SLRA1 :1;
        unsigned SLRA2 :1;
        unsigned :1;
        unsigned SLRA4 :1;
        unsigned SLRA5 :1;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0x1F3B)));
# 30834 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char INLVLA __attribute__((address(0x1F3C)));

__asm("INLVLA equ 01F3Ch");


typedef union {
    struct {
        unsigned INLVLA0 :1;
        unsigned INLVLA1 :1;
        unsigned INLVLA2 :1;
        unsigned INLVLA3 :1;
        unsigned INLVLA4 :1;
        unsigned INLVLA5 :1;
    };
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __attribute__((address(0x1F3C)));
# 30884 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0x1F3D)));

__asm("IOCAP equ 01F3Dh");


typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0x1F3D)));
# 30934 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0x1F3E)));

__asm("IOCAN equ 01F3Eh");


typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0x1F3E)));
# 30984 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0x1F3F)));

__asm("IOCAF equ 01F3Fh");


typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0x1F3F)));
# 31034 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x1F43)));

__asm("ANSELB equ 01F43h");


typedef union {
    struct {
        unsigned :4;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
        unsigned ANSB6 :1;
        unsigned ANSB7 :1;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x1F43)));
# 31073 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WPUB __attribute__((address(0x1F44)));

__asm("WPUB equ 01F44h");


typedef union {
    struct {
        unsigned :4;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0x1F44)));
# 31112 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ODCONB __attribute__((address(0x1F45)));

__asm("ODCONB equ 01F45h");


typedef union {
    struct {
        unsigned :4;
        unsigned ODCB4 :1;
        unsigned ODCB5 :1;
        unsigned ODCB6 :1;
        unsigned ODCB7 :1;
    };
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __attribute__((address(0x1F45)));
# 31151 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SLRCONB __attribute__((address(0x1F46)));

__asm("SLRCONB equ 01F46h");


typedef union {
    struct {
        unsigned :4;
        unsigned SLRB4 :1;
        unsigned SLRB5 :1;
        unsigned SLRB6 :1;
        unsigned SLRB7 :1;
    };
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __attribute__((address(0x1F46)));
# 31190 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char INLVLB __attribute__((address(0x1F47)));

__asm("INLVLB equ 01F47h");


typedef union {
    struct {
        unsigned :4;
        unsigned INLVLB4 :1;
        unsigned INLVLB5 :1;
        unsigned INLVLB6 :1;
        unsigned INLVLB7 :1;
    };
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __attribute__((address(0x1F47)));
# 31229 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCBP __attribute__((address(0x1F48)));

__asm("IOCBP equ 01F48h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBP4 :1;
        unsigned IOCBP5 :1;
        unsigned IOCBP6 :1;
        unsigned IOCBP7 :1;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0x1F48)));
# 31268 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCBN __attribute__((address(0x1F49)));

__asm("IOCBN equ 01F49h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBN4 :1;
        unsigned IOCBN5 :1;
        unsigned IOCBN6 :1;
        unsigned IOCBN7 :1;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0x1F49)));
# 31307 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCBF __attribute__((address(0x1F4A)));

__asm("IOCBF equ 01F4Ah");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBF4 :1;
        unsigned IOCBF5 :1;
        unsigned IOCBF6 :1;
        unsigned IOCBF7 :1;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0x1F4A)));
# 31346 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ANSELC __attribute__((address(0x1F4E)));

__asm("ANSELC equ 01F4Eh");


typedef union {
    struct {
        unsigned ANSC0 :1;
        unsigned ANSC1 :1;
        unsigned ANSC2 :1;
        unsigned ANSC3 :1;
        unsigned ANSC4 :1;
        unsigned ANSC5 :1;
        unsigned ANSC6 :1;
        unsigned ANSC7 :1;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0x1F4E)));
# 31408 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WPUC __attribute__((address(0x1F4F)));

__asm("WPUC equ 01F4Fh");


typedef union {
    struct {
        unsigned WPUC0 :1;
        unsigned WPUC1 :1;
        unsigned WPUC2 :1;
        unsigned WPUC3 :1;
        unsigned WPUC4 :1;
        unsigned WPUC5 :1;
        unsigned WPUC6 :1;
        unsigned WPUC7 :1;
    };
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __attribute__((address(0x1F4F)));
# 31470 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char ODCONC __attribute__((address(0x1F50)));

__asm("ODCONC equ 01F50h");


typedef union {
    struct {
        unsigned ODCC0 :1;
        unsigned ODCC1 :1;
        unsigned ODCC2 :1;
        unsigned ODCC3 :1;
        unsigned ODCC4 :1;
        unsigned ODCC5 :1;
        unsigned ODCC6 :1;
        unsigned ODCC7 :1;
    };
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __attribute__((address(0x1F50)));
# 31532 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char SLRCONC __attribute__((address(0x1F51)));

__asm("SLRCONC equ 01F51h");


typedef union {
    struct {
        unsigned SLRC0 :1;
        unsigned SLRC1 :1;
        unsigned SLRC2 :1;
        unsigned SLRC3 :1;
        unsigned SLRC4 :1;
        unsigned SLRC5 :1;
        unsigned SLRC6 :1;
        unsigned SLRC7 :1;
    };
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __attribute__((address(0x1F51)));
# 31594 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char INLVLC __attribute__((address(0x1F52)));

__asm("INLVLC equ 01F52h");


typedef union {
    struct {
        unsigned INLVLC0 :1;
        unsigned INLVLC1 :1;
        unsigned INLVLC2 :1;
        unsigned INLVLC3 :1;
        unsigned INLVLC4 :1;
        unsigned INLVLC5 :1;
        unsigned INLVLC6 :1;
        unsigned INLVLC7 :1;
    };
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __attribute__((address(0x1F52)));
# 31656 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCCP __attribute__((address(0x1F53)));

__asm("IOCCP equ 01F53h");


typedef union {
    struct {
        unsigned IOCCP0 :1;
        unsigned IOCCP1 :1;
        unsigned IOCCP2 :1;
        unsigned IOCCP3 :1;
        unsigned IOCCP4 :1;
        unsigned IOCCP5 :1;
        unsigned IOCCP6 :1;
        unsigned IOCCP7 :1;
    };
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __attribute__((address(0x1F53)));
# 31718 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCCN __attribute__((address(0x1F54)));

__asm("IOCCN equ 01F54h");


typedef union {
    struct {
        unsigned IOCCN0 :1;
        unsigned IOCCN1 :1;
        unsigned IOCCN2 :1;
        unsigned IOCCN3 :1;
        unsigned IOCCN4 :1;
        unsigned IOCCN5 :1;
        unsigned IOCCN6 :1;
        unsigned IOCCN7 :1;
    };
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __attribute__((address(0x1F54)));
# 31780 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char IOCCF __attribute__((address(0x1F55)));

__asm("IOCCF equ 01F55h");


typedef union {
    struct {
        unsigned IOCCF0 :1;
        unsigned IOCCF1 :1;
        unsigned IOCCF2 :1;
        unsigned IOCCF3 :1;
        unsigned IOCCF4 :1;
        unsigned IOCCF5 :1;
        unsigned IOCCF6 :1;
        unsigned IOCCF7 :1;
    };
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __attribute__((address(0x1F55)));
# 31842 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char STATUS_SHAD __attribute__((address(0x1FE4)));

__asm("STATUS_SHAD equ 01FE4h");


typedef union {
    struct {
        unsigned STATUS_SHAD :8;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0x1FE4)));
# 31862 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char WREG_SHAD __attribute__((address(0x1FE5)));

__asm("WREG_SHAD equ 01FE5h");


typedef union {
    struct {
        unsigned WREG_SHAD :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0x1FE5)));
# 31882 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char BSR_SHAD __attribute__((address(0x1FE6)));

__asm("BSR_SHAD equ 01FE6h");


typedef union {
    struct {
        unsigned BSR_SHAD :8;
    };
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __attribute__((address(0x1FE6)));
# 31902 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char PCLATH_SHAD __attribute__((address(0x1FE7)));

__asm("PCLATH_SHAD equ 01FE7h");


typedef union {
    struct {
        unsigned PCLATH_SHAD :8;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0x1FE7)));
# 31922 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned short FSR0_SHAD __attribute__((address(0x1FE8)));

__asm("FSR0_SHAD equ 01FE8h");




extern volatile unsigned char FSR0L_SHAD __attribute__((address(0x1FE8)));

__asm("FSR0L_SHAD equ 01FE8h");


typedef union {
    struct {
        unsigned FSR0L_SHAD :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0x1FE8)));
# 31949 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char FSR0H_SHAD __attribute__((address(0x1FE9)));

__asm("FSR0H_SHAD equ 01FE9h");


typedef union {
    struct {
        unsigned FSR0H_SHAD :8;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0x1FE9)));
# 31969 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char FSR1L_SHAD __attribute__((address(0x1FEA)));

__asm("FSR1L_SHAD equ 01FEAh");


typedef union {
    struct {
        unsigned FSR1L_SHAD :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0x1FEA)));
# 31989 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char FSR1H_SHAD __attribute__((address(0x1FEB)));

__asm("FSR1H_SHAD equ 01FEBh");


typedef union {
    struct {
        unsigned FSR1H_SHAD :8;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0x1FEB)));
# 32009 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0x1FED)));

__asm("STKPTR equ 01FEDh");


typedef union {
    struct {
        unsigned STKPTR0 :1;
        unsigned STKPTR1 :1;
        unsigned STKPTR2 :1;
        unsigned STKPTR3 :1;
        unsigned STKPTR4 :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0x1FED)));
# 32053 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TOSL __attribute__((address(0x1FEE)));

__asm("TOSL equ 01FEEh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
    struct {
        unsigned TOSL0 :1;
        unsigned TOSL1 :1;
        unsigned TOSL2 :1;
        unsigned TOSL3 :1;
        unsigned TOSL4 :1;
        unsigned TOSL5 :1;
        unsigned TOSL6 :1;
        unsigned TOSL7 :1;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0x1FEE)));
# 32123 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile unsigned char TOSH __attribute__((address(0x1FEF)));

__asm("TOSH equ 01FEFh");


typedef union {
    struct {
        unsigned TOSH :8;
    };
    struct {
        unsigned TOSH0 :1;
        unsigned TOSH1 :1;
        unsigned TOSH2 :1;
        unsigned TOSH3 :1;
        unsigned TOSH4 :1;
        unsigned TOSH5 :1;
        unsigned TOSH6 :1;
        unsigned TOSH7 :1;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0x1FEF)));
# 32199 "/opt/microchip/xc8/v2.10/pic/include/pic16f18446.h" 3
extern volatile __bit ABDEN __attribute__((address(0x8F8)));


extern volatile __bit ABDOVF __attribute__((address(0x8FF)));


extern volatile __bit ACC20 __attribute__((address(0x4C4)));


extern volatile __bit ACC21 __attribute__((address(0x4C5)));


extern volatile __bit ACC22 __attribute__((address(0x4C6)));


extern volatile __bit ACC23 __attribute__((address(0x4C7)));


extern volatile __bit ACKDT1 __attribute__((address(0xC8D)));


extern volatile __bit ACKDT2 __attribute__((address(0xCDD)));


extern volatile __bit ACKEN1 __attribute__((address(0xC8C)));


extern volatile __bit ACKEN2 __attribute__((address(0xCDC)));


extern volatile __bit ACKSTAT1 __attribute__((address(0xC8E)));


extern volatile __bit ACKSTAT2 __attribute__((address(0xCDE)));


extern volatile __bit ACLR __attribute__((address(0x89B)));


extern volatile __bit ACQ0 __attribute__((address(0x860)));


extern volatile __bit ACQ1 __attribute__((address(0x861)));


extern volatile __bit ACQ10 __attribute__((address(0x86A)));


extern volatile __bit ACQ11 __attribute__((address(0x86B)));


extern volatile __bit ACQ12 __attribute__((address(0x86C)));


extern volatile __bit ACQ2 __attribute__((address(0x862)));


extern volatile __bit ACQ3 __attribute__((address(0x863)));


extern volatile __bit ACQ4 __attribute__((address(0x864)));


extern volatile __bit ACQ5 __attribute__((address(0x865)));


extern volatile __bit ACQ6 __attribute__((address(0x866)));


extern volatile __bit ACQ7 __attribute__((address(0x867)));


extern volatile __bit ACQ8 __attribute__((address(0x868)));


extern volatile __bit ACQ9 __attribute__((address(0x869)));


extern volatile __bit ACT0 __attribute__((address(0x8B8)));


extern volatile __bit ACT1 __attribute__((address(0x8B9)));


extern volatile __bit ACT2 __attribute__((address(0x8BA)));


extern volatile __bit ACT3 __attribute__((address(0x8BB)));


extern volatile __bit ACT4 __attribute__((address(0x8BC)));


extern volatile __bit ADACC0 __attribute__((address(0x4B0)));


extern volatile __bit ADACC1 __attribute__((address(0x4B1)));


extern volatile __bit ADACC10 __attribute__((address(0x4BA)));


extern volatile __bit ADACC11 __attribute__((address(0x4BB)));


extern volatile __bit ADACC12 __attribute__((address(0x4BC)));


extern volatile __bit ADACC13 __attribute__((address(0x4BD)));


extern volatile __bit ADACC14 __attribute__((address(0x4BE)));


extern volatile __bit ADACC15 __attribute__((address(0x4BF)));


extern volatile __bit ADACC16 __attribute__((address(0x4C0)));


extern volatile __bit ADACC17 __attribute__((address(0x4C1)));


extern volatile __bit ADACC18 __attribute__((address(0x4C2)));


extern volatile __bit ADACC19 __attribute__((address(0x4C3)));


extern volatile __bit ADACC2 __attribute__((address(0x4B2)));


extern volatile __bit ADACC20 __attribute__((address(0x4C4)));


extern volatile __bit ADACC21 __attribute__((address(0x4C5)));


extern volatile __bit ADACC22 __attribute__((address(0x4C6)));


extern volatile __bit ADACC23 __attribute__((address(0x4C7)));


extern volatile __bit ADACC3 __attribute__((address(0x4B3)));


extern volatile __bit ADACC4 __attribute__((address(0x4B4)));


extern volatile __bit ADACC5 __attribute__((address(0x4B5)));


extern volatile __bit ADACC6 __attribute__((address(0x4B6)));


extern volatile __bit ADACC7 __attribute__((address(0x4B7)));


extern volatile __bit ADACC8 __attribute__((address(0x4B8)));


extern volatile __bit ADACC9 __attribute__((address(0x4B9)));


extern volatile __bit ADACLR __attribute__((address(0x89B)));


extern volatile __bit ADACQ0 __attribute__((address(0x860)));


extern volatile __bit ADACQ1 __attribute__((address(0x861)));


extern volatile __bit ADACQ10 __attribute__((address(0x86A)));


extern volatile __bit ADACQ11 __attribute__((address(0x86B)));


extern volatile __bit ADACQ12 __attribute__((address(0x86C)));


extern volatile __bit ADACQ2 __attribute__((address(0x862)));


extern volatile __bit ADACQ3 __attribute__((address(0x863)));


extern volatile __bit ADACQ4 __attribute__((address(0x864)));


extern volatile __bit ADACQ5 __attribute__((address(0x865)));


extern volatile __bit ADACQ6 __attribute__((address(0x866)));


extern volatile __bit ADACQ7 __attribute__((address(0x867)));


extern volatile __bit ADACQ8 __attribute__((address(0x868)));


extern volatile __bit ADACQ9 __attribute__((address(0x869)));


extern volatile __bit ADACT0 __attribute__((address(0x8B8)));


extern volatile __bit ADACT1 __attribute__((address(0x8B9)));


extern volatile __bit ADACT2 __attribute__((address(0x8BA)));


extern volatile __bit ADACT3 __attribute__((address(0x8BB)));


extern volatile __bit ADACT4 __attribute__((address(0x8BC)));


extern volatile __bit ADACTPPS0 __attribute__((address(0xF618)));


extern volatile __bit ADACTPPS1 __attribute__((address(0xF619)));


extern volatile __bit ADACTPPS2 __attribute__((address(0xF61A)));


extern volatile __bit ADACTPPS3 __attribute__((address(0xF61B)));


extern volatile __bit ADACTPPS4 __attribute__((address(0xF61C)));


extern volatile __bit ADAOV __attribute__((address(0x8AF)));


extern volatile __bit ADCAL __attribute__((address(0x88F)));


extern volatile __bit ADCALC0 __attribute__((address(0x8A4)));


extern volatile __bit ADCALC1 __attribute__((address(0x8A5)));


extern volatile __bit ADCALC2 __attribute__((address(0x8A6)));


extern volatile __bit ADCAP0 __attribute__((address(0x870)));


extern volatile __bit ADCAP1 __attribute__((address(0x871)));


extern volatile __bit ADCAP2 __attribute__((address(0x872)));


extern volatile __bit ADCAP3 __attribute__((address(0x873)));


extern volatile __bit ADCAP4 __attribute__((address(0x874)));


extern volatile __bit ADCMD __attribute__((address(0x3CCD)));


extern volatile __bit ADCNT0 __attribute__((address(0x4C8)));


extern volatile __bit ADCNT1 __attribute__((address(0x4C9)));


extern volatile __bit ADCNT2 __attribute__((address(0x4CA)));


extern volatile __bit ADCNT3 __attribute__((address(0x4CB)));


extern volatile __bit ADCNT4 __attribute__((address(0x4CC)));


extern volatile __bit ADCNT5 __attribute__((address(0x4CD)));


extern volatile __bit ADCNT6 __attribute__((address(0x4CE)));


extern volatile __bit ADCNT7 __attribute__((address(0x4CF)));


extern volatile __bit ADCONT __attribute__((address(0x88E)));


extern volatile __bit ADCRS0 __attribute__((address(0x89C)));


extern volatile __bit ADCRS1 __attribute__((address(0x89D)));


extern volatile __bit ADCRS2 __attribute__((address(0x89E)));


extern volatile __bit ADCS __attribute__((address(0x88C)));


extern volatile __bit ADCS0 __attribute__((address(0x8C0)));


extern volatile __bit ADCS1 __attribute__((address(0x8C1)));


extern volatile __bit ADCS2 __attribute__((address(0x8C2)));


extern volatile __bit ADCS3 __attribute__((address(0x8C3)));


extern volatile __bit ADCS4 __attribute__((address(0x8C4)));


extern volatile __bit ADCS5 __attribute__((address(0x8C5)));


extern volatile __bit ADDEN __attribute__((address(0x8EB)));


extern volatile __bit ADDSEN __attribute__((address(0x890)));


extern volatile __bit ADERR0 __attribute__((address(0x480)));


extern volatile __bit ADERR1 __attribute__((address(0x481)));


extern volatile __bit ADERR10 __attribute__((address(0x48A)));


extern volatile __bit ADERR11 __attribute__((address(0x48B)));


extern volatile __bit ADERR12 __attribute__((address(0x48C)));


extern volatile __bit ADERR13 __attribute__((address(0x48D)));


extern volatile __bit ADERR14 __attribute__((address(0x48E)));


extern volatile __bit ADERR15 __attribute__((address(0x48F)));


extern volatile __bit ADERR2 __attribute__((address(0x482)));


extern volatile __bit ADERR3 __attribute__((address(0x483)));


extern volatile __bit ADERR4 __attribute__((address(0x484)));


extern volatile __bit ADERR5 __attribute__((address(0x485)));


extern volatile __bit ADERR6 __attribute__((address(0x486)));


extern volatile __bit ADERR7 __attribute__((address(0x487)));


extern volatile __bit ADERR8 __attribute__((address(0x488)));


extern volatile __bit ADERR9 __attribute__((address(0x489)));


extern volatile __bit ADFLTR0 __attribute__((address(0x4A0)));


extern volatile __bit ADFLTR1 __attribute__((address(0x4A1)));


extern volatile __bit ADFLTR10 __attribute__((address(0x4AA)));


extern volatile __bit ADFLTR11 __attribute__((address(0x4AB)));


extern volatile __bit ADFLTR12 __attribute__((address(0x4AC)));


extern volatile __bit ADFLTR13 __attribute__((address(0x4AD)));


extern volatile __bit ADFLTR14 __attribute__((address(0x4AE)));


extern volatile __bit ADFLTR15 __attribute__((address(0x4AF)));


extern volatile __bit ADFLTR2 __attribute__((address(0x4A2)));


extern volatile __bit ADFLTR3 __attribute__((address(0x4A3)));


extern volatile __bit ADFLTR4 __attribute__((address(0x4A4)));


extern volatile __bit ADFLTR5 __attribute__((address(0x4A5)));


extern volatile __bit ADFLTR6 __attribute__((address(0x4A6)));


extern volatile __bit ADFLTR7 __attribute__((address(0x4A7)));


extern volatile __bit ADFLTR8 __attribute__((address(0x4A8)));


extern volatile __bit ADFLTR9 __attribute__((address(0x4A9)));


extern volatile __bit ADFM0 __attribute__((address(0x88A)));


extern volatile __bit ADFM1 __attribute__((address(0x88B)));


extern volatile __bit ADFVR0 __attribute__((address(0x4860)));


extern volatile __bit ADFVR1 __attribute__((address(0x4861)));


extern volatile __bit ADGAOE __attribute__((address(0x894)));


extern volatile __bit ADGBOE __attribute__((address(0x893)));


extern volatile __bit ADGO __attribute__((address(0x888)));


extern volatile __bit ADGPOL __attribute__((address(0x895)));


extern volatile __bit ADIE __attribute__((address(0x38B8)));


extern volatile __bit ADIF __attribute__((address(0x3868)));


extern volatile __bit ADIPEN __attribute__((address(0x896)));


extern volatile __bit ADLTH0 __attribute__((address(0x460)));


extern volatile __bit ADLTH1 __attribute__((address(0x461)));


extern volatile __bit ADLTH10 __attribute__((address(0x46A)));


extern volatile __bit ADLTH11 __attribute__((address(0x46B)));


extern volatile __bit ADLTH12 __attribute__((address(0x46C)));


extern volatile __bit ADLTH13 __attribute__((address(0x46D)));


extern volatile __bit ADLTH14 __attribute__((address(0x46E)));


extern volatile __bit ADLTH15 __attribute__((address(0x46F)));


extern volatile __bit ADLTH2 __attribute__((address(0x462)));


extern volatile __bit ADLTH3 __attribute__((address(0x463)));


extern volatile __bit ADLTH4 __attribute__((address(0x464)));


extern volatile __bit ADLTH5 __attribute__((address(0x465)));


extern volatile __bit ADLTH6 __attribute__((address(0x466)));


extern volatile __bit ADLTH7 __attribute__((address(0x467)));


extern volatile __bit ADLTH8 __attribute__((address(0x468)));


extern volatile __bit ADLTH9 __attribute__((address(0x469)));


extern volatile __bit ADLTHR __attribute__((address(0x8AD)));


extern volatile __bit ADMATH __attribute__((address(0x8AC)));


extern volatile __bit ADMD0 __attribute__((address(0x898)));


extern volatile __bit ADMD1 __attribute__((address(0x899)));


extern volatile __bit ADMD2 __attribute__((address(0x89A)));


extern volatile __bit ADMSK11 __attribute__((address(0xC89)));


extern volatile __bit ADMSK12 __attribute__((address(0xCD9)));


extern volatile __bit ADMSK21 __attribute__((address(0xC8A)));


extern volatile __bit ADMSK22 __attribute__((address(0xCDA)));


extern volatile __bit ADMSK31 __attribute__((address(0xC8B)));


extern volatile __bit ADMSK32 __attribute__((address(0xCDB)));


extern volatile __bit ADMSK41 __attribute__((address(0xC8C)));


extern volatile __bit ADMSK42 __attribute__((address(0xCDC)));


extern volatile __bit ADMSK51 __attribute__((address(0xC8D)));


extern volatile __bit ADMSK52 __attribute__((address(0xCDD)));


extern volatile __bit ADNREF0 __attribute__((address(0x8B4)));


extern volatile __bit ADNREF1 __attribute__((address(0x8B5)));


extern volatile __bit ADNREF2 __attribute__((address(0x8B6)));


extern volatile __bit ADNREF3 __attribute__((address(0x8B7)));


extern volatile __bit ADOEN __attribute__((address(0x448A)));


extern volatile __bit ADON __attribute__((address(0x88F)));


extern volatile __bit ADOR __attribute__((address(0x4482)));


extern volatile __bit ADOV __attribute__((address(0x8AF)));


extern volatile __bit ADPCH0 __attribute__((address(0x4F8)));


extern volatile __bit ADPCH1 __attribute__((address(0x4F9)));


extern volatile __bit ADPCH2 __attribute__((address(0x4FA)));


extern volatile __bit ADPCH3 __attribute__((address(0x4FB)));


extern volatile __bit ADPCH4 __attribute__((address(0x4FC)));


extern volatile __bit ADPCH5 __attribute__((address(0x4FD)));


extern volatile __bit ADPPOL __attribute__((address(0x897)));


extern volatile __bit ADPRE0 __attribute__((address(0x878)));


extern volatile __bit ADPRE1 __attribute__((address(0x879)));


extern volatile __bit ADPRE10 __attribute__((address(0x882)));


extern volatile __bit ADPRE11 __attribute__((address(0x883)));


extern volatile __bit ADPRE12 __attribute__((address(0x884)));


extern volatile __bit ADPRE2 __attribute__((address(0x87A)));


extern volatile __bit ADPRE3 __attribute__((address(0x87B)));


extern volatile __bit ADPRE4 __attribute__((address(0x87C)));


extern volatile __bit ADPRE5 __attribute__((address(0x87D)));


extern volatile __bit ADPRE6 __attribute__((address(0x87E)));


extern volatile __bit ADPRE7 __attribute__((address(0x87F)));


extern volatile __bit ADPRE8 __attribute__((address(0x880)));


extern volatile __bit ADPRE9 __attribute__((address(0x881)));


extern volatile __bit ADPREF0 __attribute__((address(0x8B0)));


extern volatile __bit ADPREF1 __attribute__((address(0x8B1)));


extern volatile __bit ADPREF2 __attribute__((address(0x8B2)));


extern volatile __bit ADPREF3 __attribute__((address(0x8B3)));


extern volatile __bit ADPREV0 __attribute__((address(0x4D8)));


extern volatile __bit ADPREV1 __attribute__((address(0x4D9)));


extern volatile __bit ADPREV10 __attribute__((address(0x4E2)));


extern volatile __bit ADPREV11 __attribute__((address(0x4E3)));


extern volatile __bit ADPREV12 __attribute__((address(0x4E4)));


extern volatile __bit ADPREV13 __attribute__((address(0x4E5)));


extern volatile __bit ADPREV14 __attribute__((address(0x4E6)));


extern volatile __bit ADPREV15 __attribute__((address(0x4E7)));


extern volatile __bit ADPREV2 __attribute__((address(0x4DA)));


extern volatile __bit ADPREV3 __attribute__((address(0x4DB)));


extern volatile __bit ADPREV4 __attribute__((address(0x4DC)));


extern volatile __bit ADPREV5 __attribute__((address(0x4DD)));


extern volatile __bit ADPREV6 __attribute__((address(0x4DE)));


extern volatile __bit ADPREV7 __attribute__((address(0x4DF)));


extern volatile __bit ADPREV8 __attribute__((address(0x4E0)));


extern volatile __bit ADPREV9 __attribute__((address(0x4E1)));


extern volatile __bit ADPSIS __attribute__((address(0x89F)));


extern volatile __bit ADRES0 __attribute__((address(0x4E8)));


extern volatile __bit ADRES1 __attribute__((address(0x4E9)));


extern volatile __bit ADRES10 __attribute__((address(0x4F2)));


extern volatile __bit ADRES11 __attribute__((address(0x4F3)));


extern volatile __bit ADRES12 __attribute__((address(0x4F4)));


extern volatile __bit ADRES13 __attribute__((address(0x4F5)));


extern volatile __bit ADRES14 __attribute__((address(0x4F6)));


extern volatile __bit ADRES15 __attribute__((address(0x4F7)));


extern volatile __bit ADRES2 __attribute__((address(0x4EA)));


extern volatile __bit ADRES3 __attribute__((address(0x4EB)));


extern volatile __bit ADRES4 __attribute__((address(0x4EC)));


extern volatile __bit ADRES5 __attribute__((address(0x4ED)));


extern volatile __bit ADRES6 __attribute__((address(0x4EE)));


extern volatile __bit ADRES7 __attribute__((address(0x4EF)));


extern volatile __bit ADRES8 __attribute__((address(0x4F0)));


extern volatile __bit ADRES9 __attribute__((address(0x4F1)));


extern volatile __bit ADRPT0 __attribute__((address(0x4D0)));


extern volatile __bit ADRPT1 __attribute__((address(0x4D1)));


extern volatile __bit ADRPT2 __attribute__((address(0x4D2)));


extern volatile __bit ADRPT3 __attribute__((address(0x4D3)));


extern volatile __bit ADRPT4 __attribute__((address(0x4D4)));


extern volatile __bit ADRPT5 __attribute__((address(0x4D5)));


extern volatile __bit ADRPT6 __attribute__((address(0x4D6)));


extern volatile __bit ADRPT7 __attribute__((address(0x4D7)));


extern volatile __bit ADSOI __attribute__((address(0x8A3)));


extern volatile __bit ADSTAT0 __attribute__((address(0x8A8)));


extern volatile __bit ADSTAT1 __attribute__((address(0x8A9)));


extern volatile __bit ADSTAT2 __attribute__((address(0x8AA)));


extern volatile __bit ADSTPT0 __attribute__((address(0x490)));


extern volatile __bit ADSTPT1 __attribute__((address(0x491)));


extern volatile __bit ADSTPT10 __attribute__((address(0x49A)));


extern volatile __bit ADSTPT11 __attribute__((address(0x49B)));


extern volatile __bit ADSTPT12 __attribute__((address(0x49C)));


extern volatile __bit ADSTPT13 __attribute__((address(0x49D)));


extern volatile __bit ADSTPT14 __attribute__((address(0x49E)));


extern volatile __bit ADSTPT15 __attribute__((address(0x49F)));


extern volatile __bit ADSTPT2 __attribute__((address(0x492)));


extern volatile __bit ADSTPT3 __attribute__((address(0x493)));


extern volatile __bit ADSTPT4 __attribute__((address(0x494)));


extern volatile __bit ADSTPT5 __attribute__((address(0x495)));


extern volatile __bit ADSTPT6 __attribute__((address(0x496)));


extern volatile __bit ADSTPT7 __attribute__((address(0x497)));


extern volatile __bit ADSTPT8 __attribute__((address(0x498)));


extern volatile __bit ADSTPT9 __attribute__((address(0x499)));


extern volatile __bit ADTIE __attribute__((address(0x38B9)));


extern volatile __bit ADTIF __attribute__((address(0x3869)));


extern volatile __bit ADTMD0 __attribute__((address(0x8A0)));


extern volatile __bit ADTMD1 __attribute__((address(0x8A1)));


extern volatile __bit ADTMD2 __attribute__((address(0x8A2)));


extern volatile __bit ADUTH0 __attribute__((address(0x470)));


extern volatile __bit ADUTH1 __attribute__((address(0x471)));


extern volatile __bit ADUTH10 __attribute__((address(0x47A)));


extern volatile __bit ADUTH11 __attribute__((address(0x47B)));


extern volatile __bit ADUTH12 __attribute__((address(0x47C)));


extern volatile __bit ADUTH13 __attribute__((address(0x47D)));


extern volatile __bit ADUTH14 __attribute__((address(0x47E)));


extern volatile __bit ADUTH15 __attribute__((address(0x47F)));


extern volatile __bit ADUTH2 __attribute__((address(0x472)));


extern volatile __bit ADUTH3 __attribute__((address(0x473)));


extern volatile __bit ADUTH4 __attribute__((address(0x474)));


extern volatile __bit ADUTH5 __attribute__((address(0x475)));


extern volatile __bit ADUTH6 __attribute__((address(0x476)));


extern volatile __bit ADUTH7 __attribute__((address(0x477)));


extern volatile __bit ADUTH8 __attribute__((address(0x478)));


extern volatile __bit ADUTH9 __attribute__((address(0x479)));


extern volatile __bit ADUTHR __attribute__((address(0x8AE)));


extern volatile __bit ANSA0 __attribute__((address(0xF9C0)));


extern volatile __bit ANSA1 __attribute__((address(0xF9C1)));


extern volatile __bit ANSA2 __attribute__((address(0xF9C2)));


extern volatile __bit ANSA4 __attribute__((address(0xF9C4)));


extern volatile __bit ANSA5 __attribute__((address(0xF9C5)));


extern volatile __bit ANSB4 __attribute__((address(0xFA1C)));


extern volatile __bit ANSB5 __attribute__((address(0xFA1D)));


extern volatile __bit ANSB6 __attribute__((address(0xFA1E)));


extern volatile __bit ANSB7 __attribute__((address(0xFA1F)));


extern volatile __bit ANSC0 __attribute__((address(0xFA70)));


extern volatile __bit ANSC1 __attribute__((address(0xFA71)));


extern volatile __bit ANSC2 __attribute__((address(0xFA72)));


extern volatile __bit ANSC3 __attribute__((address(0xFA73)));


extern volatile __bit ANSC4 __attribute__((address(0xFA74)));


extern volatile __bit ANSC5 __attribute__((address(0xFA75)));


extern volatile __bit ANSC6 __attribute__((address(0xFA76)));


extern volatile __bit ANSC7 __attribute__((address(0xFA77)));


extern volatile __bit AS __attribute__((address(0x24D0)));


extern volatile __bit ASYNC __attribute__((address(0x2CFC)));


extern volatile __bit BCL1IE __attribute__((address(0x38C9)));


extern volatile __bit BCL1IF __attribute__((address(0x3879)));


extern volatile __bit BCL2IE __attribute__((address(0x38CB)));


extern volatile __bit BCL2IF __attribute__((address(0x387B)));


extern volatile __bit BF1 __attribute__((address(0xC78)));


extern volatile __bit BF2 __attribute__((address(0xCC8)));


extern volatile __bit BIT __attribute__((address(0x44B8)));


extern volatile __bit BORRDY __attribute__((address(0x4088)));


extern volatile __bit BRG16 __attribute__((address(0x8FB)));


extern volatile __bit BRGH __attribute__((address(0x8F2)));


extern volatile __bit BSR0 __attribute__((address(0x40)));


extern volatile __bit BSR1 __attribute__((address(0x41)));


extern volatile __bit BSR2 __attribute__((address(0x42)));


extern volatile __bit BSR3 __attribute__((address(0x43)));


extern volatile __bit BSR4 __attribute__((address(0x44)));


extern volatile __bit BSR5 __attribute__((address(0x45)));


extern volatile __bit C1EN __attribute__((address(0x4C87)));


extern volatile __bit C1HYS __attribute__((address(0x4C81)));


extern volatile __bit C1IE __attribute__((address(0x38C0)));


extern volatile __bit C1IF __attribute__((address(0x3870)));


extern volatile __bit C1INTN __attribute__((address(0x4C88)));


extern volatile __bit C1INTP __attribute__((address(0x4C89)));


extern volatile __bit C1NCH0 __attribute__((address(0x4C90)));


extern volatile __bit C1NCH1 __attribute__((address(0x4C91)));


extern volatile __bit C1NCH2 __attribute__((address(0x4C92)));


extern volatile __bit C1PCH0 __attribute__((address(0x4C98)));


extern volatile __bit C1PCH1 __attribute__((address(0x4C99)));


extern volatile __bit C1PCH2 __attribute__((address(0x4C9A)));


extern volatile __bit C1POL __attribute__((address(0x4C84)));


extern volatile __bit C1SYNC __attribute__((address(0x4C80)));


extern volatile __bit C2EN __attribute__((address(0x4CA7)));


extern volatile __bit C2HYS __attribute__((address(0x4CA1)));


extern volatile __bit C2IE __attribute__((address(0x38C1)));


extern volatile __bit C2IF __attribute__((address(0x3871)));


extern volatile __bit C2INTN __attribute__((address(0x4CA8)));


extern volatile __bit C2INTP __attribute__((address(0x4CA9)));


extern volatile __bit C2NCH0 __attribute__((address(0x4CB0)));


extern volatile __bit C2NCH1 __attribute__((address(0x4CB1)));


extern volatile __bit C2NCH2 __attribute__((address(0x4CB2)));


extern volatile __bit C2PCH0 __attribute__((address(0x4CB8)));


extern volatile __bit C2PCH1 __attribute__((address(0x4CB9)));


extern volatile __bit C2PCH2 __attribute__((address(0x4CBA)));


extern volatile __bit C2POL __attribute__((address(0x4CA4)));


extern volatile __bit C2SYNC __attribute__((address(0x4CA0)));


extern volatile __bit CALC0 __attribute__((address(0x8A4)));


extern volatile __bit CALC1 __attribute__((address(0x8A5)));


extern volatile __bit CALC2 __attribute__((address(0x8A6)));


extern volatile __bit CAP0 __attribute__((address(0x870)));


extern volatile __bit CAP1 __attribute__((address(0x871)));


extern volatile __bit CAP2 __attribute__((address(0x872)));


extern volatile __bit CAP3 __attribute__((address(0x873)));


extern volatile __bit CAP4 __attribute__((address(0x874)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1CTS0 __attribute__((address(0x1878)));


extern volatile __bit CCP1CTS1 __attribute__((address(0x1879)));


extern volatile __bit CCP1CTS2 __attribute__((address(0x187A)));


extern volatile __bit CCP1EN __attribute__((address(0x1877)));


extern volatile __bit CCP1FMT __attribute__((address(0x1874)));


extern volatile __bit CCP1IE __attribute__((address(0x38E0)));


extern volatile __bit CCP1IF __attribute__((address(0x3890)));


extern volatile __bit CCP1MD __attribute__((address(0x3CD0)));


extern volatile __bit CCP1MODE0 __attribute__((address(0x1870)));


extern volatile __bit CCP1MODE1 __attribute__((address(0x1871)));


extern volatile __bit CCP1MODE2 __attribute__((address(0x1872)));


extern volatile __bit CCP1MODE3 __attribute__((address(0x1873)));


extern volatile __bit CCP1OUT __attribute__((address(0x1875)));


extern volatile __bit CCP1PPS0 __attribute__((address(0xF508)));


extern volatile __bit CCP1PPS1 __attribute__((address(0xF509)));


extern volatile __bit CCP1PPS2 __attribute__((address(0xF50A)));


extern volatile __bit CCP1PPS3 __attribute__((address(0xF50B)));


extern volatile __bit CCP1PPS4 __attribute__((address(0xF50C)));


extern volatile __bit CCP2CTS0 __attribute__((address(0x1898)));


extern volatile __bit CCP2CTS1 __attribute__((address(0x1899)));


extern volatile __bit CCP2CTS2 __attribute__((address(0x189A)));


extern volatile __bit CCP2EN __attribute__((address(0x1897)));


extern volatile __bit CCP2FMT __attribute__((address(0x1894)));


extern volatile __bit CCP2IE __attribute__((address(0x38E1)));


extern volatile __bit CCP2IF __attribute__((address(0x3891)));


extern volatile __bit CCP2MD __attribute__((address(0x3CD1)));


extern volatile __bit CCP2MODE0 __attribute__((address(0x1890)));


extern volatile __bit CCP2MODE1 __attribute__((address(0x1891)));


extern volatile __bit CCP2MODE2 __attribute__((address(0x1892)));


extern volatile __bit CCP2MODE3 __attribute__((address(0x1893)));


extern volatile __bit CCP2OUT __attribute__((address(0x1895)));


extern volatile __bit CCP2PPS0 __attribute__((address(0xF510)));


extern volatile __bit CCP2PPS1 __attribute__((address(0xF511)));


extern volatile __bit CCP2PPS2 __attribute__((address(0xF512)));


extern volatile __bit CCP2PPS3 __attribute__((address(0xF513)));


extern volatile __bit CCP2PPS4 __attribute__((address(0xF514)));


extern volatile __bit CCP3CTS0 __attribute__((address(0x18B8)));


extern volatile __bit CCP3CTS1 __attribute__((address(0x18B9)));


extern volatile __bit CCP3CTS2 __attribute__((address(0x18BA)));


extern volatile __bit CCP3EN __attribute__((address(0x18B7)));


extern volatile __bit CCP3FMT __attribute__((address(0x18B4)));


extern volatile __bit CCP3IE __attribute__((address(0x38E2)));


extern volatile __bit CCP3IF __attribute__((address(0x3892)));


extern volatile __bit CCP3MD __attribute__((address(0x3CD2)));


extern volatile __bit CCP3MODE0 __attribute__((address(0x18B0)));


extern volatile __bit CCP3MODE1 __attribute__((address(0x18B1)));


extern volatile __bit CCP3MODE2 __attribute__((address(0x18B2)));


extern volatile __bit CCP3MODE3 __attribute__((address(0x18B3)));


extern volatile __bit CCP3OUT __attribute__((address(0x18B5)));


extern volatile __bit CCP3PPS0 __attribute__((address(0xF518)));


extern volatile __bit CCP3PPS1 __attribute__((address(0xF519)));


extern volatile __bit CCP3PPS2 __attribute__((address(0xF51A)));


extern volatile __bit CCP3PPS3 __attribute__((address(0xF51B)));


extern volatile __bit CCP3PPS4 __attribute__((address(0xF51C)));


extern volatile __bit CCP4CTS0 __attribute__((address(0x18D8)));


extern volatile __bit CCP4CTS1 __attribute__((address(0x18D9)));


extern volatile __bit CCP4CTS2 __attribute__((address(0x18DA)));


extern volatile __bit CCP4EN __attribute__((address(0x18D7)));


extern volatile __bit CCP4FMT __attribute__((address(0x18D4)));


extern volatile __bit CCP4IE __attribute__((address(0x38E3)));


extern volatile __bit CCP4IF __attribute__((address(0x3893)));


extern volatile __bit CCP4MD __attribute__((address(0x3CD3)));


extern volatile __bit CCP4MODE0 __attribute__((address(0x18D0)));


extern volatile __bit CCP4MODE1 __attribute__((address(0x18D1)));


extern volatile __bit CCP4MODE2 __attribute__((address(0x18D2)));


extern volatile __bit CCP4MODE3 __attribute__((address(0x18D3)));


extern volatile __bit CCP4OUT __attribute__((address(0x18D5)));


extern volatile __bit CCP4PPS0 __attribute__((address(0xF520)));


extern volatile __bit CCP4PPS1 __attribute__((address(0xF521)));


extern volatile __bit CCP4PPS2 __attribute__((address(0xF522)));


extern volatile __bit CCP4PPS3 __attribute__((address(0xF523)));


extern volatile __bit CCP4PPS4 __attribute__((address(0xF524)));


extern volatile __bit CDAFVR0 __attribute__((address(0x4862)));


extern volatile __bit CDAFVR1 __attribute__((address(0x4863)));


extern volatile __bit CDIV0 __attribute__((address(0x4470)));


extern volatile __bit CDIV1 __attribute__((address(0x4471)));


extern volatile __bit CDIV2 __attribute__((address(0x4472)));


extern volatile __bit CDIV3 __attribute__((address(0x4473)));


extern volatile __bit CH0 __attribute__((address(0x44D8)));


extern volatile __bit CH1 __attribute__((address(0x44D9)));


extern volatile __bit CH2 __attribute__((address(0x44DA)));


extern volatile __bit CH3 __attribute__((address(0x44DB)));


extern volatile __bit CHPOL __attribute__((address(0x44C5)));


extern volatile __bit CHSN3 __attribute__((address(0x893)));


extern volatile __bit CHSYNC __attribute__((address(0x44C4)));


extern volatile __bit CKE1 __attribute__((address(0xC7E)));


extern volatile __bit CKE2 __attribute__((address(0xCCE)));


extern volatile __bit CKP1 __attribute__((address(0xC84)));


extern volatile __bit CKP2 __attribute__((address(0xCD4)));


extern volatile __bit CKPS3 __attribute__((address(0x2CFB)));


extern volatile __bit CKS0 __attribute__((address(0x2C98)));


extern volatile __bit CKS1 __attribute__((address(0x2C99)));


extern volatile __bit CKS2 __attribute__((address(0x2C9A)));


extern volatile __bit CKS3 __attribute__((address(0x2C9B)));


extern volatile __bit CL0 __attribute__((address(0x44D0)));


extern volatile __bit CL1 __attribute__((address(0x44D1)));


extern volatile __bit CL2 __attribute__((address(0x44D2)));


extern volatile __bit CL3 __attribute__((address(0x44D3)));


extern volatile __bit CLC1IE __attribute__((address(0x38DC)));


extern volatile __bit CLC1IF __attribute__((address(0x388C)));


extern volatile __bit CLC1MD __attribute__((address(0x3CE9)));


extern volatile __bit CLC2IE __attribute__((address(0x38DD)));


extern volatile __bit CLC2IF __attribute__((address(0x388D)));


extern volatile __bit CLC2MD __attribute__((address(0x3CEA)));


extern volatile __bit CLC3IE __attribute__((address(0x38DE)));


extern volatile __bit CLC3IF __attribute__((address(0x388E)));


extern volatile __bit CLC3MD __attribute__((address(0x3CEB)));


extern volatile __bit CLC4IE __attribute__((address(0x38DF)));


extern volatile __bit CLC4IF __attribute__((address(0x388F)));


extern volatile __bit CLC4MD __attribute__((address(0x3CEC)));


extern volatile __bit CLCIN0PPS0 __attribute__((address(0xF5D8)));


extern volatile __bit CLCIN0PPS1 __attribute__((address(0xF5D9)));


extern volatile __bit CLCIN0PPS2 __attribute__((address(0xF5DA)));


extern volatile __bit CLCIN0PPS3 __attribute__((address(0xF5DB)));


extern volatile __bit CLCIN0PPS4 __attribute__((address(0xF5DC)));


extern volatile __bit CLCIN1PPS0 __attribute__((address(0xF5E0)));


extern volatile __bit CLCIN1PPS1 __attribute__((address(0xF5E1)));


extern volatile __bit CLCIN1PPS2 __attribute__((address(0xF5E2)));


extern volatile __bit CLCIN1PPS3 __attribute__((address(0xF5E3)));


extern volatile __bit CLCIN1PPS4 __attribute__((address(0xF5E4)));


extern volatile __bit CLCIN2PPS0 __attribute__((address(0xF5E8)));


extern volatile __bit CLCIN2PPS1 __attribute__((address(0xF5E9)));


extern volatile __bit CLCIN2PPS2 __attribute__((address(0xF5EA)));


extern volatile __bit CLCIN2PPS3 __attribute__((address(0xF5EB)));


extern volatile __bit CLCIN2PPS4 __attribute__((address(0xF5EC)));


extern volatile __bit CLCIN3PPS0 __attribute__((address(0xF5F0)));


extern volatile __bit CLCIN3PPS1 __attribute__((address(0xF5F1)));


extern volatile __bit CLCIN3PPS2 __attribute__((address(0xF5F2)));


extern volatile __bit CLCIN3PPS3 __attribute__((address(0xF5F3)));


extern volatile __bit CLCIN3PPS4 __attribute__((address(0xF5F4)));


extern volatile __bit CLKRCLK0 __attribute__((address(0x44B0)));


extern volatile __bit CLKRCLK1 __attribute__((address(0x44B1)));


extern volatile __bit CLKRCLK2 __attribute__((address(0x44B2)));


extern volatile __bit CLKRCLK3 __attribute__((address(0x44B3)));


extern volatile __bit CLKRDC0 __attribute__((address(0x44AB)));


extern volatile __bit CLKRDC1 __attribute__((address(0x44AC)));


extern volatile __bit CLKRDIV0 __attribute__((address(0x44A8)));


extern volatile __bit CLKRDIV1 __attribute__((address(0x44A9)));


extern volatile __bit CLKRDIV2 __attribute__((address(0x44AA)));


extern volatile __bit CLKREN __attribute__((address(0x44AF)));


extern volatile __bit CLKRMD __attribute__((address(0x3CB1)));


extern volatile __bit CLPOL __attribute__((address(0x44C1)));


extern volatile __bit CLSYNC __attribute__((address(0x44C0)));


extern volatile __bit CMP1MD __attribute__((address(0x3CC9)));


extern volatile __bit CMP2MD __attribute__((address(0x3CCA)));


extern volatile __bit CNT0 __attribute__((address(0x4C8)));


extern volatile __bit CNT1 __attribute__((address(0x4C9)));


extern volatile __bit CNT2 __attribute__((address(0x4CA)));


extern volatile __bit CNT3 __attribute__((address(0x4CB)));


extern volatile __bit CNT4 __attribute__((address(0x4CC)));


extern volatile __bit CNT5 __attribute__((address(0x4CD)));


extern volatile __bit CNT6 __attribute__((address(0x4CE)));


extern volatile __bit CNT7 __attribute__((address(0x4CF)));


extern volatile __bit CONT __attribute__((address(0x88E)));


extern volatile __bit COSC0 __attribute__((address(0x4474)));


extern volatile __bit COSC1 __attribute__((address(0x4475)));


extern volatile __bit COSC2 __attribute__((address(0x4476)));


extern volatile __bit CPOL __attribute__((address(0x24C2)));


extern volatile __bit CPON __attribute__((address(0x14FF)));


extern volatile __bit CPR0 __attribute__((address(0x2478)));


extern volatile __bit CPR1 __attribute__((address(0x2479)));


extern volatile __bit CPR10 __attribute__((address(0x2482)));


extern volatile __bit CPR11 __attribute__((address(0x2483)));


extern volatile __bit CPR12 __attribute__((address(0x2484)));


extern volatile __bit CPR13 __attribute__((address(0x2485)));


extern volatile __bit CPR14 __attribute__((address(0x2486)));


extern volatile __bit CPR15 __attribute__((address(0x2487)));


extern volatile __bit CPR16 __attribute__((address(0x2488)));


extern volatile __bit CPR17 __attribute__((address(0x2489)));


extern volatile __bit CPR18 __attribute__((address(0x248A)));


extern volatile __bit CPR19 __attribute__((address(0x248B)));


extern volatile __bit CPR2 __attribute__((address(0x247A)));


extern volatile __bit CPR20 __attribute__((address(0x248C)));


extern volatile __bit CPR21 __attribute__((address(0x248D)));


extern volatile __bit CPR22 __attribute__((address(0x248E)));


extern volatile __bit CPR23 __attribute__((address(0x248F)));


extern volatile __bit CPR3 __attribute__((address(0x247B)));


extern volatile __bit CPR4 __attribute__((address(0x247C)));


extern volatile __bit CPR5 __attribute__((address(0x247D)));


extern volatile __bit CPR6 __attribute__((address(0x247E)));


extern volatile __bit CPR7 __attribute__((address(0x247F)));


extern volatile __bit CPR8 __attribute__((address(0x2480)));


extern volatile __bit CPR9 __attribute__((address(0x2481)));


extern volatile __bit CPRDY __attribute__((address(0x14F8)));


extern volatile __bit CPRUP __attribute__((address(0x24D7)));


extern volatile __bit CPW0 __attribute__((address(0x2490)));


extern volatile __bit CPW1 __attribute__((address(0x2491)));


extern volatile __bit CPW10 __attribute__((address(0x249A)));


extern volatile __bit CPW11 __attribute__((address(0x249B)));


extern volatile __bit CPW12 __attribute__((address(0x249C)));


extern volatile __bit CPW13 __attribute__((address(0x249D)));


extern volatile __bit CPW14 __attribute__((address(0x249E)));


extern volatile __bit CPW15 __attribute__((address(0x249F)));


extern volatile __bit CPW16 __attribute__((address(0x24A0)));


extern volatile __bit CPW17 __attribute__((address(0x24A1)));


extern volatile __bit CPW18 __attribute__((address(0x24A2)));


extern volatile __bit CPW19 __attribute__((address(0x24A3)));


extern volatile __bit CPW2 __attribute__((address(0x2492)));


extern volatile __bit CPW20 __attribute__((address(0x24A4)));


extern volatile __bit CPW21 __attribute__((address(0x24A5)));


extern volatile __bit CPW22 __attribute__((address(0x24A6)));


extern volatile __bit CPW23 __attribute__((address(0x24A7)));


extern volatile __bit CPW3 __attribute__((address(0x2493)));


extern volatile __bit CPW4 __attribute__((address(0x2494)));


extern volatile __bit CPW5 __attribute__((address(0x2495)));


extern volatile __bit CPW6 __attribute__((address(0x2496)));


extern volatile __bit CPW7 __attribute__((address(0x2497)));


extern volatile __bit CPW8 __attribute__((address(0x2498)));


extern volatile __bit CPW9 __attribute__((address(0x2499)));


extern volatile __bit CPWUP __attribute__((address(0x24D6)));


extern volatile __bit CREN __attribute__((address(0x8EC)));


extern volatile __bit CRS0 __attribute__((address(0x89C)));


extern volatile __bit CRS1 __attribute__((address(0x89D)));


extern volatile __bit CRS2 __attribute__((address(0x89E)));


extern volatile __bit CS __attribute__((address(0x88C)));


extern volatile __bit CS5 __attribute__((address(0x8C5)));


extern volatile __bit CSEL0 __attribute__((address(0x24D8)));


extern volatile __bit CSEL1 __attribute__((address(0x24D9)));


extern volatile __bit CSEL2 __attribute__((address(0x24DA)));


extern volatile __bit CSRC __attribute__((address(0x8F7)));


extern volatile __bit CSWHOLD __attribute__((address(0x447F)));


extern volatile __bit CSWIE __attribute__((address(0x38BE)));


extern volatile __bit CSWIF __attribute__((address(0x386E)));


extern volatile __bit CWG1CS __attribute__((address(0x3060)));


extern volatile __bit CWG1DAT0 __attribute__((address(0x3068)));


extern volatile __bit CWG1DAT1 __attribute__((address(0x3069)));


extern volatile __bit CWG1DAT2 __attribute__((address(0x306A)));


extern volatile __bit CWG1DAT3 __attribute__((address(0x306B)));


extern volatile __bit CWG1DBF0 __attribute__((address(0x3078)));


extern volatile __bit CWG1DBF1 __attribute__((address(0x3079)));


extern volatile __bit CWG1DBF2 __attribute__((address(0x307A)));


extern volatile __bit CWG1DBF3 __attribute__((address(0x307B)));


extern volatile __bit CWG1DBF4 __attribute__((address(0x307C)));


extern volatile __bit CWG1DBF5 __attribute__((address(0x307D)));


extern volatile __bit CWG1DBR0 __attribute__((address(0x3070)));


extern volatile __bit CWG1DBR1 __attribute__((address(0x3071)));


extern volatile __bit CWG1DBR2 __attribute__((address(0x3072)));


extern volatile __bit CWG1DBR3 __attribute__((address(0x3073)));


extern volatile __bit CWG1DBR4 __attribute__((address(0x3074)));


extern volatile __bit CWG1DBR5 __attribute__((address(0x3075)));


extern volatile __bit CWG1EN __attribute__((address(0x3087)));


extern volatile __bit CWG1IE __attribute__((address(0x38E8)));


extern volatile __bit CWG1IF __attribute__((address(0x3898)));


extern volatile __bit CWG1IN __attribute__((address(0x308D)));


extern volatile __bit CWG1LD __attribute__((address(0x3086)));


extern volatile __bit CWG1LSAC0 __attribute__((address(0x3092)));


extern volatile __bit CWG1LSAC1 __attribute__((address(0x3093)));


extern volatile __bit CWG1LSDB0 __attribute__((address(0x3094)));


extern volatile __bit CWG1LSDB1 __attribute__((address(0x3095)));


extern volatile __bit CWG1MD __attribute__((address(0x3CDD)));


extern volatile __bit CWG1MODE0 __attribute__((address(0x3080)));


extern volatile __bit CWG1MODE1 __attribute__((address(0x3081)));


extern volatile __bit CWG1MODE2 __attribute__((address(0x3082)));


extern volatile __bit CWG1OVRA __attribute__((address(0x30A4)));


extern volatile __bit CWG1OVRB __attribute__((address(0x30A5)));


extern volatile __bit CWG1OVRC __attribute__((address(0x30A6)));


extern volatile __bit CWG1OVRD __attribute__((address(0x30A7)));


extern volatile __bit CWG1POLA __attribute__((address(0x3088)));


extern volatile __bit CWG1POLB __attribute__((address(0x3089)));


extern volatile __bit CWG1POLC __attribute__((address(0x308A)));


extern volatile __bit CWG1POLD __attribute__((address(0x308B)));


extern volatile __bit CWG1PPS0 __attribute__((address(0xF588)));


extern volatile __bit CWG1PPS1 __attribute__((address(0xF589)));


extern volatile __bit CWG1PPS2 __attribute__((address(0xF58A)));


extern volatile __bit CWG1PPS3 __attribute__((address(0xF58B)));


extern volatile __bit CWG1PPS4 __attribute__((address(0xF58C)));


extern volatile __bit CWG1REN __attribute__((address(0x3096)));


extern volatile __bit CWG1SHUTDOWN __attribute__((address(0x3097)));


extern volatile __bit CWG1STRA __attribute__((address(0x30A0)));


extern volatile __bit CWG1STRB __attribute__((address(0x30A1)));


extern volatile __bit CWG1STRC __attribute__((address(0x30A2)));


extern volatile __bit CWG1STRD __attribute__((address(0x30A3)));


extern volatile __bit CWG2CS __attribute__((address(0x30B0)));


extern volatile __bit CWG2DAT0 __attribute__((address(0x30B8)));


extern volatile __bit CWG2DAT1 __attribute__((address(0x30B9)));


extern volatile __bit CWG2DAT2 __attribute__((address(0x30BA)));


extern volatile __bit CWG2DAT3 __attribute__((address(0x30BB)));


extern volatile __bit CWG2DBF0 __attribute__((address(0x30C8)));


extern volatile __bit CWG2DBF1 __attribute__((address(0x30C9)));


extern volatile __bit CWG2DBF2 __attribute__((address(0x30CA)));


extern volatile __bit CWG2DBF3 __attribute__((address(0x30CB)));


extern volatile __bit CWG2DBF4 __attribute__((address(0x30CC)));


extern volatile __bit CWG2DBF5 __attribute__((address(0x30CD)));


extern volatile __bit CWG2DBR0 __attribute__((address(0x30C0)));


extern volatile __bit CWG2DBR1 __attribute__((address(0x30C1)));


extern volatile __bit CWG2DBR2 __attribute__((address(0x30C2)));


extern volatile __bit CWG2DBR3 __attribute__((address(0x30C3)));


extern volatile __bit CWG2DBR4 __attribute__((address(0x30C4)));


extern volatile __bit CWG2DBR5 __attribute__((address(0x30C5)));


extern volatile __bit CWG2EN __attribute__((address(0x30D7)));


extern volatile __bit CWG2IE __attribute__((address(0x38E9)));


extern volatile __bit CWG2IF __attribute__((address(0x3899)));


extern volatile __bit CWG2IN __attribute__((address(0x30DD)));


extern volatile __bit CWG2LD __attribute__((address(0x30D6)));


extern volatile __bit CWG2LSAC0 __attribute__((address(0x30E2)));


extern volatile __bit CWG2LSAC1 __attribute__((address(0x30E3)));


extern volatile __bit CWG2LSDB0 __attribute__((address(0x30E4)));


extern volatile __bit CWG2LSDB1 __attribute__((address(0x30E5)));


extern volatile __bit CWG2MD __attribute__((address(0x3CDE)));


extern volatile __bit CWG2MODE0 __attribute__((address(0x30D0)));


extern volatile __bit CWG2MODE1 __attribute__((address(0x30D1)));


extern volatile __bit CWG2MODE2 __attribute__((address(0x30D2)));


extern volatile __bit CWG2OVRA __attribute__((address(0x30F4)));


extern volatile __bit CWG2OVRB __attribute__((address(0x30F5)));


extern volatile __bit CWG2OVRC __attribute__((address(0x30F6)));


extern volatile __bit CWG2OVRD __attribute__((address(0x30F7)));


extern volatile __bit CWG2POLA __attribute__((address(0x30D8)));


extern volatile __bit CWG2POLB __attribute__((address(0x30D9)));


extern volatile __bit CWG2POLC __attribute__((address(0x30DA)));


extern volatile __bit CWG2POLD __attribute__((address(0x30DB)));


extern volatile __bit CWG2PPS0 __attribute__((address(0xF590)));


extern volatile __bit CWG2PPS1 __attribute__((address(0xF591)));


extern volatile __bit CWG2PPS2 __attribute__((address(0xF592)));


extern volatile __bit CWG2PPS3 __attribute__((address(0xF593)));


extern volatile __bit CWG2PPS4 __attribute__((address(0xF594)));


extern volatile __bit CWG2REN __attribute__((address(0x30E6)));


extern volatile __bit CWG2SHUTDOWN __attribute__((address(0x30E7)));


extern volatile __bit CWG2STRA __attribute__((address(0x30F0)));


extern volatile __bit CWG2STRB __attribute__((address(0x30F1)));


extern volatile __bit CWG2STRC __attribute__((address(0x30F2)));


extern volatile __bit CWG2STRD __attribute__((address(0x30F3)));


extern volatile __bit DA1 __attribute__((address(0xC7D)));


extern volatile __bit DA2 __attribute__((address(0xCCD)));


extern volatile __bit DAC1EN __attribute__((address(0x4877)));


extern volatile __bit DAC1MD __attribute__((address(0x3CCE)));


extern volatile __bit DAC1NSS __attribute__((address(0x4870)));


extern volatile __bit DAC1OE1 __attribute__((address(0x4875)));


extern volatile __bit DAC1PSS0 __attribute__((address(0x4872)));


extern volatile __bit DAC1PSS1 __attribute__((address(0x4873)));


extern volatile __bit DAC1R0 __attribute__((address(0x4878)));


extern volatile __bit DAC1R1 __attribute__((address(0x4879)));


extern volatile __bit DAC1R2 __attribute__((address(0x487A)));


extern volatile __bit DAC1R3 __attribute__((address(0x487B)));


extern volatile __bit DAC1R4 __attribute__((address(0x487C)));


extern volatile __bit DATA_ADDRESS1 __attribute__((address(0xC7D)));


extern volatile __bit DATA_ADDRESS2 __attribute__((address(0xCCD)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DOE __attribute__((address(0x4464)));


extern volatile __bit DONE __attribute__((address(0x888)));


extern volatile __bit DOZE0 __attribute__((address(0x4460)));


extern volatile __bit DOZE1 __attribute__((address(0x4461)));


extern volatile __bit DOZE2 __attribute__((address(0x4462)));


extern volatile __bit DOZEN __attribute__((address(0x4466)));


extern volatile __bit DSEN __attribute__((address(0x890)));


extern volatile __bit DSM1MD __attribute__((address(0x3CE8)));


extern volatile __bit D_A1 __attribute__((address(0xC7D)));


extern volatile __bit D_A2 __attribute__((address(0xCCD)));


extern volatile __bit D_nA1 __attribute__((address(0xC7D)));


extern volatile __bit D_nA2 __attribute__((address(0xCCD)));


extern volatile __bit ERR0 __attribute__((address(0x480)));


extern volatile __bit ERR1 __attribute__((address(0x481)));


extern volatile __bit ERR10 __attribute__((address(0x48A)));


extern volatile __bit ERR11 __attribute__((address(0x48B)));


extern volatile __bit ERR12 __attribute__((address(0x48C)));


extern volatile __bit ERR13 __attribute__((address(0x48D)));


extern volatile __bit ERR14 __attribute__((address(0x48E)));


extern volatile __bit ERR15 __attribute__((address(0x48F)));


extern volatile __bit ERR2 __attribute__((address(0x482)));


extern volatile __bit ERR3 __attribute__((address(0x483)));


extern volatile __bit ERR4 __attribute__((address(0x484)));


extern volatile __bit ERR5 __attribute__((address(0x485)));


extern volatile __bit ERR6 __attribute__((address(0x486)));


extern volatile __bit ERR7 __attribute__((address(0x487)));


extern volatile __bit ERR8 __attribute__((address(0x488)));


extern volatile __bit ERR9 __attribute__((address(0x489)));


extern volatile __bit EXTOEN __attribute__((address(0x448F)));


extern volatile __bit EXTOR __attribute__((address(0x4487)));


extern volatile __bit FERR __attribute__((address(0x8EA)));


extern volatile __bit FLTR0 __attribute__((address(0x4A0)));


extern volatile __bit FLTR1 __attribute__((address(0x4A1)));


extern volatile __bit FLTR10 __attribute__((address(0x4AA)));


extern volatile __bit FLTR11 __attribute__((address(0x4AB)));


extern volatile __bit FLTR12 __attribute__((address(0x4AC)));


extern volatile __bit FLTR13 __attribute__((address(0x4AD)));


extern volatile __bit FLTR14 __attribute__((address(0x4AE)));


extern volatile __bit FLTR15 __attribute__((address(0x4AF)));


extern volatile __bit FLTR2 __attribute__((address(0x4A2)));


extern volatile __bit FLTR3 __attribute__((address(0x4A3)));


extern volatile __bit FLTR4 __attribute__((address(0x4A4)));


extern volatile __bit FLTR5 __attribute__((address(0x4A5)));


extern volatile __bit FLTR6 __attribute__((address(0x4A6)));


extern volatile __bit FLTR7 __attribute__((address(0x4A7)));


extern volatile __bit FLTR8 __attribute__((address(0x4A8)));


extern volatile __bit FLTR9 __attribute__((address(0x4A9)));


extern volatile __bit FM0 __attribute__((address(0x88A)));


extern volatile __bit FM1 __attribute__((address(0x88B)));


extern volatile __bit FREE __attribute__((address(0x40F4)));


extern volatile __bit FVREN __attribute__((address(0x4867)));


extern volatile __bit FVRMD __attribute__((address(0x3CB6)));


extern volatile __bit FVRRDY __attribute__((address(0x4866)));


extern volatile __bit G1EN __attribute__((address(0x3087)));


extern volatile __bit G2EN __attribute__((address(0x30D7)));


extern volatile __bit GAOE __attribute__((address(0x894)));


extern volatile __bit GBOE __attribute__((address(0x893)));


extern volatile __bit GCEN1 __attribute__((address(0xC8F)));


extern volatile __bit GCEN2 __attribute__((address(0xCDF)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO_nDONE __attribute__((address(0x888)));


extern volatile __bit HFFRQ0 __attribute__((address(0x4498)));


extern volatile __bit HFFRQ1 __attribute__((address(0x4499)));


extern volatile __bit HFFRQ2 __attribute__((address(0x449A)));


extern volatile __bit HFOEN __attribute__((address(0x448E)));


extern volatile __bit HFOR __attribute__((address(0x4486)));


extern volatile __bit HFTUN0 __attribute__((address(0x4490)));


extern volatile __bit HFTUN1 __attribute__((address(0x4491)));


extern volatile __bit HFTUN2 __attribute__((address(0x4492)));


extern volatile __bit HFTUN3 __attribute__((address(0x4493)));


extern volatile __bit HFTUN4 __attribute__((address(0x4494)));


extern volatile __bit HFTUN5 __attribute__((address(0x4495)));


extern volatile __bit I2C_DAT1 __attribute__((address(0xC7D)));


extern volatile __bit I2C_DAT2 __attribute__((address(0xCCD)));


extern volatile __bit I2C_READ1 __attribute__((address(0xC7A)));


extern volatile __bit I2C_READ2 __attribute__((address(0xCCA)));


extern volatile __bit I2C_START1 __attribute__((address(0xC7B)));


extern volatile __bit I2C_START2 __attribute__((address(0xCCB)));


extern volatile __bit IDLEN __attribute__((address(0x4467)));


extern volatile __bit INC0 __attribute__((address(0x2C78)));


extern volatile __bit INC1 __attribute__((address(0x2C79)));


extern volatile __bit INC10 __attribute__((address(0x2C82)));


extern volatile __bit INC11 __attribute__((address(0x2C83)));


extern volatile __bit INC12 __attribute__((address(0x2C84)));


extern volatile __bit INC13 __attribute__((address(0x2C85)));


extern volatile __bit INC14 __attribute__((address(0x2C86)));


extern volatile __bit INC15 __attribute__((address(0x2C87)));


extern volatile __bit INC16 __attribute__((address(0x2C88)));


extern volatile __bit INC17 __attribute__((address(0x2C89)));


extern volatile __bit INC18 __attribute__((address(0x2C8A)));


extern volatile __bit INC19 __attribute__((address(0x2C8B)));


extern volatile __bit INC2 __attribute__((address(0x2C7A)));


extern volatile __bit INC3 __attribute__((address(0x2C7B)));


extern volatile __bit INC4 __attribute__((address(0x2C7C)));


extern volatile __bit INC5 __attribute__((address(0x2C7D)));


extern volatile __bit INC6 __attribute__((address(0x2C7E)));


extern volatile __bit INC7 __attribute__((address(0x2C7F)));


extern volatile __bit INC8 __attribute__((address(0x2C80)));


extern volatile __bit INC9 __attribute__((address(0x2C81)));


extern volatile __bit INLVLA0 __attribute__((address(0xF9E0)));


extern volatile __bit INLVLA1 __attribute__((address(0xF9E1)));


extern volatile __bit INLVLA2 __attribute__((address(0xF9E2)));


extern volatile __bit INLVLA3 __attribute__((address(0xF9E3)));


extern volatile __bit INLVLA4 __attribute__((address(0xF9E4)));


extern volatile __bit INLVLA5 __attribute__((address(0xF9E5)));


extern volatile __bit INLVLB4 __attribute__((address(0xFA3C)));


extern volatile __bit INLVLB5 __attribute__((address(0xFA3D)));


extern volatile __bit INLVLB6 __attribute__((address(0xFA3E)));


extern volatile __bit INLVLB7 __attribute__((address(0xFA3F)));


extern volatile __bit INLVLC0 __attribute__((address(0xFA90)));


extern volatile __bit INLVLC1 __attribute__((address(0xFA91)));


extern volatile __bit INLVLC2 __attribute__((address(0xFA92)));


extern volatile __bit INLVLC3 __attribute__((address(0xFA93)));


extern volatile __bit INLVLC4 __attribute__((address(0xFA94)));


extern volatile __bit INLVLC5 __attribute__((address(0xFA95)));


extern volatile __bit INLVLC6 __attribute__((address(0xFA96)));


extern volatile __bit INLVLC7 __attribute__((address(0xFA97)));


extern volatile __bit INTE __attribute__((address(0x38B0)));


extern volatile __bit INTEDG __attribute__((address(0x58)));


extern volatile __bit INTF __attribute__((address(0x3860)));


extern volatile __bit INTPPS0 __attribute__((address(0xF480)));


extern volatile __bit INTPPS1 __attribute__((address(0xF481)));


extern volatile __bit INTPPS2 __attribute__((address(0xF482)));


extern volatile __bit INTPPS3 __attribute__((address(0xF483)));


extern volatile __bit IOCAF0 __attribute__((address(0xF9F8)));


extern volatile __bit IOCAF1 __attribute__((address(0xF9F9)));


extern volatile __bit IOCAF2 __attribute__((address(0xF9FA)));


extern volatile __bit IOCAF3 __attribute__((address(0xF9FB)));


extern volatile __bit IOCAF4 __attribute__((address(0xF9FC)));


extern volatile __bit IOCAF5 __attribute__((address(0xF9FD)));


extern volatile __bit IOCAN0 __attribute__((address(0xF9F0)));


extern volatile __bit IOCAN1 __attribute__((address(0xF9F1)));


extern volatile __bit IOCAN2 __attribute__((address(0xF9F2)));


extern volatile __bit IOCAN3 __attribute__((address(0xF9F3)));


extern volatile __bit IOCAN4 __attribute__((address(0xF9F4)));


extern volatile __bit IOCAN5 __attribute__((address(0xF9F5)));


extern volatile __bit IOCAP0 __attribute__((address(0xF9E8)));


extern volatile __bit IOCAP1 __attribute__((address(0xF9E9)));


extern volatile __bit IOCAP2 __attribute__((address(0xF9EA)));


extern volatile __bit IOCAP3 __attribute__((address(0xF9EB)));


extern volatile __bit IOCAP4 __attribute__((address(0xF9EC)));


extern volatile __bit IOCAP5 __attribute__((address(0xF9ED)));


extern volatile __bit IOCBF4 __attribute__((address(0xFA54)));


extern volatile __bit IOCBF5 __attribute__((address(0xFA55)));


extern volatile __bit IOCBF6 __attribute__((address(0xFA56)));


extern volatile __bit IOCBF7 __attribute__((address(0xFA57)));


extern volatile __bit IOCBN4 __attribute__((address(0xFA4C)));


extern volatile __bit IOCBN5 __attribute__((address(0xFA4D)));


extern volatile __bit IOCBN6 __attribute__((address(0xFA4E)));


extern volatile __bit IOCBN7 __attribute__((address(0xFA4F)));


extern volatile __bit IOCBP4 __attribute__((address(0xFA44)));


extern volatile __bit IOCBP5 __attribute__((address(0xFA45)));


extern volatile __bit IOCBP6 __attribute__((address(0xFA46)));


extern volatile __bit IOCBP7 __attribute__((address(0xFA47)));


extern volatile __bit IOCCF0 __attribute__((address(0xFAA8)));


extern volatile __bit IOCCF1 __attribute__((address(0xFAA9)));


extern volatile __bit IOCCF2 __attribute__((address(0xFAAA)));


extern volatile __bit IOCCF3 __attribute__((address(0xFAAB)));


extern volatile __bit IOCCF4 __attribute__((address(0xFAAC)));


extern volatile __bit IOCCF5 __attribute__((address(0xFAAD)));


extern volatile __bit IOCCF6 __attribute__((address(0xFAAE)));


extern volatile __bit IOCCF7 __attribute__((address(0xFAAF)));


extern volatile __bit IOCCN0 __attribute__((address(0xFAA0)));


extern volatile __bit IOCCN1 __attribute__((address(0xFAA1)));


extern volatile __bit IOCCN2 __attribute__((address(0xFAA2)));


extern volatile __bit IOCCN3 __attribute__((address(0xFAA3)));


extern volatile __bit IOCCN4 __attribute__((address(0xFAA4)));


extern volatile __bit IOCCN5 __attribute__((address(0xFAA5)));


extern volatile __bit IOCCN6 __attribute__((address(0xFAA6)));


extern volatile __bit IOCCN7 __attribute__((address(0xFAA7)));


extern volatile __bit IOCCP0 __attribute__((address(0xFA98)));


extern volatile __bit IOCCP1 __attribute__((address(0xFA99)));


extern volatile __bit IOCCP2 __attribute__((address(0xFA9A)));


extern volatile __bit IOCCP3 __attribute__((address(0xFA9B)));


extern volatile __bit IOCCP4 __attribute__((address(0xFA9C)));


extern volatile __bit IOCCP5 __attribute__((address(0xFA9D)));


extern volatile __bit IOCCP6 __attribute__((address(0xFA9E)));


extern volatile __bit IOCCP7 __attribute__((address(0xFA9F)));


extern volatile __bit IOCIE __attribute__((address(0x38B4)));


extern volatile __bit IOCIF __attribute__((address(0x3864)));


extern volatile __bit IOCMD __attribute__((address(0x3CB0)));


extern volatile __bit IPEN __attribute__((address(0x896)));


extern volatile __bit LATA0 __attribute__((address(0xC0)));


extern volatile __bit LATA1 __attribute__((address(0xC1)));


extern volatile __bit LATA2 __attribute__((address(0xC2)));


extern volatile __bit LATA3 __attribute__((address(0xC3)));


extern volatile __bit LATA4 __attribute__((address(0xC4)));


extern volatile __bit LATA5 __attribute__((address(0xC5)));


extern volatile __bit LATB4 __attribute__((address(0xCC)));


extern volatile __bit LATB5 __attribute__((address(0xCD)));


extern volatile __bit LATB6 __attribute__((address(0xCE)));


extern volatile __bit LATB7 __attribute__((address(0xCF)));


extern volatile __bit LATC0 __attribute__((address(0xD0)));


extern volatile __bit LATC1 __attribute__((address(0xD1)));


extern volatile __bit LATC2 __attribute__((address(0xD2)));


extern volatile __bit LATC3 __attribute__((address(0xD3)));


extern volatile __bit LATC4 __attribute__((address(0xD4)));


extern volatile __bit LATC5 __attribute__((address(0xD5)));


extern volatile __bit LATC6 __attribute__((address(0xD6)));


extern volatile __bit LATC7 __attribute__((address(0xD7)));


extern volatile __bit LC1D1S0 __attribute__((address(0xF090)));


extern volatile __bit LC1D1S1 __attribute__((address(0xF091)));


extern volatile __bit LC1D1S2 __attribute__((address(0xF092)));


extern volatile __bit LC1D1S3 __attribute__((address(0xF093)));


extern volatile __bit LC1D1S4 __attribute__((address(0xF094)));


extern volatile __bit LC1D1S5 __attribute__((address(0xF095)));


extern volatile __bit LC1D2S0 __attribute__((address(0xF098)));


extern volatile __bit LC1D2S1 __attribute__((address(0xF099)));


extern volatile __bit LC1D2S2 __attribute__((address(0xF09A)));


extern volatile __bit LC1D2S3 __attribute__((address(0xF09B)));


extern volatile __bit LC1D2S4 __attribute__((address(0xF09C)));


extern volatile __bit LC1D2S5 __attribute__((address(0xF09D)));


extern volatile __bit LC1D3S0 __attribute__((address(0xF0A0)));


extern volatile __bit LC1D3S1 __attribute__((address(0xF0A1)));


extern volatile __bit LC1D3S2 __attribute__((address(0xF0A2)));


extern volatile __bit LC1D3S3 __attribute__((address(0xF0A3)));


extern volatile __bit LC1D3S4 __attribute__((address(0xF0A4)));


extern volatile __bit LC1D3S5 __attribute__((address(0xF0A5)));


extern volatile __bit LC1D4S0 __attribute__((address(0xF0A8)));


extern volatile __bit LC1D4S1 __attribute__((address(0xF0A9)));


extern volatile __bit LC1D4S2 __attribute__((address(0xF0AA)));


extern volatile __bit LC1D4S3 __attribute__((address(0xF0AB)));


extern volatile __bit LC1D4S4 __attribute__((address(0xF0AC)));


extern volatile __bit LC1D4S5 __attribute__((address(0xF0AD)));


extern volatile __bit LC1EN __attribute__((address(0xF087)));


extern volatile __bit LC1G1D1N __attribute__((address(0xF0B0)));


extern volatile __bit LC1G1D1T __attribute__((address(0xF0B1)));


extern volatile __bit LC1G1D2N __attribute__((address(0xF0B2)));


extern volatile __bit LC1G1D2T __attribute__((address(0xF0B3)));


extern volatile __bit LC1G1D3N __attribute__((address(0xF0B4)));


extern volatile __bit LC1G1D3T __attribute__((address(0xF0B5)));


extern volatile __bit LC1G1D4N __attribute__((address(0xF0B6)));


extern volatile __bit LC1G1D4T __attribute__((address(0xF0B7)));


extern volatile __bit LC1G1POL __attribute__((address(0xF088)));


extern volatile __bit LC1G2D1N __attribute__((address(0xF0B8)));


extern volatile __bit LC1G2D1T __attribute__((address(0xF0B9)));


extern volatile __bit LC1G2D2N __attribute__((address(0xF0BA)));


extern volatile __bit LC1G2D2T __attribute__((address(0xF0BB)));


extern volatile __bit LC1G2D3N __attribute__((address(0xF0BC)));


extern volatile __bit LC1G2D3T __attribute__((address(0xF0BD)));


extern volatile __bit LC1G2D4N __attribute__((address(0xF0BE)));


extern volatile __bit LC1G2D4T __attribute__((address(0xF0BF)));


extern volatile __bit LC1G2POL __attribute__((address(0xF089)));


extern volatile __bit LC1G3D1N __attribute__((address(0xF0C0)));


extern volatile __bit LC1G3D1T __attribute__((address(0xF0C1)));


extern volatile __bit LC1G3D2N __attribute__((address(0xF0C2)));


extern volatile __bit LC1G3D2T __attribute__((address(0xF0C3)));


extern volatile __bit LC1G3D3N __attribute__((address(0xF0C4)));


extern volatile __bit LC1G3D3T __attribute__((address(0xF0C5)));


extern volatile __bit LC1G3D4N __attribute__((address(0xF0C6)));


extern volatile __bit LC1G3D4T __attribute__((address(0xF0C7)));


extern volatile __bit LC1G3POL __attribute__((address(0xF08A)));


extern volatile __bit LC1G4D1N __attribute__((address(0xF0C8)));


extern volatile __bit LC1G4D1T __attribute__((address(0xF0C9)));


extern volatile __bit LC1G4D2N __attribute__((address(0xF0CA)));


extern volatile __bit LC1G4D2T __attribute__((address(0xF0CB)));


extern volatile __bit LC1G4D3N __attribute__((address(0xF0CC)));


extern volatile __bit LC1G4D3T __attribute__((address(0xF0CD)));


extern volatile __bit LC1G4D4N __attribute__((address(0xF0CE)));


extern volatile __bit LC1G4D4T __attribute__((address(0xF0CF)));


extern volatile __bit LC1G4POL __attribute__((address(0xF08B)));


extern volatile __bit LC1INTN __attribute__((address(0xF083)));


extern volatile __bit LC1INTP __attribute__((address(0xF084)));


extern volatile __bit LC1MODE0 __attribute__((address(0xF080)));


extern volatile __bit LC1MODE1 __attribute__((address(0xF081)));


extern volatile __bit LC1MODE2 __attribute__((address(0xF082)));


extern volatile __bit LC1OUT __attribute__((address(0xF085)));


extern volatile __bit LC1POL __attribute__((address(0xF08F)));


extern volatile __bit LC2D1S0 __attribute__((address(0xF0E0)));


extern volatile __bit LC2D1S1 __attribute__((address(0xF0E1)));


extern volatile __bit LC2D1S2 __attribute__((address(0xF0E2)));


extern volatile __bit LC2D1S3 __attribute__((address(0xF0E3)));


extern volatile __bit LC2D1S4 __attribute__((address(0xF0E4)));


extern volatile __bit LC2D1S5 __attribute__((address(0xF0E5)));


extern volatile __bit LC2D2S0 __attribute__((address(0xF0E8)));


extern volatile __bit LC2D2S1 __attribute__((address(0xF0E9)));


extern volatile __bit LC2D2S2 __attribute__((address(0xF0EA)));


extern volatile __bit LC2D2S3 __attribute__((address(0xF0EB)));


extern volatile __bit LC2D2S4 __attribute__((address(0xF0EC)));


extern volatile __bit LC2D2S5 __attribute__((address(0xF0ED)));


extern volatile __bit LC2D3S0 __attribute__((address(0xF0F0)));


extern volatile __bit LC2D3S1 __attribute__((address(0xF0F1)));


extern volatile __bit LC2D3S2 __attribute__((address(0xF0F2)));


extern volatile __bit LC2D3S3 __attribute__((address(0xF0F3)));


extern volatile __bit LC2D3S4 __attribute__((address(0xF0F4)));


extern volatile __bit LC2D3S5 __attribute__((address(0xF0F5)));


extern volatile __bit LC2D4S0 __attribute__((address(0xF0F8)));


extern volatile __bit LC2D4S1 __attribute__((address(0xF0F9)));


extern volatile __bit LC2D4S2 __attribute__((address(0xF0FA)));


extern volatile __bit LC2D4S3 __attribute__((address(0xF0FB)));


extern volatile __bit LC2D4S4 __attribute__((address(0xF0FC)));


extern volatile __bit LC2D4S5 __attribute__((address(0xF0FD)));


extern volatile __bit LC2EN __attribute__((address(0xF0D7)));


extern volatile __bit LC2G1D1N __attribute__((address(0xF100)));


extern volatile __bit LC2G1D1T __attribute__((address(0xF101)));


extern volatile __bit LC2G1D2N __attribute__((address(0xF102)));


extern volatile __bit LC2G1D2T __attribute__((address(0xF103)));


extern volatile __bit LC2G1D3N __attribute__((address(0xF104)));


extern volatile __bit LC2G1D3T __attribute__((address(0xF105)));


extern volatile __bit LC2G1D4N __attribute__((address(0xF106)));


extern volatile __bit LC2G1D4T __attribute__((address(0xF107)));


extern volatile __bit LC2G1POL __attribute__((address(0xF0D8)));


extern volatile __bit LC2G2D1N __attribute__((address(0xF108)));


extern volatile __bit LC2G2D1T __attribute__((address(0xF109)));


extern volatile __bit LC2G2D2N __attribute__((address(0xF10A)));


extern volatile __bit LC2G2D2T __attribute__((address(0xF10B)));


extern volatile __bit LC2G2D3N __attribute__((address(0xF10C)));


extern volatile __bit LC2G2D3T __attribute__((address(0xF10D)));


extern volatile __bit LC2G2D4N __attribute__((address(0xF10E)));


extern volatile __bit LC2G2D4T __attribute__((address(0xF10F)));


extern volatile __bit LC2G2POL __attribute__((address(0xF0D9)));


extern volatile __bit LC2G3D1N __attribute__((address(0xF110)));


extern volatile __bit LC2G3D1T __attribute__((address(0xF111)));


extern volatile __bit LC2G3D2N __attribute__((address(0xF112)));


extern volatile __bit LC2G3D2T __attribute__((address(0xF113)));


extern volatile __bit LC2G3D3N __attribute__((address(0xF114)));


extern volatile __bit LC2G3D3T __attribute__((address(0xF115)));


extern volatile __bit LC2G3D4N __attribute__((address(0xF116)));


extern volatile __bit LC2G3D4T __attribute__((address(0xF117)));


extern volatile __bit LC2G3POL __attribute__((address(0xF0DA)));


extern volatile __bit LC2G4D1N __attribute__((address(0xF118)));


extern volatile __bit LC2G4D1T __attribute__((address(0xF119)));


extern volatile __bit LC2G4D2N __attribute__((address(0xF11A)));


extern volatile __bit LC2G4D2T __attribute__((address(0xF11B)));


extern volatile __bit LC2G4D3N __attribute__((address(0xF11C)));


extern volatile __bit LC2G4D3T __attribute__((address(0xF11D)));


extern volatile __bit LC2G4D4N __attribute__((address(0xF11E)));


extern volatile __bit LC2G4D4T __attribute__((address(0xF11F)));


extern volatile __bit LC2G4POL __attribute__((address(0xF0DB)));


extern volatile __bit LC2INTN __attribute__((address(0xF0D3)));


extern volatile __bit LC2INTP __attribute__((address(0xF0D4)));


extern volatile __bit LC2MODE0 __attribute__((address(0xF0D0)));


extern volatile __bit LC2MODE1 __attribute__((address(0xF0D1)));


extern volatile __bit LC2MODE2 __attribute__((address(0xF0D2)));


extern volatile __bit LC2OUT __attribute__((address(0xF0D5)));


extern volatile __bit LC2POL __attribute__((address(0xF0DF)));


extern volatile __bit LC3D1S0 __attribute__((address(0xF130)));


extern volatile __bit LC3D1S1 __attribute__((address(0xF131)));


extern volatile __bit LC3D1S2 __attribute__((address(0xF132)));


extern volatile __bit LC3D1S3 __attribute__((address(0xF133)));


extern volatile __bit LC3D1S4 __attribute__((address(0xF134)));


extern volatile __bit LC3D1S5 __attribute__((address(0xF135)));


extern volatile __bit LC3D2S0 __attribute__((address(0xF138)));


extern volatile __bit LC3D2S1 __attribute__((address(0xF139)));


extern volatile __bit LC3D2S2 __attribute__((address(0xF13A)));


extern volatile __bit LC3D2S3 __attribute__((address(0xF13B)));


extern volatile __bit LC3D2S4 __attribute__((address(0xF13C)));


extern volatile __bit LC3D2S5 __attribute__((address(0xF13D)));


extern volatile __bit LC3D3S0 __attribute__((address(0xF140)));


extern volatile __bit LC3D3S1 __attribute__((address(0xF141)));


extern volatile __bit LC3D3S2 __attribute__((address(0xF142)));


extern volatile __bit LC3D3S3 __attribute__((address(0xF143)));


extern volatile __bit LC3D3S4 __attribute__((address(0xF144)));


extern volatile __bit LC3D3S5 __attribute__((address(0xF145)));


extern volatile __bit LC3D4S0 __attribute__((address(0xF148)));


extern volatile __bit LC3D4S1 __attribute__((address(0xF149)));


extern volatile __bit LC3D4S2 __attribute__((address(0xF14A)));


extern volatile __bit LC3D4S3 __attribute__((address(0xF14B)));


extern volatile __bit LC3D4S4 __attribute__((address(0xF14C)));


extern volatile __bit LC3D4S5 __attribute__((address(0xF14D)));


extern volatile __bit LC3EN __attribute__((address(0xF127)));


extern volatile __bit LC3G1D1N __attribute__((address(0xF150)));


extern volatile __bit LC3G1D1T __attribute__((address(0xF151)));


extern volatile __bit LC3G1D2N __attribute__((address(0xF152)));


extern volatile __bit LC3G1D2T __attribute__((address(0xF153)));


extern volatile __bit LC3G1D3N __attribute__((address(0xF154)));


extern volatile __bit LC3G1D3T __attribute__((address(0xF155)));


extern volatile __bit LC3G1D4N __attribute__((address(0xF156)));


extern volatile __bit LC3G1D4T __attribute__((address(0xF157)));


extern volatile __bit LC3G1POL __attribute__((address(0xF128)));


extern volatile __bit LC3G2D1N __attribute__((address(0xF158)));


extern volatile __bit LC3G2D1T __attribute__((address(0xF159)));


extern volatile __bit LC3G2D2N __attribute__((address(0xF15A)));


extern volatile __bit LC3G2D2T __attribute__((address(0xF15B)));


extern volatile __bit LC3G2D3N __attribute__((address(0xF15C)));


extern volatile __bit LC3G2D3T __attribute__((address(0xF15D)));


extern volatile __bit LC3G2D4N __attribute__((address(0xF15E)));


extern volatile __bit LC3G2D4T __attribute__((address(0xF15F)));


extern volatile __bit LC3G2POL __attribute__((address(0xF129)));


extern volatile __bit LC3G3D1N __attribute__((address(0xF160)));


extern volatile __bit LC3G3D1T __attribute__((address(0xF161)));


extern volatile __bit LC3G3D2N __attribute__((address(0xF162)));


extern volatile __bit LC3G3D2T __attribute__((address(0xF163)));


extern volatile __bit LC3G3D3N __attribute__((address(0xF164)));


extern volatile __bit LC3G3D3T __attribute__((address(0xF165)));


extern volatile __bit LC3G3D4N __attribute__((address(0xF166)));


extern volatile __bit LC3G3D4T __attribute__((address(0xF167)));


extern volatile __bit LC3G3POL __attribute__((address(0xF12A)));


extern volatile __bit LC3G4D1N __attribute__((address(0xF168)));


extern volatile __bit LC3G4D1T __attribute__((address(0xF169)));


extern volatile __bit LC3G4D2N __attribute__((address(0xF16A)));


extern volatile __bit LC3G4D2T __attribute__((address(0xF16B)));


extern volatile __bit LC3G4D3N __attribute__((address(0xF16C)));


extern volatile __bit LC3G4D3T __attribute__((address(0xF16D)));


extern volatile __bit LC3G4D4N __attribute__((address(0xF16E)));


extern volatile __bit LC3G4D4T __attribute__((address(0xF16F)));


extern volatile __bit LC3G4POL __attribute__((address(0xF12B)));


extern volatile __bit LC3INTN __attribute__((address(0xF123)));


extern volatile __bit LC3INTP __attribute__((address(0xF124)));


extern volatile __bit LC3MODE0 __attribute__((address(0xF120)));


extern volatile __bit LC3MODE1 __attribute__((address(0xF121)));


extern volatile __bit LC3MODE2 __attribute__((address(0xF122)));


extern volatile __bit LC3OUT __attribute__((address(0xF125)));


extern volatile __bit LC3POL __attribute__((address(0xF12F)));


extern volatile __bit LC4D1S0 __attribute__((address(0xF180)));


extern volatile __bit LC4D1S1 __attribute__((address(0xF181)));


extern volatile __bit LC4D1S2 __attribute__((address(0xF182)));


extern volatile __bit LC4D1S3 __attribute__((address(0xF183)));


extern volatile __bit LC4D1S4 __attribute__((address(0xF184)));


extern volatile __bit LC4D1S5 __attribute__((address(0xF185)));


extern volatile __bit LC4D2S0 __attribute__((address(0xF188)));


extern volatile __bit LC4D2S1 __attribute__((address(0xF189)));


extern volatile __bit LC4D2S2 __attribute__((address(0xF18A)));


extern volatile __bit LC4D2S3 __attribute__((address(0xF18B)));


extern volatile __bit LC4D2S4 __attribute__((address(0xF18C)));


extern volatile __bit LC4D2S5 __attribute__((address(0xF18D)));


extern volatile __bit LC4D3S0 __attribute__((address(0xF190)));


extern volatile __bit LC4D3S1 __attribute__((address(0xF191)));


extern volatile __bit LC4D3S2 __attribute__((address(0xF192)));


extern volatile __bit LC4D3S3 __attribute__((address(0xF193)));


extern volatile __bit LC4D3S4 __attribute__((address(0xF194)));


extern volatile __bit LC4D3S5 __attribute__((address(0xF195)));


extern volatile __bit LC4D4S0 __attribute__((address(0xF198)));


extern volatile __bit LC4D4S1 __attribute__((address(0xF199)));


extern volatile __bit LC4D4S2 __attribute__((address(0xF19A)));


extern volatile __bit LC4D4S3 __attribute__((address(0xF19B)));


extern volatile __bit LC4D4S4 __attribute__((address(0xF19C)));


extern volatile __bit LC4D4S5 __attribute__((address(0xF19D)));


extern volatile __bit LC4EN __attribute__((address(0xF177)));


extern volatile __bit LC4G1D1N __attribute__((address(0xF1A0)));


extern volatile __bit LC4G1D1T __attribute__((address(0xF1A1)));


extern volatile __bit LC4G1D2N __attribute__((address(0xF1A2)));


extern volatile __bit LC4G1D2T __attribute__((address(0xF1A3)));


extern volatile __bit LC4G1D3N __attribute__((address(0xF1A4)));


extern volatile __bit LC4G1D3T __attribute__((address(0xF1A5)));


extern volatile __bit LC4G1D4N __attribute__((address(0xF1A6)));


extern volatile __bit LC4G1D4T __attribute__((address(0xF1A7)));


extern volatile __bit LC4G1POL __attribute__((address(0xF178)));


extern volatile __bit LC4G2D1N __attribute__((address(0xF1A8)));


extern volatile __bit LC4G2D1T __attribute__((address(0xF1A9)));


extern volatile __bit LC4G2D2N __attribute__((address(0xF1AA)));


extern volatile __bit LC4G2D2T __attribute__((address(0xF1AB)));


extern volatile __bit LC4G2D3N __attribute__((address(0xF1AC)));


extern volatile __bit LC4G2D3T __attribute__((address(0xF1AD)));


extern volatile __bit LC4G2D4N __attribute__((address(0xF1AE)));


extern volatile __bit LC4G2D4T __attribute__((address(0xF1AF)));


extern volatile __bit LC4G2POL __attribute__((address(0xF179)));


extern volatile __bit LC4G3D1N __attribute__((address(0xF1B0)));


extern volatile __bit LC4G3D1T __attribute__((address(0xF1B1)));


extern volatile __bit LC4G3D2N __attribute__((address(0xF1B2)));


extern volatile __bit LC4G3D2T __attribute__((address(0xF1B3)));


extern volatile __bit LC4G3D3N __attribute__((address(0xF1B4)));


extern volatile __bit LC4G3D3T __attribute__((address(0xF1B5)));


extern volatile __bit LC4G3D4N __attribute__((address(0xF1B6)));


extern volatile __bit LC4G3D4T __attribute__((address(0xF1B7)));


extern volatile __bit LC4G3POL __attribute__((address(0xF17A)));


extern volatile __bit LC4G4D1N __attribute__((address(0xF1B8)));


extern volatile __bit LC4G4D1T __attribute__((address(0xF1B9)));


extern volatile __bit LC4G4D2N __attribute__((address(0xF1BA)));


extern volatile __bit LC4G4D2T __attribute__((address(0xF1BB)));


extern volatile __bit LC4G4D3N __attribute__((address(0xF1BC)));


extern volatile __bit LC4G4D3T __attribute__((address(0xF1BD)));


extern volatile __bit LC4G4D4N __attribute__((address(0xF1BE)));


extern volatile __bit LC4G4D4T __attribute__((address(0xF1BF)));


extern volatile __bit LC4G4POL __attribute__((address(0xF17B)));


extern volatile __bit LC4INTN __attribute__((address(0xF173)));


extern volatile __bit LC4INTP __attribute__((address(0xF174)));


extern volatile __bit LC4MODE0 __attribute__((address(0xF170)));


extern volatile __bit LC4MODE1 __attribute__((address(0xF171)));


extern volatile __bit LC4MODE2 __attribute__((address(0xF172)));


extern volatile __bit LC4OUT __attribute__((address(0xF175)));


extern volatile __bit LC4POL __attribute__((address(0xF17F)));


extern volatile __bit LFOEN __attribute__((address(0x448C)));


extern volatile __bit LFOR __attribute__((address(0x4484)));


extern volatile __bit LTH0 __attribute__((address(0x460)));


extern volatile __bit LTH1 __attribute__((address(0x461)));


extern volatile __bit LTH10 __attribute__((address(0x46A)));


extern volatile __bit LTH11 __attribute__((address(0x46B)));


extern volatile __bit LTH12 __attribute__((address(0x46C)));


extern volatile __bit LTH13 __attribute__((address(0x46D)));


extern volatile __bit LTH14 __attribute__((address(0x46E)));


extern volatile __bit LTH15 __attribute__((address(0x46F)));


extern volatile __bit LTH2 __attribute__((address(0x462)));


extern volatile __bit LTH3 __attribute__((address(0x463)));


extern volatile __bit LTH4 __attribute__((address(0x464)));


extern volatile __bit LTH5 __attribute__((address(0x465)));


extern volatile __bit LTH6 __attribute__((address(0x466)));


extern volatile __bit LTH7 __attribute__((address(0x467)));


extern volatile __bit LTH8 __attribute__((address(0x468)));


extern volatile __bit LTH9 __attribute__((address(0x469)));


extern volatile __bit LTHR __attribute__((address(0x8AD)));


extern volatile __bit LWLO __attribute__((address(0x40F5)));


extern volatile __bit MATH __attribute__((address(0x8AC)));


extern volatile __bit MC1OUT __attribute__((address(0x4C78)));


extern volatile __bit MC2OUT __attribute__((address(0x4C79)));


extern volatile __bit MD0 __attribute__((address(0x898)));


extern volatile __bit MD1 __attribute__((address(0x899)));


extern volatile __bit MD16 __attribute__((address(0x2CF4)));


extern volatile __bit MD1BIT __attribute__((address(0x44B8)));


extern volatile __bit MD1CH0 __attribute__((address(0x44D8)));


extern volatile __bit MD1CH1 __attribute__((address(0x44D9)));


extern volatile __bit MD1CH2 __attribute__((address(0x44DA)));


extern volatile __bit MD1CH3 __attribute__((address(0x44DB)));


extern volatile __bit MD1CHPOL __attribute__((address(0x44C5)));


extern volatile __bit MD1CHSYNC __attribute__((address(0x44C4)));


extern volatile __bit MD1CL0 __attribute__((address(0x44D0)));


extern volatile __bit MD1CL1 __attribute__((address(0x44D1)));


extern volatile __bit MD1CL2 __attribute__((address(0x44D2)));


extern volatile __bit MD1CL3 __attribute__((address(0x44D3)));


extern volatile __bit MD1CLPOL __attribute__((address(0x44C1)));


extern volatile __bit MD1CLSYNC __attribute__((address(0x44C0)));


extern volatile __bit MD1EN __attribute__((address(0x44BF)));


extern volatile __bit MD1MS0 __attribute__((address(0x44C8)));


extern volatile __bit MD1MS1 __attribute__((address(0x44C9)));


extern volatile __bit MD1MS2 __attribute__((address(0x44CA)));


extern volatile __bit MD1MS3 __attribute__((address(0x44CB)));


extern volatile __bit MD1MS4 __attribute__((address(0x44CC)));


extern volatile __bit MD1OPOL __attribute__((address(0x44BC)));


extern volatile __bit MD1OUT __attribute__((address(0x44BD)));


extern volatile __bit MD2 __attribute__((address(0x89A)));


extern volatile __bit MDCARHPPS0 __attribute__((address(0xF5C8)));


extern volatile __bit MDCARHPPS1 __attribute__((address(0xF5C9)));


extern volatile __bit MDCARHPPS2 __attribute__((address(0xF5CA)));


extern volatile __bit MDCARHPPS3 __attribute__((address(0xF5CB)));


extern volatile __bit MDCARHPPS4 __attribute__((address(0xF5CC)));


extern volatile __bit MDCARLPPS0 __attribute__((address(0xF5C0)));


extern volatile __bit MDCARLPPS1 __attribute__((address(0xF5C1)));


extern volatile __bit MDCARLPPS2 __attribute__((address(0xF5C2)));


extern volatile __bit MDCARLPPS3 __attribute__((address(0xF5C3)));


extern volatile __bit MDCARLPPS4 __attribute__((address(0xF5C4)));


extern volatile __bit MDSRCPPS0 __attribute__((address(0xF5D0)));


extern volatile __bit MDSRCPPS1 __attribute__((address(0xF5D1)));


extern volatile __bit MDSRCPPS2 __attribute__((address(0xF5D2)));


extern volatile __bit MDSRCPPS3 __attribute__((address(0xF5D3)));


extern volatile __bit MDSRCPPS4 __attribute__((address(0xF5D4)));


extern volatile __bit MFOEN __attribute__((address(0x448D)));


extern volatile __bit MFOR __attribute__((address(0x4485)));


extern volatile __bit MLC1OUT __attribute__((address(0xF078)));


extern volatile __bit MLC2OUT __attribute__((address(0xF079)));


extern volatile __bit MLC3OUT __attribute__((address(0xF07A)));


extern volatile __bit MLC4OUT __attribute__((address(0xF07B)));


extern volatile __bit MS0 __attribute__((address(0x44C8)));


extern volatile __bit MS1 __attribute__((address(0x44C9)));


extern volatile __bit MS2 __attribute__((address(0x44CA)));


extern volatile __bit MS3 __attribute__((address(0x44CB)));


extern volatile __bit MS4 __attribute__((address(0x44CC)));


extern volatile __bit MSK01 __attribute__((address(0xC68)));


extern volatile __bit MSK02 __attribute__((address(0xCB8)));


extern volatile __bit MSK11 __attribute__((address(0xC69)));


extern volatile __bit MSK12 __attribute__((address(0xCB9)));


extern volatile __bit MSK21 __attribute__((address(0xC6A)));


extern volatile __bit MSK22 __attribute__((address(0xCBA)));


extern volatile __bit MSK31 __attribute__((address(0xC6B)));


extern volatile __bit MSK32 __attribute__((address(0xCBB)));


extern volatile __bit MSK41 __attribute__((address(0xC6C)));


extern volatile __bit MSK42 __attribute__((address(0xCBC)));


extern volatile __bit MSK51 __attribute__((address(0xC6D)));


extern volatile __bit MSK52 __attribute__((address(0xCBD)));


extern volatile __bit MSK61 __attribute__((address(0xC6E)));


extern volatile __bit MSK62 __attribute__((address(0xCBE)));


extern volatile __bit MSK71 __attribute__((address(0xC6F)));


extern volatile __bit MSK72 __attribute__((address(0xCBF)));


extern volatile __bit MSSP1MD __attribute__((address(0x3CE0)));


extern volatile __bit MSSP2MD __attribute__((address(0x3CE1)));


extern volatile __bit NCO1ACC0 __attribute__((address(0x2C60)));


extern volatile __bit NCO1ACC1 __attribute__((address(0x2C61)));


extern volatile __bit NCO1ACC10 __attribute__((address(0x2C6A)));


extern volatile __bit NCO1ACC11 __attribute__((address(0x2C6B)));


extern volatile __bit NCO1ACC12 __attribute__((address(0x2C6C)));


extern volatile __bit NCO1ACC13 __attribute__((address(0x2C6D)));


extern volatile __bit NCO1ACC14 __attribute__((address(0x2C6E)));


extern volatile __bit NCO1ACC15 __attribute__((address(0x2C6F)));


extern volatile __bit NCO1ACC16 __attribute__((address(0x2C70)));


extern volatile __bit NCO1ACC17 __attribute__((address(0x2C71)));


extern volatile __bit NCO1ACC18 __attribute__((address(0x2C72)));


extern volatile __bit NCO1ACC19 __attribute__((address(0x2C73)));


extern volatile __bit NCO1ACC2 __attribute__((address(0x2C62)));


extern volatile __bit NCO1ACC3 __attribute__((address(0x2C63)));


extern volatile __bit NCO1ACC4 __attribute__((address(0x2C64)));


extern volatile __bit NCO1ACC5 __attribute__((address(0x2C65)));


extern volatile __bit NCO1ACC6 __attribute__((address(0x2C66)));


extern volatile __bit NCO1ACC7 __attribute__((address(0x2C67)));


extern volatile __bit NCO1ACC8 __attribute__((address(0x2C68)));


extern volatile __bit NCO1ACC9 __attribute__((address(0x2C69)));


extern volatile __bit NCO1CKS0 __attribute__((address(0x2C98)));


extern volatile __bit NCO1CKS1 __attribute__((address(0x2C99)));


extern volatile __bit NCO1CKS2 __attribute__((address(0x2C9A)));


extern volatile __bit NCO1CKS3 __attribute__((address(0x2C9B)));


extern volatile __bit NCO1EN __attribute__((address(0x2C97)));


extern volatile __bit NCO1IE __attribute__((address(0x38EC)));


extern volatile __bit NCO1IF __attribute__((address(0x389C)));


extern volatile __bit NCO1INC0 __attribute__((address(0x2C78)));


extern volatile __bit NCO1INC1 __attribute__((address(0x2C79)));


extern volatile __bit NCO1INC10 __attribute__((address(0x2C82)));


extern volatile __bit NCO1INC11 __attribute__((address(0x2C83)));


extern volatile __bit NCO1INC12 __attribute__((address(0x2C84)));


extern volatile __bit NCO1INC13 __attribute__((address(0x2C85)));


extern volatile __bit NCO1INC14 __attribute__((address(0x2C86)));


extern volatile __bit NCO1INC15 __attribute__((address(0x2C87)));


extern volatile __bit NCO1INC16 __attribute__((address(0x2C88)));


extern volatile __bit NCO1INC17 __attribute__((address(0x2C89)));


extern volatile __bit NCO1INC18 __attribute__((address(0x2C8A)));


extern volatile __bit NCO1INC19 __attribute__((address(0x2C8B)));


extern volatile __bit NCO1INC2 __attribute__((address(0x2C7A)));


extern volatile __bit NCO1INC3 __attribute__((address(0x2C7B)));


extern volatile __bit NCO1INC4 __attribute__((address(0x2C7C)));


extern volatile __bit NCO1INC5 __attribute__((address(0x2C7D)));


extern volatile __bit NCO1INC6 __attribute__((address(0x2C7E)));


extern volatile __bit NCO1INC7 __attribute__((address(0x2C7F)));


extern volatile __bit NCO1INC8 __attribute__((address(0x2C80)));


extern volatile __bit NCO1INC9 __attribute__((address(0x2C81)));


extern volatile __bit NCO1MD __attribute__((address(0x3CC7)));


extern volatile __bit NCO1OUT __attribute__((address(0x2C95)));


extern volatile __bit NCO1PFM __attribute__((address(0x2C90)));


extern volatile __bit NCO1POL __attribute__((address(0x2C94)));


extern volatile __bit NCO1PWS0 __attribute__((address(0x2C9D)));


extern volatile __bit NCO1PWS1 __attribute__((address(0x2C9E)));


extern volatile __bit NCO1PWS2 __attribute__((address(0x2C9F)));


extern volatile __bit NCOIE __attribute__((address(0x38EC)));


extern volatile __bit NDIV0 __attribute__((address(0x4468)));


extern volatile __bit NDIV1 __attribute__((address(0x4469)));


extern volatile __bit NDIV2 __attribute__((address(0x446A)));


extern volatile __bit NDIV3 __attribute__((address(0x446B)));


extern volatile __bit NOSC0 __attribute__((address(0x446C)));


extern volatile __bit NOSC1 __attribute__((address(0x446D)));


extern volatile __bit NOSC2 __attribute__((address(0x446E)));


extern volatile __bit NOSCR __attribute__((address(0x447B)));


extern volatile __bit NOT_T1DONE __attribute__((address(0x107B)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x1072)));


extern volatile __bit NOT_T3DONE __attribute__((address(0x10AB)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x10A2)));


extern volatile __bit NOT_T5DONE __attribute__((address(0x10DB)));


extern volatile __bit NOT_T5SYNC __attribute__((address(0x10D2)));


extern volatile __bit NREF0 __attribute__((address(0x8B4)));


extern volatile __bit NREF1 __attribute__((address(0x8B5)));


extern volatile __bit NREF2 __attribute__((address(0x8B6)));


extern volatile __bit NREF3 __attribute__((address(0x8B7)));


extern volatile __bit NSS __attribute__((address(0x4870)));


extern volatile __bit NVMADRH0 __attribute__((address(0x40D8)));


extern volatile __bit NVMADRH1 __attribute__((address(0x40D9)));


extern volatile __bit NVMADRH2 __attribute__((address(0x40DA)));


extern volatile __bit NVMADRH3 __attribute__((address(0x40DB)));


extern volatile __bit NVMADRH4 __attribute__((address(0x40DC)));


extern volatile __bit NVMADRH5 __attribute__((address(0x40DD)));


extern volatile __bit NVMADRH6 __attribute__((address(0x40DE)));


extern volatile __bit NVMADRL0 __attribute__((address(0x40D0)));


extern volatile __bit NVMADRL1 __attribute__((address(0x40D1)));


extern volatile __bit NVMADRL2 __attribute__((address(0x40D2)));


extern volatile __bit NVMADRL3 __attribute__((address(0x40D3)));


extern volatile __bit NVMADRL4 __attribute__((address(0x40D4)));


extern volatile __bit NVMADRL5 __attribute__((address(0x40D5)));


extern volatile __bit NVMADRL6 __attribute__((address(0x40D6)));


extern volatile __bit NVMADRL7 __attribute__((address(0x40D7)));


extern volatile __bit NVMDATH0 __attribute__((address(0x40E8)));


extern volatile __bit NVMDATH1 __attribute__((address(0x40E9)));


extern volatile __bit NVMDATH2 __attribute__((address(0x40EA)));


extern volatile __bit NVMDATH3 __attribute__((address(0x40EB)));


extern volatile __bit NVMDATH4 __attribute__((address(0x40EC)));


extern volatile __bit NVMDATH5 __attribute__((address(0x40ED)));


extern volatile __bit NVMDATL0 __attribute__((address(0x40E0)));


extern volatile __bit NVMDATL1 __attribute__((address(0x40E1)));


extern volatile __bit NVMDATL2 __attribute__((address(0x40E2)));


extern volatile __bit NVMDATL3 __attribute__((address(0x40E3)));


extern volatile __bit NVMDATL4 __attribute__((address(0x40E4)));


extern volatile __bit NVMDATL5 __attribute__((address(0x40E5)));


extern volatile __bit NVMDATL6 __attribute__((address(0x40E6)));


extern volatile __bit NVMDATL7 __attribute__((address(0x40E7)));


extern volatile __bit NVMIE __attribute__((address(0x38ED)));


extern volatile __bit NVMIF __attribute__((address(0x389D)));


extern volatile __bit NVMMD __attribute__((address(0x3CB2)));


extern volatile __bit NVMREGS __attribute__((address(0x40F6)));


extern volatile __bit ODCA0 __attribute__((address(0xF9D0)));


extern volatile __bit ODCA1 __attribute__((address(0xF9D1)));


extern volatile __bit ODCA2 __attribute__((address(0xF9D2)));


extern volatile __bit ODCA4 __attribute__((address(0xF9D4)));


extern volatile __bit ODCA5 __attribute__((address(0xF9D5)));


extern volatile __bit ODCB4 __attribute__((address(0xFA2C)));


extern volatile __bit ODCB5 __attribute__((address(0xFA2D)));


extern volatile __bit ODCB6 __attribute__((address(0xFA2E)));


extern volatile __bit ODCB7 __attribute__((address(0xFA2F)));


extern volatile __bit ODCC0 __attribute__((address(0xFA80)));


extern volatile __bit ODCC1 __attribute__((address(0xFA81)));


extern volatile __bit ODCC2 __attribute__((address(0xFA82)));


extern volatile __bit ODCC3 __attribute__((address(0xFA83)));


extern volatile __bit ODCC4 __attribute__((address(0xFA84)));


extern volatile __bit ODCC5 __attribute__((address(0xFA85)));


extern volatile __bit ODCC6 __attribute__((address(0xFA86)));


extern volatile __bit ODCC7 __attribute__((address(0xFA87)));


extern volatile __bit OE1 __attribute__((address(0x4875)));


extern volatile __bit OERR __attribute__((address(0x8E9)));


extern volatile __bit OPOL __attribute__((address(0x44BC)));


extern volatile __bit ORDY __attribute__((address(0x447C)));


extern volatile __bit OSFIE __attribute__((address(0x38BF)));


extern volatile __bit OSFIF __attribute__((address(0x386F)));


extern volatile __bit OV __attribute__((address(0x8AF)));


extern volatile __bit P1M1 __attribute__((address(0x1877)));


extern volatile __bit P2M1 __attribute__((address(0x1897)));


extern volatile __bit P3M1 __attribute__((address(0x18B7)));


extern volatile __bit P4M1 __attribute__((address(0x18D7)));


extern volatile __bit PCH3 __attribute__((address(0x4FB)));


extern volatile __bit PCH4 __attribute__((address(0x4FC)));


extern volatile __bit PCH5 __attribute__((address(0x4FD)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN1 __attribute__((address(0xC8A)));


extern volatile __bit PEN2 __attribute__((address(0xCDA)));


extern volatile __bit PFM __attribute__((address(0x2C90)));


extern volatile __bit PLLR __attribute__((address(0x4480)));


extern volatile __bit PPOL __attribute__((address(0x897)));


extern volatile __bit PPSLOCKED __attribute__((address(0xF478)));


extern volatile __bit PR1 __attribute__((address(0x24A9)));


extern volatile __bit PR10 __attribute__((address(0x24B2)));


extern volatile __bit PR11 __attribute__((address(0x24B3)));


extern volatile __bit PR12 __attribute__((address(0x24B4)));


extern volatile __bit PR13 __attribute__((address(0x24B5)));


extern volatile __bit PR14 __attribute__((address(0x24B6)));


extern volatile __bit PR15 __attribute__((address(0x24B7)));


extern volatile __bit PR16 __attribute__((address(0x24B8)));


extern volatile __bit PR17 __attribute__((address(0x24B9)));


extern volatile __bit PR18 __attribute__((address(0x24BA)));


extern volatile __bit PR19 __attribute__((address(0x24BB)));


extern volatile __bit PR20 __attribute__((address(0x24BC)));


extern volatile __bit PR21 __attribute__((address(0x24BD)));


extern volatile __bit PR22 __attribute__((address(0x24BE)));


extern volatile __bit PR23 __attribute__((address(0x24BF)));


extern volatile __bit PR3 __attribute__((address(0x24AB)));


extern volatile __bit PR5 __attribute__((address(0x24AD)));


extern volatile __bit PR7 __attribute__((address(0x24AF)));


extern volatile __bit PR8 __attribute__((address(0x24B0)));


extern volatile __bit PR9 __attribute__((address(0x24B1)));


extern volatile __bit PRE0 __attribute__((address(0x878)));


extern volatile __bit PRE1 __attribute__((address(0x879)));


extern volatile __bit PRE10 __attribute__((address(0x882)));


extern volatile __bit PRE11 __attribute__((address(0x883)));


extern volatile __bit PRE12 __attribute__((address(0x884)));


extern volatile __bit PRE2 __attribute__((address(0x87A)));


extern volatile __bit PRE3 __attribute__((address(0x87B)));


extern volatile __bit PRE4 __attribute__((address(0x87C)));


extern volatile __bit PRE5 __attribute__((address(0x87D)));


extern volatile __bit PRE6 __attribute__((address(0x87E)));


extern volatile __bit PRE7 __attribute__((address(0x87F)));


extern volatile __bit PRE8 __attribute__((address(0x880)));


extern volatile __bit PRE9 __attribute__((address(0x881)));


extern volatile __bit PREF0 __attribute__((address(0x8B0)));


extern volatile __bit PREF1 __attribute__((address(0x8B1)));


extern volatile __bit PREF2 __attribute__((address(0x8B2)));


extern volatile __bit PREF3 __attribute__((address(0x8B3)));


extern volatile __bit PREV0 __attribute__((address(0x4D8)));


extern volatile __bit PREV1 __attribute__((address(0x4D9)));


extern volatile __bit PREV10 __attribute__((address(0x4E2)));


extern volatile __bit PREV11 __attribute__((address(0x4E3)));


extern volatile __bit PREV12 __attribute__((address(0x4E4)));


extern volatile __bit PREV13 __attribute__((address(0x4E5)));


extern volatile __bit PREV14 __attribute__((address(0x4E6)));


extern volatile __bit PREV15 __attribute__((address(0x4E7)));


extern volatile __bit PREV2 __attribute__((address(0x4DA)));


extern volatile __bit PREV3 __attribute__((address(0x4DB)));


extern volatile __bit PREV4 __attribute__((address(0x4DC)));


extern volatile __bit PREV5 __attribute__((address(0x4DD)));


extern volatile __bit PREV6 __attribute__((address(0x4DE)));


extern volatile __bit PREV7 __attribute__((address(0x4DF)));


extern volatile __bit PREV8 __attribute__((address(0x4E0)));


extern volatile __bit PREV9 __attribute__((address(0x4E1)));


extern volatile __bit PS0 __attribute__((address(0x24C0)));


extern volatile __bit PS1 __attribute__((address(0x24C1)));


extern volatile __bit PSCNT0 __attribute__((address(0x4070)));


extern volatile __bit PSCNT1 __attribute__((address(0x4071)));


extern volatile __bit PSCNT10 __attribute__((address(0x407A)));


extern volatile __bit PSCNT11 __attribute__((address(0x407B)));


extern volatile __bit PSCNT12 __attribute__((address(0x407C)));


extern volatile __bit PSCNT13 __attribute__((address(0x407D)));


extern volatile __bit PSCNT14 __attribute__((address(0x407E)));


extern volatile __bit PSCNT15 __attribute__((address(0x407F)));


extern volatile __bit PSCNT16 __attribute__((address(0x4080)));


extern volatile __bit PSCNT17 __attribute__((address(0x4081)));


extern volatile __bit PSCNT2 __attribute__((address(0x4072)));


extern volatile __bit PSCNT3 __attribute__((address(0x4073)));


extern volatile __bit PSCNT4 __attribute__((address(0x4074)));


extern volatile __bit PSCNT5 __attribute__((address(0x4075)));


extern volatile __bit PSCNT6 __attribute__((address(0x4076)));


extern volatile __bit PSCNT7 __attribute__((address(0x4077)));


extern volatile __bit PSCNT8 __attribute__((address(0x4078)));


extern volatile __bit PSCNT9 __attribute__((address(0x4079)));


extern volatile __bit PSIS __attribute__((address(0x89F)));


extern volatile __bit PSS0 __attribute__((address(0x4872)));


extern volatile __bit PSS1 __attribute__((address(0x4873)));


extern volatile __bit PWM6DC0 __attribute__((address(0x1C66)));


extern volatile __bit PWM6DC1 __attribute__((address(0x1C67)));


extern volatile __bit PWM6DC2 __attribute__((address(0x1C68)));


extern volatile __bit PWM6DC3 __attribute__((address(0x1C69)));


extern volatile __bit PWM6DC4 __attribute__((address(0x1C6A)));


extern volatile __bit PWM6DC5 __attribute__((address(0x1C6B)));


extern volatile __bit PWM6DC6 __attribute__((address(0x1C6C)));


extern volatile __bit PWM6DC7 __attribute__((address(0x1C6D)));


extern volatile __bit PWM6DC8 __attribute__((address(0x1C6E)));


extern volatile __bit PWM6DC9 __attribute__((address(0x1C6F)));


extern volatile __bit PWM6EN __attribute__((address(0x1C77)));


extern volatile __bit PWM6MD __attribute__((address(0x3CD5)));


extern volatile __bit PWM6OUT __attribute__((address(0x1C75)));


extern volatile __bit PWM6POL __attribute__((address(0x1C74)));


extern volatile __bit PWM7DC0 __attribute__((address(0x1C86)));


extern volatile __bit PWM7DC1 __attribute__((address(0x1C87)));


extern volatile __bit PWM7DC2 __attribute__((address(0x1C88)));


extern volatile __bit PWM7DC3 __attribute__((address(0x1C89)));


extern volatile __bit PWM7DC4 __attribute__((address(0x1C8A)));


extern volatile __bit PWM7DC5 __attribute__((address(0x1C8B)));


extern volatile __bit PWM7DC6 __attribute__((address(0x1C8C)));


extern volatile __bit PWM7DC7 __attribute__((address(0x1C8D)));


extern volatile __bit PWM7DC8 __attribute__((address(0x1C8E)));


extern volatile __bit PWM7DC9 __attribute__((address(0x1C8F)));


extern volatile __bit PWM7EN __attribute__((address(0x1C97)));


extern volatile __bit PWM7MD __attribute__((address(0x3CD6)));


extern volatile __bit PWM7OUT __attribute__((address(0x1C95)));


extern volatile __bit PWM7POL __attribute__((address(0x1C94)));


extern volatile __bit PWS0 __attribute__((address(0x2C9D)));


extern volatile __bit PWS1 __attribute__((address(0x2C9E)));


extern volatile __bit PWS2 __attribute__((address(0x2C9F)));


extern volatile __bit RA0 __attribute__((address(0x60)));


extern volatile __bit RA0PPS0 __attribute__((address(0xF880)));


extern volatile __bit RA0PPS1 __attribute__((address(0xF881)));


extern volatile __bit RA0PPS2 __attribute__((address(0xF882)));


extern volatile __bit RA0PPS3 __attribute__((address(0xF883)));


extern volatile __bit RA0PPS4 __attribute__((address(0xF884)));


extern volatile __bit RA0PPS5 __attribute__((address(0xF885)));


extern volatile __bit RA1 __attribute__((address(0x61)));


extern volatile __bit RA1PPS0 __attribute__((address(0xF888)));


extern volatile __bit RA1PPS1 __attribute__((address(0xF889)));


extern volatile __bit RA1PPS2 __attribute__((address(0xF88A)));


extern volatile __bit RA1PPS3 __attribute__((address(0xF88B)));


extern volatile __bit RA1PPS4 __attribute__((address(0xF88C)));


extern volatile __bit RA1PPS5 __attribute__((address(0xF88D)));


extern volatile __bit RA2 __attribute__((address(0x62)));


extern volatile __bit RA2PPS0 __attribute__((address(0xF890)));


extern volatile __bit RA2PPS1 __attribute__((address(0xF891)));


extern volatile __bit RA2PPS2 __attribute__((address(0xF892)));


extern volatile __bit RA2PPS3 __attribute__((address(0xF893)));


extern volatile __bit RA2PPS4 __attribute__((address(0xF894)));


extern volatile __bit RA2PPS5 __attribute__((address(0xF895)));


extern volatile __bit RA3 __attribute__((address(0x63)));


extern volatile __bit RA4 __attribute__((address(0x64)));


extern volatile __bit RA4PPS0 __attribute__((address(0xF8A0)));


extern volatile __bit RA4PPS1 __attribute__((address(0xF8A1)));


extern volatile __bit RA4PPS2 __attribute__((address(0xF8A2)));


extern volatile __bit RA4PPS3 __attribute__((address(0xF8A3)));


extern volatile __bit RA4PPS4 __attribute__((address(0xF8A4)));


extern volatile __bit RA4PPS5 __attribute__((address(0xF8A5)));


extern volatile __bit RA5 __attribute__((address(0x65)));


extern volatile __bit RA5PPS0 __attribute__((address(0xF8A8)));


extern volatile __bit RA5PPS1 __attribute__((address(0xF8A9)));


extern volatile __bit RA5PPS2 __attribute__((address(0xF8AA)));


extern volatile __bit RA5PPS3 __attribute__((address(0xF8AB)));


extern volatile __bit RA5PPS4 __attribute__((address(0xF8AC)));


extern volatile __bit RA5PPS5 __attribute__((address(0xF8AD)));


extern volatile __bit RB4 __attribute__((address(0x6C)));


extern volatile __bit RB4PPS0 __attribute__((address(0xF8E0)));


extern volatile __bit RB4PPS1 __attribute__((address(0xF8E1)));


extern volatile __bit RB4PPS2 __attribute__((address(0xF8E2)));


extern volatile __bit RB4PPS3 __attribute__((address(0xF8E3)));


extern volatile __bit RB4PPS4 __attribute__((address(0xF8E4)));


extern volatile __bit RB4PPS5 __attribute__((address(0xF8E5)));


extern volatile __bit RB5 __attribute__((address(0x6D)));


extern volatile __bit RB5PPS0 __attribute__((address(0xF8E8)));


extern volatile __bit RB5PPS1 __attribute__((address(0xF8E9)));


extern volatile __bit RB5PPS2 __attribute__((address(0xF8EA)));


extern volatile __bit RB5PPS3 __attribute__((address(0xF8EB)));


extern volatile __bit RB5PPS4 __attribute__((address(0xF8EC)));


extern volatile __bit RB5PPS5 __attribute__((address(0xF8ED)));


extern volatile __bit RB6 __attribute__((address(0x6E)));


extern volatile __bit RB6PPS0 __attribute__((address(0xF8F0)));


extern volatile __bit RB6PPS1 __attribute__((address(0xF8F1)));


extern volatile __bit RB6PPS2 __attribute__((address(0xF8F2)));


extern volatile __bit RB6PPS3 __attribute__((address(0xF8F3)));


extern volatile __bit RB6PPS4 __attribute__((address(0xF8F4)));


extern volatile __bit RB6PPS5 __attribute__((address(0xF8F5)));


extern volatile __bit RB7 __attribute__((address(0x6F)));


extern volatile __bit RB7PPS0 __attribute__((address(0xF8F8)));


extern volatile __bit RB7PPS1 __attribute__((address(0xF8F9)));


extern volatile __bit RB7PPS2 __attribute__((address(0xF8FA)));


extern volatile __bit RB7PPS3 __attribute__((address(0xF8FB)));


extern volatile __bit RB7PPS4 __attribute__((address(0xF8FC)));


extern volatile __bit RB7PPS5 __attribute__((address(0xF8FD)));


extern volatile __bit RC0 __attribute__((address(0x70)));


extern volatile __bit RC0PPS0 __attribute__((address(0xF900)));


extern volatile __bit RC0PPS1 __attribute__((address(0xF901)));


extern volatile __bit RC0PPS2 __attribute__((address(0xF902)));


extern volatile __bit RC0PPS3 __attribute__((address(0xF903)));


extern volatile __bit RC0PPS4 __attribute__((address(0xF904)));


extern volatile __bit RC0PPS5 __attribute__((address(0xF905)));


extern volatile __bit RC1 __attribute__((address(0x71)));


extern volatile __bit RC1IE __attribute__((address(0x38CD)));


extern volatile __bit RC1IF __attribute__((address(0x387D)));


extern volatile __bit RC1PPS0 __attribute__((address(0xF908)));


extern volatile __bit RC1PPS1 __attribute__((address(0xF909)));


extern volatile __bit RC1PPS2 __attribute__((address(0xF90A)));


extern volatile __bit RC1PPS3 __attribute__((address(0xF90B)));


extern volatile __bit RC1PPS4 __attribute__((address(0xF90C)));


extern volatile __bit RC1PPS5 __attribute__((address(0xF90D)));


extern volatile __bit RC2 __attribute__((address(0x72)));


extern volatile __bit RC2PPS0 __attribute__((address(0xF910)));


extern volatile __bit RC2PPS1 __attribute__((address(0xF911)));


extern volatile __bit RC2PPS2 __attribute__((address(0xF912)));


extern volatile __bit RC2PPS3 __attribute__((address(0xF913)));


extern volatile __bit RC2PPS4 __attribute__((address(0xF914)));


extern volatile __bit RC2PPS5 __attribute__((address(0xF915)));


extern volatile __bit RC3 __attribute__((address(0x73)));


extern volatile __bit RC3PPS0 __attribute__((address(0xF918)));


extern volatile __bit RC3PPS1 __attribute__((address(0xF919)));


extern volatile __bit RC3PPS2 __attribute__((address(0xF91A)));


extern volatile __bit RC3PPS3 __attribute__((address(0xF91B)));


extern volatile __bit RC3PPS4 __attribute__((address(0xF91C)));


extern volatile __bit RC3PPS5 __attribute__((address(0xF91D)));


extern volatile __bit RC4 __attribute__((address(0x74)));


extern volatile __bit RC4PPS0 __attribute__((address(0xF920)));


extern volatile __bit RC4PPS1 __attribute__((address(0xF921)));


extern volatile __bit RC4PPS2 __attribute__((address(0xF922)));


extern volatile __bit RC4PPS3 __attribute__((address(0xF923)));


extern volatile __bit RC4PPS4 __attribute__((address(0xF924)));


extern volatile __bit RC4PPS5 __attribute__((address(0xF925)));


extern volatile __bit RC5 __attribute__((address(0x75)));


extern volatile __bit RC5PPS0 __attribute__((address(0xF928)));


extern volatile __bit RC5PPS1 __attribute__((address(0xF929)));


extern volatile __bit RC5PPS2 __attribute__((address(0xF92A)));


extern volatile __bit RC5PPS3 __attribute__((address(0xF92B)));


extern volatile __bit RC5PPS4 __attribute__((address(0xF92C)));


extern volatile __bit RC5PPS5 __attribute__((address(0xF92D)));


extern volatile __bit RC6 __attribute__((address(0x76)));


extern volatile __bit RC6PPS0 __attribute__((address(0xF930)));


extern volatile __bit RC6PPS1 __attribute__((address(0xF931)));


extern volatile __bit RC6PPS2 __attribute__((address(0xF932)));


extern volatile __bit RC6PPS3 __attribute__((address(0xF933)));


extern volatile __bit RC6PPS4 __attribute__((address(0xF934)));


extern volatile __bit RC6PPS5 __attribute__((address(0xF935)));


extern volatile __bit RC7 __attribute__((address(0x77)));


extern volatile __bit RC7PPS0 __attribute__((address(0xF938)));


extern volatile __bit RC7PPS1 __attribute__((address(0xF939)));


extern volatile __bit RC7PPS2 __attribute__((address(0xF93A)));


extern volatile __bit RC7PPS3 __attribute__((address(0xF93B)));


extern volatile __bit RC7PPS4 __attribute__((address(0xF93C)));


extern volatile __bit RC7PPS5 __attribute__((address(0xF93D)));


extern volatile __bit RCEN1 __attribute__((address(0xC8B)));


extern volatile __bit RCEN2 __attribute__((address(0xCDB)));


extern volatile __bit RCIDL __attribute__((address(0x8FE)));


extern volatile __bit RD __attribute__((address(0x40F0)));


extern volatile __bit RD161 __attribute__((address(0x1071)));


extern volatile __bit RD163 __attribute__((address(0x10A1)));


extern volatile __bit RD165 __attribute__((address(0x10D1)));


extern volatile __bit READ_WRITE1 __attribute__((address(0xC7A)));


extern volatile __bit READ_WRITE2 __attribute__((address(0xCCA)));


extern volatile __bit REPEAT __attribute__((address(0x24CE)));


extern volatile __bit RES0 __attribute__((address(0x4E8)));


extern volatile __bit RES1 __attribute__((address(0x4E9)));


extern volatile __bit RES10 __attribute__((address(0x4F2)));


extern volatile __bit RES11 __attribute__((address(0x4F3)));


extern volatile __bit RES12 __attribute__((address(0x4F4)));


extern volatile __bit RES13 __attribute__((address(0x4F5)));


extern volatile __bit RES14 __attribute__((address(0x4F6)));


extern volatile __bit RES15 __attribute__((address(0x4F7)));


extern volatile __bit RES2 __attribute__((address(0x4EA)));


extern volatile __bit RES3 __attribute__((address(0x4EB)));


extern volatile __bit RES4 __attribute__((address(0x4EC)));


extern volatile __bit RES5 __attribute__((address(0x4ED)));


extern volatile __bit RES6 __attribute__((address(0x4EE)));


extern volatile __bit RES7 __attribute__((address(0x4EF)));


extern volatile __bit RES8 __attribute__((address(0x4F0)));


extern volatile __bit RES9 __attribute__((address(0x4F1)));


extern volatile __bit ROI __attribute__((address(0x4465)));


extern volatile __bit RPT0 __attribute__((address(0x4D0)));


extern volatile __bit RPT1 __attribute__((address(0x4D1)));


extern volatile __bit RPT2 __attribute__((address(0x4D2)));


extern volatile __bit RPT3 __attribute__((address(0x4D3)));


extern volatile __bit RPT4 __attribute__((address(0x4D4)));


extern volatile __bit RPT5 __attribute__((address(0x4D5)));


extern volatile __bit RPT6 __attribute__((address(0x4D6)));


extern volatile __bit RPT7 __attribute__((address(0x4D7)));


extern volatile __bit RSEN1 __attribute__((address(0xC89)));


extern volatile __bit RSEN2 __attribute__((address(0xCD9)));


extern volatile __bit RST __attribute__((address(0x24D5)));


extern volatile __bit RW1 __attribute__((address(0xC7A)));


extern volatile __bit RW2 __attribute__((address(0xCCA)));


extern volatile __bit RX1DTPPS0 __attribute__((address(0xF658)));


extern volatile __bit RX1DTPPS1 __attribute__((address(0xF659)));


extern volatile __bit RX1DTPPS2 __attribute__((address(0xF65A)));


extern volatile __bit RX1DTPPS3 __attribute__((address(0xF65B)));


extern volatile __bit RX1DTPPS4 __attribute__((address(0xF65C)));


extern volatile __bit RX9 __attribute__((address(0x8EE)));


extern volatile __bit RX9D __attribute__((address(0x8E8)));


extern volatile __bit R_W1 __attribute__((address(0xC7A)));


extern volatile __bit R_W2 __attribute__((address(0xCCA)));


extern volatile __bit R_nW1 __attribute__((address(0xC7A)));


extern volatile __bit R_nW2 __attribute__((address(0xCCA)));


extern volatile __bit SBOREN __attribute__((address(0x408F)));


extern volatile __bit SCKP __attribute__((address(0x8FC)));


extern volatile __bit SEN1 __attribute__((address(0xC88)));


extern volatile __bit SEN2 __attribute__((address(0xCD8)));


extern volatile __bit SENDB __attribute__((address(0x8F3)));


extern volatile __bit SLRA0 __attribute__((address(0xF9D8)));


extern volatile __bit SLRA1 __attribute__((address(0xF9D9)));


extern volatile __bit SLRA2 __attribute__((address(0xF9DA)));


extern volatile __bit SLRA4 __attribute__((address(0xF9DC)));


extern volatile __bit SLRA5 __attribute__((address(0xF9DD)));


extern volatile __bit SLRB4 __attribute__((address(0xFA34)));


extern volatile __bit SLRB5 __attribute__((address(0xFA35)));


extern volatile __bit SLRB6 __attribute__((address(0xFA36)));


extern volatile __bit SLRB7 __attribute__((address(0xFA37)));


extern volatile __bit SLRC0 __attribute__((address(0xFA88)));


extern volatile __bit SLRC1 __attribute__((address(0xFA89)));


extern volatile __bit SLRC2 __attribute__((address(0xFA8A)));


extern volatile __bit SLRC3 __attribute__((address(0xFA8B)));


extern volatile __bit SLRC4 __attribute__((address(0xFA8C)));


extern volatile __bit SLRC5 __attribute__((address(0xFA8D)));


extern volatile __bit SLRC6 __attribute__((address(0xFA8E)));


extern volatile __bit SLRC7 __attribute__((address(0xFA8F)));


extern volatile __bit SMP1 __attribute__((address(0xC7F)));


extern volatile __bit SMP2 __attribute__((address(0xCCF)));


extern volatile __bit SMT1AS __attribute__((address(0x24D0)));


extern volatile __bit SMT1CPOL __attribute__((address(0x24C2)));


extern volatile __bit SMT1CPR0 __attribute__((address(0x2478)));


extern volatile __bit SMT1CPR1 __attribute__((address(0x2479)));


extern volatile __bit SMT1CPR10 __attribute__((address(0x2482)));


extern volatile __bit SMT1CPR11 __attribute__((address(0x2483)));


extern volatile __bit SMT1CPR12 __attribute__((address(0x2484)));


extern volatile __bit SMT1CPR13 __attribute__((address(0x2485)));


extern volatile __bit SMT1CPR14 __attribute__((address(0x2486)));


extern volatile __bit SMT1CPR15 __attribute__((address(0x2487)));


extern volatile __bit SMT1CPR16 __attribute__((address(0x2488)));


extern volatile __bit SMT1CPR17 __attribute__((address(0x2489)));


extern volatile __bit SMT1CPR18 __attribute__((address(0x248A)));


extern volatile __bit SMT1CPR19 __attribute__((address(0x248B)));


extern volatile __bit SMT1CPR2 __attribute__((address(0x247A)));


extern volatile __bit SMT1CPR20 __attribute__((address(0x248C)));


extern volatile __bit SMT1CPR21 __attribute__((address(0x248D)));


extern volatile __bit SMT1CPR22 __attribute__((address(0x248E)));


extern volatile __bit SMT1CPR23 __attribute__((address(0x248F)));


extern volatile __bit SMT1CPR3 __attribute__((address(0x247B)));


extern volatile __bit SMT1CPR4 __attribute__((address(0x247C)));


extern volatile __bit SMT1CPR5 __attribute__((address(0x247D)));


extern volatile __bit SMT1CPR6 __attribute__((address(0x247E)));


extern volatile __bit SMT1CPR7 __attribute__((address(0x247F)));


extern volatile __bit SMT1CPR8 __attribute__((address(0x2480)));


extern volatile __bit SMT1CPR9 __attribute__((address(0x2481)));


extern volatile __bit SMT1CPRUP __attribute__((address(0x24D7)));


extern volatile __bit SMT1CPW0 __attribute__((address(0x2490)));


extern volatile __bit SMT1CPW1 __attribute__((address(0x2491)));


extern volatile __bit SMT1CPW10 __attribute__((address(0x249A)));


extern volatile __bit SMT1CPW11 __attribute__((address(0x249B)));


extern volatile __bit SMT1CPW12 __attribute__((address(0x249C)));


extern volatile __bit SMT1CPW13 __attribute__((address(0x249D)));


extern volatile __bit SMT1CPW14 __attribute__((address(0x249E)));


extern volatile __bit SMT1CPW15 __attribute__((address(0x249F)));


extern volatile __bit SMT1CPW16 __attribute__((address(0x24A0)));


extern volatile __bit SMT1CPW17 __attribute__((address(0x24A1)));


extern volatile __bit SMT1CPW18 __attribute__((address(0x24A2)));


extern volatile __bit SMT1CPW19 __attribute__((address(0x24A3)));


extern volatile __bit SMT1CPW2 __attribute__((address(0x2492)));


extern volatile __bit SMT1CPW20 __attribute__((address(0x24A4)));


extern volatile __bit SMT1CPW21 __attribute__((address(0x24A5)));


extern volatile __bit SMT1CPW22 __attribute__((address(0x24A6)));


extern volatile __bit SMT1CPW23 __attribute__((address(0x24A7)));


extern volatile __bit SMT1CPW3 __attribute__((address(0x2493)));


extern volatile __bit SMT1CPW4 __attribute__((address(0x2494)));


extern volatile __bit SMT1CPW5 __attribute__((address(0x2495)));


extern volatile __bit SMT1CPW6 __attribute__((address(0x2496)));


extern volatile __bit SMT1CPW7 __attribute__((address(0x2497)));


extern volatile __bit SMT1CPW8 __attribute__((address(0x2498)));


extern volatile __bit SMT1CPW9 __attribute__((address(0x2499)));


extern volatile __bit SMT1CPWUP __attribute__((address(0x24D6)));


extern volatile __bit SMT1CSEL0 __attribute__((address(0x24D8)));


extern volatile __bit SMT1CSEL1 __attribute__((address(0x24D9)));


extern volatile __bit SMT1CSEL2 __attribute__((address(0x24DA)));


extern volatile __bit SMT1EN __attribute__((address(0x24C7)));


extern volatile __bit SMT1GO __attribute__((address(0x24CF)));


extern volatile __bit SMT1IE __attribute__((address(0x38F0)));


extern volatile __bit SMT1IF __attribute__((address(0x38A0)));


extern volatile __bit SMT1MD __attribute__((address(0x3CED)));


extern volatile __bit SMT1PR0 __attribute__((address(0x24A8)));


extern volatile __bit SMT1PR1 __attribute__((address(0x24A9)));


extern volatile __bit SMT1PR10 __attribute__((address(0x24B2)));


extern volatile __bit SMT1PR11 __attribute__((address(0x24B3)));


extern volatile __bit SMT1PR12 __attribute__((address(0x24B4)));


extern volatile __bit SMT1PR13 __attribute__((address(0x24B5)));


extern volatile __bit SMT1PR14 __attribute__((address(0x24B6)));


extern volatile __bit SMT1PR15 __attribute__((address(0x24B7)));


extern volatile __bit SMT1PR16 __attribute__((address(0x24B8)));


extern volatile __bit SMT1PR17 __attribute__((address(0x24B9)));


extern volatile __bit SMT1PR18 __attribute__((address(0x24BA)));


extern volatile __bit SMT1PR19 __attribute__((address(0x24BB)));


extern volatile __bit SMT1PR2 __attribute__((address(0x24AA)));


extern volatile __bit SMT1PR20 __attribute__((address(0x24BC)));


extern volatile __bit SMT1PR21 __attribute__((address(0x24BD)));


extern volatile __bit SMT1PR22 __attribute__((address(0x24BE)));


extern volatile __bit SMT1PR23 __attribute__((address(0x24BF)));


extern volatile __bit SMT1PR3 __attribute__((address(0x24AB)));


extern volatile __bit SMT1PR4 __attribute__((address(0x24AC)));


extern volatile __bit SMT1PR5 __attribute__((address(0x24AD)));


extern volatile __bit SMT1PR6 __attribute__((address(0x24AE)));


extern volatile __bit SMT1PR7 __attribute__((address(0x24AF)));


extern volatile __bit SMT1PR8 __attribute__((address(0x24B0)));


extern volatile __bit SMT1PR9 __attribute__((address(0x24B1)));


extern volatile __bit SMT1PRAIE __attribute__((address(0x38F1)));


extern volatile __bit SMT1PRAIF __attribute__((address(0x38A1)));


extern volatile __bit SMT1PS0 __attribute__((address(0x24C0)));


extern volatile __bit SMT1PS1 __attribute__((address(0x24C1)));


extern volatile __bit SMT1PWAIE __attribute__((address(0x38F2)));


extern volatile __bit SMT1PWAIF __attribute__((address(0x38A2)));


extern volatile __bit SMT1REPEAT __attribute__((address(0x24CE)));


extern volatile __bit SMT1RESET __attribute__((address(0x24D5)));


extern volatile __bit SMT1RST __attribute__((address(0x24D5)));


extern volatile __bit SMT1SIGPPS0 __attribute__((address(0xF550)));


extern volatile __bit SMT1SIGPPS1 __attribute__((address(0xF551)));


extern volatile __bit SMT1SIGPPS2 __attribute__((address(0xF552)));


extern volatile __bit SMT1SIGPPS3 __attribute__((address(0xF553)));


extern volatile __bit SMT1SIGPPS4 __attribute__((address(0xF554)));


extern volatile __bit SMT1SPOL __attribute__((address(0x24C3)));


extern volatile __bit SMT1SSEL0 __attribute__((address(0x24E0)));


extern volatile __bit SMT1SSEL1 __attribute__((address(0x24E1)));


extern volatile __bit SMT1SSEL2 __attribute__((address(0x24E2)));


extern volatile __bit SMT1SSEL3 __attribute__((address(0x24E3)));


extern volatile __bit SMT1SSEL4 __attribute__((address(0x24E4)));


extern volatile __bit SMT1STP __attribute__((address(0x24C5)));


extern volatile __bit SMT1TMR0 __attribute__((address(0x2460)));


extern volatile __bit SMT1TMR1 __attribute__((address(0x2461)));


extern volatile __bit SMT1TMR10 __attribute__((address(0x246A)));


extern volatile __bit SMT1TMR11 __attribute__((address(0x246B)));


extern volatile __bit SMT1TMR12 __attribute__((address(0x246C)));


extern volatile __bit SMT1TMR13 __attribute__((address(0x246D)));


extern volatile __bit SMT1TMR14 __attribute__((address(0x246E)));


extern volatile __bit SMT1TMR15 __attribute__((address(0x246F)));


extern volatile __bit SMT1TMR16 __attribute__((address(0x2470)));


extern volatile __bit SMT1TMR17 __attribute__((address(0x2471)));


extern volatile __bit SMT1TMR18 __attribute__((address(0x2472)));


extern volatile __bit SMT1TMR19 __attribute__((address(0x2473)));


extern volatile __bit SMT1TMR2 __attribute__((address(0x2462)));


extern volatile __bit SMT1TMR20 __attribute__((address(0x2474)));


extern volatile __bit SMT1TMR21 __attribute__((address(0x2475)));


extern volatile __bit SMT1TMR22 __attribute__((address(0x2476)));


extern volatile __bit SMT1TMR23 __attribute__((address(0x2477)));


extern volatile __bit SMT1TMR3 __attribute__((address(0x2463)));


extern volatile __bit SMT1TMR4 __attribute__((address(0x2464)));


extern volatile __bit SMT1TMR5 __attribute__((address(0x2465)));


extern volatile __bit SMT1TMR6 __attribute__((address(0x2466)));


extern volatile __bit SMT1TMR7 __attribute__((address(0x2467)));


extern volatile __bit SMT1TMR8 __attribute__((address(0x2468)));


extern volatile __bit SMT1TMR9 __attribute__((address(0x2469)));


extern volatile __bit SMT1TS __attribute__((address(0x24D2)));


extern volatile __bit SMT1WINPPS0 __attribute__((address(0xF548)));


extern volatile __bit SMT1WINPPS1 __attribute__((address(0xF549)));


extern volatile __bit SMT1WINPPS2 __attribute__((address(0xF54A)));


extern volatile __bit SMT1WINPPS3 __attribute__((address(0xF54B)));


extern volatile __bit SMT1WINPPS4 __attribute__((address(0xF54C)));


extern volatile __bit SMT1WOL __attribute__((address(0x24C4)));


extern volatile __bit SMT1WS __attribute__((address(0x24D1)));


extern volatile __bit SMT1WSEL0 __attribute__((address(0x24E8)));


extern volatile __bit SMT1WSEL1 __attribute__((address(0x24E9)));


extern volatile __bit SMT1WSEL2 __attribute__((address(0x24EA)));


extern volatile __bit SMT1WSEL3 __attribute__((address(0x24EB)));


extern volatile __bit SMT1WSEL4 __attribute__((address(0x24EC)));


extern volatile __bit SOI __attribute__((address(0x8A3)));


extern volatile __bit SOR __attribute__((address(0x4483)));


extern volatile __bit SOSCEN __attribute__((address(0x448B)));


extern volatile __bit SOSCPWR __attribute__((address(0x447E)));


extern volatile __bit SPEN __attribute__((address(0x8EF)));


extern volatile __bit SPOL __attribute__((address(0x24C3)));


extern volatile __bit SREN __attribute__((address(0x8ED)));


extern volatile __bit SSEL0 __attribute__((address(0x24E0)));


extern volatile __bit SSEL1 __attribute__((address(0x24E1)));


extern volatile __bit SSEL2 __attribute__((address(0x24E2)));


extern volatile __bit SSEL3 __attribute__((address(0x24E3)));


extern volatile __bit SSEL4 __attribute__((address(0x24E4)));


extern volatile __bit SSP1CLKPPS0 __attribute__((address(0xF628)));


extern volatile __bit SSP1CLKPPS1 __attribute__((address(0xF629)));


extern volatile __bit SSP1CLKPPS2 __attribute__((address(0xF62A)));


extern volatile __bit SSP1CLKPPS3 __attribute__((address(0xF62B)));


extern volatile __bit SSP1CLKPPS4 __attribute__((address(0xF62C)));


extern volatile __bit SSP1DATPPS0 __attribute__((address(0xF630)));


extern volatile __bit SSP1DATPPS1 __attribute__((address(0xF631)));


extern volatile __bit SSP1DATPPS2 __attribute__((address(0xF632)));


extern volatile __bit SSP1DATPPS3 __attribute__((address(0xF633)));


extern volatile __bit SSP1DATPPS4 __attribute__((address(0xF634)));


extern volatile __bit SSP1IE __attribute__((address(0x38C8)));


extern volatile __bit SSP1IF __attribute__((address(0x3878)));


extern volatile __bit SSP1SSPPS0 __attribute__((address(0xF638)));


extern volatile __bit SSP1SSPPS1 __attribute__((address(0xF639)));


extern volatile __bit SSP1SSPPS2 __attribute__((address(0xF63A)));


extern volatile __bit SSP1SSPPS3 __attribute__((address(0xF63B)));


extern volatile __bit SSP1SSPPS4 __attribute__((address(0xF63C)));


extern volatile __bit SSP2CLKPPS0 __attribute__((address(0xF640)));


extern volatile __bit SSP2CLKPPS1 __attribute__((address(0xF641)));


extern volatile __bit SSP2CLKPPS2 __attribute__((address(0xF642)));


extern volatile __bit SSP2CLKPPS3 __attribute__((address(0xF643)));


extern volatile __bit SSP2CLKPPS4 __attribute__((address(0xF644)));


extern volatile __bit SSP2DATPPS0 __attribute__((address(0xF648)));


extern volatile __bit SSP2DATPPS1 __attribute__((address(0xF649)));


extern volatile __bit SSP2DATPPS2 __attribute__((address(0xF64A)));


extern volatile __bit SSP2DATPPS3 __attribute__((address(0xF64B)));


extern volatile __bit SSP2DATPPS4 __attribute__((address(0xF64C)));


extern volatile __bit SSP2IE __attribute__((address(0x38CA)));


extern volatile __bit SSP2IF __attribute__((address(0x387A)));


extern volatile __bit SSP2SSPPS0 __attribute__((address(0xF650)));


extern volatile __bit SSP2SSPPS1 __attribute__((address(0xF651)));


extern volatile __bit SSP2SSPPS2 __attribute__((address(0xF652)));


extern volatile __bit SSP2SSPPS3 __attribute__((address(0xF653)));


extern volatile __bit SSP2SSPPS4 __attribute__((address(0xF654)));


extern volatile __bit SSPEN1 __attribute__((address(0xC85)));


extern volatile __bit SSPEN2 __attribute__((address(0xCD5)));


extern volatile __bit SSPM01 __attribute__((address(0xC80)));


extern volatile __bit SSPM02 __attribute__((address(0xCD0)));


extern volatile __bit SSPM11 __attribute__((address(0xC81)));


extern volatile __bit SSPM12 __attribute__((address(0xCD1)));


extern volatile __bit SSPM21 __attribute__((address(0xC82)));


extern volatile __bit SSPM22 __attribute__((address(0xCD2)));


extern volatile __bit SSPM31 __attribute__((address(0xC83)));


extern volatile __bit SSPM32 __attribute__((address(0xCD3)));


extern volatile __bit SSPOV1 __attribute__((address(0xC86)));


extern volatile __bit SSPOV2 __attribute__((address(0xCD6)));


extern volatile __bit START1 __attribute__((address(0xC7B)));


extern volatile __bit START2 __attribute__((address(0xCCB)));


extern volatile __bit STAT0 __attribute__((address(0x8A8)));


extern volatile __bit STAT1 __attribute__((address(0x8A9)));


extern volatile __bit STAT2 __attribute__((address(0x8AA)));


extern volatile __bit STATE __attribute__((address(0x4082)));


extern volatile __bit STKOVF __attribute__((address(0x409F)));


extern volatile __bit STKPTR0 __attribute__((address(0xFF68)));


extern volatile __bit STKPTR1 __attribute__((address(0xFF69)));


extern volatile __bit STKPTR2 __attribute__((address(0xFF6A)));


extern volatile __bit STKPTR3 __attribute__((address(0xFF6B)));


extern volatile __bit STKPTR4 __attribute__((address(0xFF6C)));


extern volatile __bit STKUNF __attribute__((address(0x409E)));


extern volatile __bit STOP1 __attribute__((address(0xC7C)));


extern volatile __bit STOP2 __attribute__((address(0xCCC)));


extern volatile __bit STP __attribute__((address(0x24C5)));


extern volatile __bit STPT0 __attribute__((address(0x490)));


extern volatile __bit STPT1 __attribute__((address(0x491)));


extern volatile __bit STPT10 __attribute__((address(0x49A)));


extern volatile __bit STPT11 __attribute__((address(0x49B)));


extern volatile __bit STPT12 __attribute__((address(0x49C)));


extern volatile __bit STPT13 __attribute__((address(0x49D)));


extern volatile __bit STPT15 __attribute__((address(0x49E)));


extern volatile __bit STPT16 __attribute__((address(0x49F)));


extern volatile __bit STPT2 __attribute__((address(0x492)));


extern volatile __bit STPT3 __attribute__((address(0x493)));


extern volatile __bit STPT4 __attribute__((address(0x494)));


extern volatile __bit STPT5 __attribute__((address(0x495)));


extern volatile __bit STPT6 __attribute__((address(0x496)));


extern volatile __bit STPT7 __attribute__((address(0x497)));


extern volatile __bit STPT8 __attribute__((address(0x498)));


extern volatile __bit STPT9 __attribute__((address(0x499)));


extern volatile __bit SWDTEN __attribute__((address(0x4060)));


extern volatile __bit SYSCMD __attribute__((address(0x3CB7)));


extern volatile __bit T016BIT __attribute__((address(0x2CF4)));


extern volatile __bit T0ASYNC __attribute__((address(0x2CFC)));


extern volatile __bit T0CKIPPS0 __attribute__((address(0xF488)));


extern volatile __bit T0CKIPPS1 __attribute__((address(0xF489)));


extern volatile __bit T0CKIPPS2 __attribute__((address(0xF48A)));


extern volatile __bit T0CKIPPS3 __attribute__((address(0xF48B)));


extern volatile __bit T0CKPS0 __attribute__((address(0x2CF8)));


extern volatile __bit T0CKPS1 __attribute__((address(0x2CF9)));


extern volatile __bit T0CKPS2 __attribute__((address(0x2CFA)));


extern volatile __bit T0CKPS3 __attribute__((address(0x2CFB)));


extern volatile __bit T0CS0 __attribute__((address(0x2CFD)));


extern volatile __bit T0CS1 __attribute__((address(0x2CFE)));


extern volatile __bit T0CS2 __attribute__((address(0x2CFF)));


extern volatile __bit T0EN __attribute__((address(0x2CF7)));


extern volatile __bit T0MD16 __attribute__((address(0x2CF4)));


extern volatile __bit T0OUT __attribute__((address(0x2CF5)));


extern volatile __bit T0PR0 __attribute__((address(0x2CE8)));


extern volatile __bit T0PR1 __attribute__((address(0x2CE9)));


extern volatile __bit T0PR2 __attribute__((address(0x2CEA)));


extern volatile __bit T0PR3 __attribute__((address(0x2CEB)));


extern volatile __bit T0PR4 __attribute__((address(0x2CEC)));


extern volatile __bit T0PR5 __attribute__((address(0x2CED)));


extern volatile __bit T0PR6 __attribute__((address(0x2CEE)));


extern volatile __bit T0PR7 __attribute__((address(0x2CEF)));


extern volatile __bit T1CKIPPS0 __attribute__((address(0xF490)));


extern volatile __bit T1CKIPPS1 __attribute__((address(0xF491)));


extern volatile __bit T1CKIPPS2 __attribute__((address(0xF492)));


extern volatile __bit T1CKIPPS3 __attribute__((address(0xF493)));


extern volatile __bit T1CKIPPS4 __attribute__((address(0xF494)));


extern volatile __bit T1CKPS0 __attribute__((address(0x1074)));


extern volatile __bit T1CKPS1 __attribute__((address(0x1075)));


extern volatile __bit T1CS0 __attribute__((address(0x1088)));


extern volatile __bit T1CS1 __attribute__((address(0x1089)));


extern volatile __bit T1CS2 __attribute__((address(0x108A)));


extern volatile __bit T1CS3 __attribute__((address(0x108B)));


extern volatile __bit T1CS4 __attribute__((address(0x108C)));


extern volatile __bit T1GE __attribute__((address(0x107F)));


extern volatile __bit T1GGO __attribute__((address(0x107B)));


extern volatile __bit T1GPOL __attribute__((address(0x107E)));


extern volatile __bit T1GPPS0 __attribute__((address(0xF498)));


extern volatile __bit T1GPPS1 __attribute__((address(0xF499)));


extern volatile __bit T1GPPS2 __attribute__((address(0xF49A)));


extern volatile __bit T1GPPS3 __attribute__((address(0xF49B)));


extern volatile __bit T1GPPS4 __attribute__((address(0xF49C)));


extern volatile __bit T1GSPM __attribute__((address(0x107C)));


extern volatile __bit T1GSS0 __attribute__((address(0x1080)));


extern volatile __bit T1GSS1 __attribute__((address(0x1081)));


extern volatile __bit T1GSS2 __attribute__((address(0x1082)));


extern volatile __bit T1GSS3 __attribute__((address(0x1083)));


extern volatile __bit T1GSS4 __attribute__((address(0x1084)));


extern volatile __bit T1GTM __attribute__((address(0x107D)));


extern volatile __bit T1GVAL __attribute__((address(0x107A)));


extern volatile __bit T1RD16 __attribute__((address(0x1071)));


extern volatile __bit T2CKPOL __attribute__((address(0x147E)));


extern volatile __bit T2CKPS0 __attribute__((address(0x1474)));


extern volatile __bit T2CKPS1 __attribute__((address(0x1475)));


extern volatile __bit T2CKPS2 __attribute__((address(0x1476)));


extern volatile __bit T2CKSYNC __attribute__((address(0x147D)));


extern volatile __bit T2CS0 __attribute__((address(0x1480)));


extern volatile __bit T2CS1 __attribute__((address(0x1481)));


extern volatile __bit T2CS2 __attribute__((address(0x1482)));


extern volatile __bit T2CS3 __attribute__((address(0x1483)));


extern volatile __bit T2INPPS0 __attribute__((address(0xF4E0)));


extern volatile __bit T2INPPS1 __attribute__((address(0xF4E1)));


extern volatile __bit T2INPPS2 __attribute__((address(0xF4E2)));


extern volatile __bit T2INPPS3 __attribute__((address(0xF4E3)));


extern volatile __bit T2INPPS4 __attribute__((address(0xF4E4)));


extern volatile __bit T2MODE0 __attribute__((address(0x1478)));


extern volatile __bit T2MODE1 __attribute__((address(0x1479)));


extern volatile __bit T2MODE2 __attribute__((address(0x147A)));


extern volatile __bit T2MODE3 __attribute__((address(0x147B)));


extern volatile __bit T2MODE4 __attribute__((address(0x147C)));


extern volatile __bit T2ON __attribute__((address(0x1477)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x1470)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x1471)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x1472)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x1473)));


extern volatile __bit T2PSYNC __attribute__((address(0x147F)));


extern volatile __bit T2RSEL0 __attribute__((address(0x1488)));


extern volatile __bit T2RSEL1 __attribute__((address(0x1489)));


extern volatile __bit T2RSEL2 __attribute__((address(0x148A)));


extern volatile __bit T2RSEL3 __attribute__((address(0x148B)));


extern volatile __bit T2RSEL4 __attribute__((address(0x148C)));


extern volatile __bit T3CKIPPS0 __attribute__((address(0xF4A0)));


extern volatile __bit T3CKIPPS1 __attribute__((address(0xF4A1)));


extern volatile __bit T3CKIPPS2 __attribute__((address(0xF4A2)));


extern volatile __bit T3CKIPPS3 __attribute__((address(0xF4A3)));


extern volatile __bit T3CKIPPS4 __attribute__((address(0xF4A4)));


extern volatile __bit T3CKPS0 __attribute__((address(0x10A4)));


extern volatile __bit T3CKPS1 __attribute__((address(0x10A5)));


extern volatile __bit T3CS0 __attribute__((address(0x10B8)));


extern volatile __bit T3CS1 __attribute__((address(0x10B9)));


extern volatile __bit T3CS2 __attribute__((address(0x10BA)));


extern volatile __bit T3CS3 __attribute__((address(0x10BB)));


extern volatile __bit T3CS4 __attribute__((address(0x10BC)));


extern volatile __bit T3GE __attribute__((address(0x10AF)));


extern volatile __bit T3GGO __attribute__((address(0x10AB)));


extern volatile __bit T3GPOL __attribute__((address(0x10AE)));


extern volatile __bit T3GPPS0 __attribute__((address(0xF4A8)));


extern volatile __bit T3GPPS1 __attribute__((address(0xF4A9)));


extern volatile __bit T3GPPS2 __attribute__((address(0xF4AA)));


extern volatile __bit T3GPPS3 __attribute__((address(0xF4AB)));


extern volatile __bit T3GPPS4 __attribute__((address(0xF4AC)));


extern volatile __bit T3GSPM __attribute__((address(0x10AC)));


extern volatile __bit T3GSS0 __attribute__((address(0x10B0)));


extern volatile __bit T3GSS1 __attribute__((address(0x10B1)));


extern volatile __bit T3GSS2 __attribute__((address(0x10B2)));


extern volatile __bit T3GSS3 __attribute__((address(0x10B3)));


extern volatile __bit T3GSS4 __attribute__((address(0x10B4)));


extern volatile __bit T3GTM __attribute__((address(0x10AD)));


extern volatile __bit T3GVAL __attribute__((address(0x10AA)));


extern volatile __bit T3RD16 __attribute__((address(0x10A1)));


extern volatile __bit T4CKPOL __attribute__((address(0x14AE)));


extern volatile __bit T4CKPS0 __attribute__((address(0x14A4)));


extern volatile __bit T4CKPS1 __attribute__((address(0x14A5)));


extern volatile __bit T4CKPS2 __attribute__((address(0x14A6)));


extern volatile __bit T4CKSYNC __attribute__((address(0x14AD)));


extern volatile __bit T4CS0 __attribute__((address(0x14B0)));


extern volatile __bit T4CS1 __attribute__((address(0x14B1)));


extern volatile __bit T4CS2 __attribute__((address(0x14B2)));


extern volatile __bit T4CS3 __attribute__((address(0x14B3)));


extern volatile __bit T4INPPS0 __attribute__((address(0xF4E8)));


extern volatile __bit T4INPPS1 __attribute__((address(0xF4E9)));


extern volatile __bit T4INPPS2 __attribute__((address(0xF4EA)));


extern volatile __bit T4INPPS3 __attribute__((address(0xF4EB)));


extern volatile __bit T4INPPS4 __attribute__((address(0xF4EC)));


extern volatile __bit T4MODE0 __attribute__((address(0x14A8)));


extern volatile __bit T4MODE1 __attribute__((address(0x14A9)));


extern volatile __bit T4MODE2 __attribute__((address(0x14AA)));


extern volatile __bit T4MODE3 __attribute__((address(0x14AB)));


extern volatile __bit T4MODE4 __attribute__((address(0x14AC)));


extern volatile __bit T4ON __attribute__((address(0x14A7)));


extern volatile __bit T4OUTPS0 __attribute__((address(0x14A0)));


extern volatile __bit T4OUTPS1 __attribute__((address(0x14A1)));


extern volatile __bit T4OUTPS2 __attribute__((address(0x14A2)));


extern volatile __bit T4OUTPS3 __attribute__((address(0x14A3)));


extern volatile __bit T4PSYNC __attribute__((address(0x14AF)));


extern volatile __bit T4RSEL0 __attribute__((address(0x14B8)));


extern volatile __bit T4RSEL1 __attribute__((address(0x14B9)));


extern volatile __bit T4RSEL2 __attribute__((address(0x14BA)));


extern volatile __bit T4RSEL3 __attribute__((address(0x14BB)));


extern volatile __bit T4RSEL4 __attribute__((address(0x14BC)));


extern volatile __bit T5CKIPPS0 __attribute__((address(0xF4B0)));


extern volatile __bit T5CKIPPS1 __attribute__((address(0xF4B1)));


extern volatile __bit T5CKIPPS2 __attribute__((address(0xF4B2)));


extern volatile __bit T5CKIPPS3 __attribute__((address(0xF4B3)));


extern volatile __bit T5CKIPPS4 __attribute__((address(0xF4B4)));


extern volatile __bit T5CKPS0 __attribute__((address(0x10D4)));


extern volatile __bit T5CKPS1 __attribute__((address(0x10D5)));


extern volatile __bit T5CS0 __attribute__((address(0x10E8)));


extern volatile __bit T5CS1 __attribute__((address(0x10E9)));


extern volatile __bit T5CS2 __attribute__((address(0x10EA)));


extern volatile __bit T5CS3 __attribute__((address(0x10EB)));


extern volatile __bit T5CS4 __attribute__((address(0x10EC)));


extern volatile __bit T5GE __attribute__((address(0x10DF)));


extern volatile __bit T5GGO __attribute__((address(0x10DB)));


extern volatile __bit T5GPOL __attribute__((address(0x10DE)));


extern volatile __bit T5GPPS0 __attribute__((address(0xF4B8)));


extern volatile __bit T5GPPS1 __attribute__((address(0xF4B9)));


extern volatile __bit T5GPPS2 __attribute__((address(0xF4BA)));


extern volatile __bit T5GPPS3 __attribute__((address(0xF4BB)));


extern volatile __bit T5GPPS4 __attribute__((address(0xF4BC)));


extern volatile __bit T5GSPM __attribute__((address(0x10DC)));


extern volatile __bit T5GSS0 __attribute__((address(0x10E0)));


extern volatile __bit T5GSS1 __attribute__((address(0x10E1)));


extern volatile __bit T5GSS2 __attribute__((address(0x10E2)));


extern volatile __bit T5GSS3 __attribute__((address(0x10E3)));


extern volatile __bit T5GSS4 __attribute__((address(0x10E4)));


extern volatile __bit T5GTM __attribute__((address(0x10DD)));


extern volatile __bit T5GVAL __attribute__((address(0x10DA)));


extern volatile __bit T5RD16 __attribute__((address(0x10D1)));


extern volatile __bit T6CKPOL __attribute__((address(0x14DE)));


extern volatile __bit T6CKPS0 __attribute__((address(0x14D4)));


extern volatile __bit T6CKPS1 __attribute__((address(0x14D5)));


extern volatile __bit T6CKPS2 __attribute__((address(0x14D6)));


extern volatile __bit T6CKSYNC __attribute__((address(0x14DD)));


extern volatile __bit T6CS0 __attribute__((address(0x14E0)));


extern volatile __bit T6CS1 __attribute__((address(0x14E1)));


extern volatile __bit T6CS2 __attribute__((address(0x14E2)));


extern volatile __bit T6CS3 __attribute__((address(0x14E3)));


extern volatile __bit T6INPPS0 __attribute__((address(0xF4F0)));


extern volatile __bit T6INPPS1 __attribute__((address(0xF4F1)));


extern volatile __bit T6INPPS2 __attribute__((address(0xF4F2)));


extern volatile __bit T6INPPS3 __attribute__((address(0xF4F3)));


extern volatile __bit T6INPPS4 __attribute__((address(0xF4F4)));


extern volatile __bit T6MODE0 __attribute__((address(0x14D8)));


extern volatile __bit T6MODE1 __attribute__((address(0x14D9)));


extern volatile __bit T6MODE2 __attribute__((address(0x14DA)));


extern volatile __bit T6MODE3 __attribute__((address(0x14DB)));


extern volatile __bit T6MODE4 __attribute__((address(0x14DC)));


extern volatile __bit T6ON __attribute__((address(0x14D7)));


extern volatile __bit T6OUTPS0 __attribute__((address(0x14D0)));


extern volatile __bit T6OUTPS1 __attribute__((address(0x14D1)));


extern volatile __bit T6OUTPS2 __attribute__((address(0x14D2)));


extern volatile __bit T6OUTPS3 __attribute__((address(0x14D3)));


extern volatile __bit T6PSYNC __attribute__((address(0x14DF)));


extern volatile __bit T6RSEL0 __attribute__((address(0x14E8)));


extern volatile __bit T6RSEL1 __attribute__((address(0x14E9)));


extern volatile __bit T6RSEL2 __attribute__((address(0x14EA)));


extern volatile __bit T6RSEL3 __attribute__((address(0x14EB)));


extern volatile __bit T6RSEL4 __attribute__((address(0x14EC)));


extern volatile __bit TMD0 __attribute__((address(0x8A0)));


extern volatile __bit TMD1 __attribute__((address(0x8A1)));


extern volatile __bit TMD2 __attribute__((address(0x8A2)));


extern volatile __bit TMR0H0 __attribute__((address(0x2CE8)));


extern volatile __bit TMR0H1 __attribute__((address(0x2CE9)));


extern volatile __bit TMR0H2 __attribute__((address(0x2CEA)));


extern volatile __bit TMR0H3 __attribute__((address(0x2CEB)));


extern volatile __bit TMR0H4 __attribute__((address(0x2CEC)));


extern volatile __bit TMR0H5 __attribute__((address(0x2CED)));


extern volatile __bit TMR0H6 __attribute__((address(0x2CEE)));


extern volatile __bit TMR0H7 __attribute__((address(0x2CEF)));


extern volatile __bit TMR0IE __attribute__((address(0x38B5)));


extern volatile __bit TMR0IF __attribute__((address(0x3865)));


extern volatile __bit TMR0L0 __attribute__((address(0x2CE0)));


extern volatile __bit TMR0L1 __attribute__((address(0x2CE1)));


extern volatile __bit TMR0L2 __attribute__((address(0x2CE2)));


extern volatile __bit TMR0L3 __attribute__((address(0x2CE3)));


extern volatile __bit TMR0L4 __attribute__((address(0x2CE4)));


extern volatile __bit TMR0L5 __attribute__((address(0x2CE5)));


extern volatile __bit TMR0L6 __attribute__((address(0x2CE6)));


extern volatile __bit TMR0L7 __attribute__((address(0x2CE7)));


extern volatile __bit TMR0MD __attribute__((address(0x3CB8)));


extern volatile __bit TMR1 __attribute__((address(0x2461)));


extern volatile __bit TMR10 __attribute__((address(0x246A)));


extern volatile __bit TMR11 __attribute__((address(0x246B)));


extern volatile __bit TMR12 __attribute__((address(0x246C)));


extern volatile __bit TMR13 __attribute__((address(0x246D)));


extern volatile __bit TMR14 __attribute__((address(0x246E)));


extern volatile __bit TMR15 __attribute__((address(0x246F)));


extern volatile __bit TMR16 __attribute__((address(0x2470)));


extern volatile __bit TMR17 __attribute__((address(0x2471)));


extern volatile __bit TMR18 __attribute__((address(0x2472)));


extern volatile __bit TMR19 __attribute__((address(0x2473)));


extern volatile __bit TMR1GIE __attribute__((address(0x38D8)));


extern volatile __bit TMR1GIF __attribute__((address(0x3888)));


extern volatile __bit TMR1H0 __attribute__((address(0x1068)));


extern volatile __bit TMR1H1 __attribute__((address(0x1069)));


extern volatile __bit TMR1H2 __attribute__((address(0x106A)));


extern volatile __bit TMR1H3 __attribute__((address(0x106B)));


extern volatile __bit TMR1H4 __attribute__((address(0x106C)));


extern volatile __bit TMR1H5 __attribute__((address(0x106D)));


extern volatile __bit TMR1H6 __attribute__((address(0x106E)));


extern volatile __bit TMR1H7 __attribute__((address(0x106F)));


extern volatile __bit TMR1IE __attribute__((address(0x38D0)));


extern volatile __bit TMR1IF __attribute__((address(0x3880)));


extern volatile __bit TMR1L0 __attribute__((address(0x1060)));


extern volatile __bit TMR1L1 __attribute__((address(0x1061)));


extern volatile __bit TMR1L2 __attribute__((address(0x1062)));


extern volatile __bit TMR1L3 __attribute__((address(0x1063)));


extern volatile __bit TMR1L4 __attribute__((address(0x1064)));


extern volatile __bit TMR1L5 __attribute__((address(0x1065)));


extern volatile __bit TMR1L6 __attribute__((address(0x1066)));


extern volatile __bit TMR1L7 __attribute__((address(0x1067)));


extern volatile __bit TMR1MD __attribute__((address(0x3CB9)));


extern volatile __bit TMR1ON __attribute__((address(0x1070)));


extern volatile __bit TMR20 __attribute__((address(0x2474)));


extern volatile __bit TMR21 __attribute__((address(0x2475)));


extern volatile __bit TMR22 __attribute__((address(0x2476)));


extern volatile __bit TMR23 __attribute__((address(0x2477)));


extern volatile __bit TMR2IE __attribute__((address(0x38D1)));


extern volatile __bit TMR2IF __attribute__((address(0x3881)));


extern volatile __bit TMR2MD __attribute__((address(0x3CBA)));


extern volatile __bit TMR2ON __attribute__((address(0x1477)));


extern volatile __bit TMR3 __attribute__((address(0x2463)));


extern volatile __bit TMR3GIE __attribute__((address(0x38D9)));


extern volatile __bit TMR3GIF __attribute__((address(0x3889)));


extern volatile __bit TMR3H0 __attribute__((address(0x1098)));


extern volatile __bit TMR3H1 __attribute__((address(0x1099)));


extern volatile __bit TMR3H2 __attribute__((address(0x109A)));


extern volatile __bit TMR3H3 __attribute__((address(0x109B)));


extern volatile __bit TMR3H4 __attribute__((address(0x109C)));


extern volatile __bit TMR3H5 __attribute__((address(0x109D)));


extern volatile __bit TMR3H6 __attribute__((address(0x109E)));


extern volatile __bit TMR3H7 __attribute__((address(0x109F)));


extern volatile __bit TMR3IE __attribute__((address(0x38D2)));


extern volatile __bit TMR3IF __attribute__((address(0x3882)));


extern volatile __bit TMR3L0 __attribute__((address(0x1090)));


extern volatile __bit TMR3L1 __attribute__((address(0x1091)));


extern volatile __bit TMR3L2 __attribute__((address(0x1092)));


extern volatile __bit TMR3L3 __attribute__((address(0x1093)));


extern volatile __bit TMR3L4 __attribute__((address(0x1094)));


extern volatile __bit TMR3L5 __attribute__((address(0x1095)));


extern volatile __bit TMR3L6 __attribute__((address(0x1096)));


extern volatile __bit TMR3L7 __attribute__((address(0x1097)));


extern volatile __bit TMR3MD __attribute__((address(0x3CBB)));


extern volatile __bit TMR3ON __attribute__((address(0x10A0)));


extern volatile __bit TMR4IE __attribute__((address(0x38D3)));


extern volatile __bit TMR4IF __attribute__((address(0x3883)));


extern volatile __bit TMR4MD __attribute__((address(0x3CBC)));


extern volatile __bit TMR4ON __attribute__((address(0x14A7)));


extern volatile __bit TMR5 __attribute__((address(0x2465)));


extern volatile __bit TMR5GIE __attribute__((address(0x38DA)));


extern volatile __bit TMR5GIF __attribute__((address(0x388A)));


extern volatile __bit TMR5H0 __attribute__((address(0x10C8)));


extern volatile __bit TMR5H1 __attribute__((address(0x10C9)));


extern volatile __bit TMR5H2 __attribute__((address(0x10CA)));


extern volatile __bit TMR5H3 __attribute__((address(0x10CB)));


extern volatile __bit TMR5H4 __attribute__((address(0x10CC)));


extern volatile __bit TMR5H5 __attribute__((address(0x10CD)));


extern volatile __bit TMR5H6 __attribute__((address(0x10CE)));


extern volatile __bit TMR5H7 __attribute__((address(0x10CF)));


extern volatile __bit TMR5IE __attribute__((address(0x38D4)));


extern volatile __bit TMR5IF __attribute__((address(0x3884)));


extern volatile __bit TMR5L0 __attribute__((address(0x10C0)));


extern volatile __bit TMR5L1 __attribute__((address(0x10C1)));


extern volatile __bit TMR5L2 __attribute__((address(0x10C2)));


extern volatile __bit TMR5L3 __attribute__((address(0x10C3)));


extern volatile __bit TMR5L4 __attribute__((address(0x10C4)));


extern volatile __bit TMR5L5 __attribute__((address(0x10C5)));


extern volatile __bit TMR5L6 __attribute__((address(0x10C6)));


extern volatile __bit TMR5L7 __attribute__((address(0x10C7)));


extern volatile __bit TMR5MD __attribute__((address(0x3CBD)));


extern volatile __bit TMR5ON __attribute__((address(0x10D0)));


extern volatile __bit TMR6IE __attribute__((address(0x38D5)));


extern volatile __bit TMR6IF __attribute__((address(0x3885)));


extern volatile __bit TMR6MD __attribute__((address(0x3CBE)));


extern volatile __bit TMR6ON __attribute__((address(0x14D7)));


extern volatile __bit TMR7 __attribute__((address(0x2467)));


extern volatile __bit TMR8 __attribute__((address(0x2468)));


extern volatile __bit TMR9 __attribute__((address(0x2469)));


extern volatile __bit TOSH0 __attribute__((address(0xFF78)));


extern volatile __bit TOSH1 __attribute__((address(0xFF79)));


extern volatile __bit TOSH2 __attribute__((address(0xFF7A)));


extern volatile __bit TOSH3 __attribute__((address(0xFF7B)));


extern volatile __bit TOSH4 __attribute__((address(0xFF7C)));


extern volatile __bit TOSH5 __attribute__((address(0xFF7D)));


extern volatile __bit TOSH6 __attribute__((address(0xFF7E)));


extern volatile __bit TOSH7 __attribute__((address(0xFF7F)));


extern volatile __bit TOSL0 __attribute__((address(0xFF70)));


extern volatile __bit TOSL1 __attribute__((address(0xFF71)));


extern volatile __bit TOSL2 __attribute__((address(0xFF72)));


extern volatile __bit TOSL3 __attribute__((address(0xFF73)));


extern volatile __bit TOSL4 __attribute__((address(0xFF74)));


extern volatile __bit TOSL5 __attribute__((address(0xFF75)));


extern volatile __bit TOSL6 __attribute__((address(0xFF76)));


extern volatile __bit TOSL7 __attribute__((address(0xFF77)));


extern volatile __bit TRISA0 __attribute__((address(0x90)));


extern volatile __bit TRISA1 __attribute__((address(0x91)));


extern volatile __bit TRISA2 __attribute__((address(0x92)));


extern volatile __bit TRISA3 __attribute__((address(0x93)));


extern volatile __bit TRISA4 __attribute__((address(0x94)));


extern volatile __bit TRISA5 __attribute__((address(0x95)));


extern volatile __bit TRISB4 __attribute__((address(0x9C)));


extern volatile __bit TRISB5 __attribute__((address(0x9D)));


extern volatile __bit TRISB6 __attribute__((address(0x9E)));


extern volatile __bit TRISB7 __attribute__((address(0x9F)));


extern volatile __bit TRISC0 __attribute__((address(0xA0)));


extern volatile __bit TRISC1 __attribute__((address(0xA1)));


extern volatile __bit TRISC2 __attribute__((address(0xA2)));


extern volatile __bit TRISC3 __attribute__((address(0xA3)));


extern volatile __bit TRISC4 __attribute__((address(0xA4)));


extern volatile __bit TRISC5 __attribute__((address(0xA5)));


extern volatile __bit TRISC6 __attribute__((address(0xA6)));


extern volatile __bit TRISC7 __attribute__((address(0xA7)));


extern volatile __bit TRMT __attribute__((address(0x8F1)));


extern volatile __bit TS __attribute__((address(0x24D2)));


extern volatile __bit TSEN __attribute__((address(0x4865)));


extern volatile __bit TSRNG __attribute__((address(0x4864)));


extern volatile __bit TX1CKPPS0 __attribute__((address(0xF660)));


extern volatile __bit TX1CKPPS1 __attribute__((address(0xF661)));


extern volatile __bit TX1CKPPS2 __attribute__((address(0xF662)));


extern volatile __bit TX1CKPPS3 __attribute__((address(0xF663)));


extern volatile __bit TX1CKPPS4 __attribute__((address(0xF664)));


extern volatile __bit TX1IE __attribute__((address(0x38CC)));


extern volatile __bit TX1IF __attribute__((address(0x387C)));


extern volatile __bit TX9 __attribute__((address(0x8F6)));


extern volatile __bit TX9D __attribute__((address(0x8F0)));


extern volatile __bit TXEN __attribute__((address(0x8F5)));


extern volatile __bit U1MD __attribute__((address(0x3CE4)));


extern volatile __bit UA1 __attribute__((address(0xC79)));


extern volatile __bit UA2 __attribute__((address(0xCC9)));


extern volatile __bit UTH0 __attribute__((address(0x470)));


extern volatile __bit UTH1 __attribute__((address(0x471)));


extern volatile __bit UTH10 __attribute__((address(0x47A)));


extern volatile __bit UTH11 __attribute__((address(0x47B)));


extern volatile __bit UTH12 __attribute__((address(0x47C)));


extern volatile __bit UTH13 __attribute__((address(0x47D)));


extern volatile __bit UTH14 __attribute__((address(0x47E)));


extern volatile __bit UTH15 __attribute__((address(0x47F)));


extern volatile __bit UTH2 __attribute__((address(0x472)));


extern volatile __bit UTH3 __attribute__((address(0x473)));


extern volatile __bit UTH4 __attribute__((address(0x474)));


extern volatile __bit UTH5 __attribute__((address(0x475)));


extern volatile __bit UTH6 __attribute__((address(0x476)));


extern volatile __bit UTH7 __attribute__((address(0x477)));


extern volatile __bit UTH8 __attribute__((address(0x478)));


extern volatile __bit UTH9 __attribute__((address(0x479)));


extern volatile __bit UTHR __attribute__((address(0x8AE)));


extern volatile __bit VCFG01 __attribute__((address(0x894)));


extern volatile __bit VCFG11 __attribute__((address(0x895)));


extern volatile __bit VREGPM __attribute__((address(0x4091)));


extern volatile __bit WCOL1 __attribute__((address(0xC87)));


extern volatile __bit WCOL2 __attribute__((address(0xCD7)));


extern volatile __bit WDTCS0 __attribute__((address(0x406C)));


extern volatile __bit WDTCS1 __attribute__((address(0x406D)));


extern volatile __bit WDTCS2 __attribute__((address(0x406E)));


extern volatile __bit WDTPS0 __attribute__((address(0x4061)));


extern volatile __bit WDTPS1 __attribute__((address(0x4062)));


extern volatile __bit WDTPS2 __attribute__((address(0x4063)));


extern volatile __bit WDTPS3 __attribute__((address(0x4064)));


extern volatile __bit WDTPS4 __attribute__((address(0x4065)));


extern volatile __bit WDTPSCNT0 __attribute__((address(0x4070)));


extern volatile __bit WDTPSCNT1 __attribute__((address(0x4071)));


extern volatile __bit WDTPSCNT10 __attribute__((address(0x407A)));


extern volatile __bit WDTPSCNT11 __attribute__((address(0x407B)));


extern volatile __bit WDTPSCNT12 __attribute__((address(0x407C)));


extern volatile __bit WDTPSCNT13 __attribute__((address(0x407D)));


extern volatile __bit WDTPSCNT14 __attribute__((address(0x407E)));


extern volatile __bit WDTPSCNT15 __attribute__((address(0x407F)));


extern volatile __bit WDTPSCNT16 __attribute__((address(0x4080)));


extern volatile __bit WDTPSCNT17 __attribute__((address(0x4081)));


extern volatile __bit WDTPSCNT2 __attribute__((address(0x4072)));


extern volatile __bit WDTPSCNT3 __attribute__((address(0x4073)));


extern volatile __bit WDTPSCNT4 __attribute__((address(0x4074)));


extern volatile __bit WDTPSCNT5 __attribute__((address(0x4075)));


extern volatile __bit WDTPSCNT6 __attribute__((address(0x4076)));


extern volatile __bit WDTPSCNT7 __attribute__((address(0x4077)));


extern volatile __bit WDTPSCNT8 __attribute__((address(0x4078)));


extern volatile __bit WDTPSCNT9 __attribute__((address(0x4079)));


extern volatile __bit WDTSEN __attribute__((address(0x4060)));


extern volatile __bit WDTSTATE __attribute__((address(0x4082)));


extern volatile __bit WDTTMR0 __attribute__((address(0x4083)));


extern volatile __bit WDTTMR1 __attribute__((address(0x4084)));


extern volatile __bit WDTTMR2 __attribute__((address(0x4085)));


extern volatile __bit WDTTMR3 __attribute__((address(0x4086)));


extern volatile __bit WDTWINDOW0 __attribute__((address(0x4068)));


extern volatile __bit WDTWINDOW1 __attribute__((address(0x4069)));


extern volatile __bit WDTWINDOW2 __attribute__((address(0x406A)));


extern volatile __bit WINDOW0 __attribute__((address(0x4068)));


extern volatile __bit WINDOW1 __attribute__((address(0x4069)));


extern volatile __bit WINDOW2 __attribute__((address(0x406A)));


extern volatile __bit WPOL __attribute__((address(0x24C4)));


extern volatile __bit WPUA0 __attribute__((address(0xF9C8)));


extern volatile __bit WPUA1 __attribute__((address(0xF9C9)));


extern volatile __bit WPUA2 __attribute__((address(0xF9CA)));


extern volatile __bit WPUA3 __attribute__((address(0xF9CB)));


extern volatile __bit WPUA4 __attribute__((address(0xF9CC)));


extern volatile __bit WPUA5 __attribute__((address(0xF9CD)));


extern volatile __bit WPUB4 __attribute__((address(0xFA24)));


extern volatile __bit WPUB5 __attribute__((address(0xFA25)));


extern volatile __bit WPUB6 __attribute__((address(0xFA26)));


extern volatile __bit WPUB7 __attribute__((address(0xFA27)));


extern volatile __bit WPUC0 __attribute__((address(0xFA78)));


extern volatile __bit WPUC1 __attribute__((address(0xFA79)));


extern volatile __bit WPUC2 __attribute__((address(0xFA7A)));


extern volatile __bit WPUC3 __attribute__((address(0xFA7B)));


extern volatile __bit WPUC4 __attribute__((address(0xFA7C)));


extern volatile __bit WPUC5 __attribute__((address(0xFA7D)));


extern volatile __bit WPUC6 __attribute__((address(0xFA7E)));


extern volatile __bit WPUC7 __attribute__((address(0xFA7F)));


extern volatile __bit WR __attribute__((address(0x40F1)));


extern volatile __bit WREN __attribute__((address(0x40F2)));


extern volatile __bit WRERR __attribute__((address(0x40F3)));


extern volatile __bit WS __attribute__((address(0x24D1)));


extern volatile __bit WSEL0 __attribute__((address(0x24E8)));


extern volatile __bit WSEL1 __attribute__((address(0x24E9)));


extern volatile __bit WSEL2 __attribute__((address(0x24EA)));


extern volatile __bit WSEL3 __attribute__((address(0x24EB)));


extern volatile __bit WSEL4 __attribute__((address(0x24EC)));


extern volatile __bit WUE __attribute__((address(0x8F9)));


extern volatile __bit ZCDIE __attribute__((address(0x38C6)));


extern volatile __bit ZCDIF __attribute__((address(0x3876)));


extern volatile __bit ZCDINTN __attribute__((address(0x48F8)));


extern volatile __bit ZCDINTP __attribute__((address(0x48F9)));


extern volatile __bit ZCDMD __attribute__((address(0x3CC8)));


extern volatile __bit ZCDOUT __attribute__((address(0x48FD)));


extern volatile __bit ZCDPOL __attribute__((address(0x48FC)));


extern volatile __bit ZCDSEN __attribute__((address(0x48FF)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nADDRESS1 __attribute__((address(0xC7D)));


extern volatile __bit nADDRESS2 __attribute__((address(0xCCD)));


extern volatile __bit nBOR __attribute__((address(0x4098)));


extern volatile __bit nMEMV __attribute__((address(0x40A1)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x4099)));


extern volatile __bit nRI __attribute__((address(0x409A)));


extern volatile __bit nRMCLR __attribute__((address(0x409B)));


extern volatile __bit nRWDT __attribute__((address(0x409C)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nWDTWV __attribute__((address(0x409D)));


extern volatile __bit nWRITE1 __attribute__((address(0xC7A)));


extern volatile __bit nWRITE2 __attribute__((address(0xCCA)));
# 1880 "/opt/microchip/xc8/v2.10/pic/include/pic_chip_select.h" 2 3
# 14 "/opt/microchip/xc8/v2.10/pic/include/pic.h" 2 3
# 30 "/opt/microchip/xc8/v2.10/pic/include/pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "/opt/microchip/xc8/v2.10/pic/include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "/opt/microchip/xc8/v2.10/pic/include/eeprom_routines.h" 1 3
# 114 "/opt/microchip/xc8/v2.10/pic/include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 86 "/opt/microchip/xc8/v2.10/pic/include/pic.h" 2 3





#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(unsigned char);
# 137 "/opt/microchip/xc8/v2.10/pic/include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "/opt/microchip/xc8/v2.10/pic/include/xc.h" 2 3
# 2 "/opt/microchip/xc8/v2.10/pic/sources/c99/pic/__eeprom.c" 2



void
__eecpymem(volatile unsigned char *to, __eeprom unsigned char * from, unsigned char size)
{
 volatile unsigned char *cp = to;
# 22 "/opt/microchip/xc8/v2.10/pic/sources/c99/pic/__eeprom.c"
 while (NVMCON1bits.WR) {
  continue;
 }
 NVMCON1bits.NVMREGS = 1;
 NVMADRL = (unsigned char) from;
 NVMADRH = 0x70;
 while (size--) {
  NVMCON1bits.RD = 1;
  *cp++ = NVMDATL;
  NVMADRL++;
 }



}

void
__memcpyee(__eeprom unsigned char * to, const unsigned char *from, unsigned char size)
{
 const unsigned char *ptr =from;
# 69 "/opt/microchip/xc8/v2.10/pic/sources/c99/pic/__eeprom.c"
 while (NVMCON1bits.WR) {
  continue;
 }
 NVMCON1bits.NVMREGS = 1;
 NVMADRL = (unsigned char) to - 1U;
 NVMADRH = 0x70;
 NVMDATH = 0;
 while (size--) {
  while (NVMCON1bits.WR) {
   continue;
  }
  NVMDATL = *ptr++;
  NVMADRL++;
  STATUSbits.CARRY = 0;
  if (INTCONbits.GIE) {
   STATUSbits.CARRY = 1;
  }
  NVMCON1bits.WREN = 1;
  NVMCON2 = 0x55;
  NVMCON2 = 0xAA;
  NVMCON1bits.WR = 1;
  while (NVMCON1bits.WR) {
   continue;
  }
  NVMCON1bits.WREN = 0;
  if (STATUSbits.CARRY) {
   INTCONbits.GIE = 1;
  }
 }



}

unsigned char
__eetoc(__eeprom void *addr)
{
 unsigned char data;
 __eecpymem((unsigned char *) &data,addr,1);
 return data;
}

unsigned int
__eetoi(__eeprom void *addr)
{
 unsigned int data;
 __eecpymem((unsigned char *) &data,addr,2);
 return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__eetom(__eeprom void *addr)
{
 __uint24 data;
 __eecpymem((unsigned char *) &data,addr,3);
 return data;
}
#pragma warning pop

unsigned long
__eetol(__eeprom void *addr)
{
 unsigned long data;
 __eecpymem((unsigned char *) &data,addr,4);
 return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__eetoo(__eeprom void *addr)
{
 unsigned long long data;
 __eecpymem((unsigned char *) &data,addr,8);
 return data;
}
#pragma warning pop

unsigned char
__ctoee(__eeprom void *addr, unsigned char data)
{
 __memcpyee(addr,(unsigned char *) &data,1);
 return data;
}

unsigned int
__itoee(__eeprom void *addr, unsigned int data)
{
 __memcpyee(addr,(unsigned char *) &data,2);
 return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__mtoee(__eeprom void *addr, __uint24 data)
{
 __memcpyee(addr,(unsigned char *) &data,3);
 return data;
}
#pragma warning pop

unsigned long
__ltoee(__eeprom void *addr, unsigned long data)
{
 __memcpyee(addr,(unsigned char *) &data,4);
 return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__otoee(__eeprom void *addr, unsigned long long data)
{
 __memcpyee(addr,(unsigned char *) &data,8);
 return data;
}
#pragma warning pop

float
__eetoft(__eeprom void *addr)
{
 float data;
 __eecpymem((unsigned char *) &data,addr,3);
 return data;
}

double
__eetofl(__eeprom void *addr)
{
 double data;
 __eecpymem((unsigned char *) &data,addr,4);
 return data;
}

float
__fttoee(__eeprom void *addr, float data)
{
 __memcpyee(addr,(unsigned char *) &data,3);
 return data;
}

double
__fltoee(__eeprom void *addr, double data)
{
 __memcpyee(addr,(unsigned char *) &data,4);
 return data;
}
