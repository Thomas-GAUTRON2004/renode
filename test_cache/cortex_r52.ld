ENTRY(startup)

/* Définition des adresses et tailles de mémoire */
MEMORY
{
    /* Exemple : à adapter selon ta carte */
    FLASH (rx) : ORIGIN = 0x00000100, LENGTH = 256K
    RAM (rwx) : ORIGIN = 0x88000000, LENGTH = 256K
}

/* Définition des sections */
SECTIONS
{
    .text : {
        *(.vector_table);  /* Vecteurs d'interruption */
        *(.text*);        /* Code */
        *(.rodata*);     /* Données en lecture seule */
    } > FLASH

    .data : {
        *(.data*);         /* Données initialisées */
    } > RAM

    .bss : {
        *(.bss*);         /* Données non initialisées */
        *(COMMON);
    } > RAM

    .ma_section :
    {
        . =  ORIGIN(RAM) + 0x1000;
        *(.ma_section);
    } > RAM

    /* Section pour la pile (stack) */
    .stack : 
    {
        . = ALIGN(8);
        . = ORIGIN(RAM) + LENGTH(RAM) - 0x1000;
        __stack_init = .;
        . = ORIGIN(RAM) + LENGTH(RAM);
        __stack_end = .;
    } > RAM
}
