/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ‘æ10Í           */
/* project: fillbox          */
/* outline: ƒpƒ^[ƒ“•`‰æ‰ñ˜H */

#include <string.h>
#include "ap_cint.h"

#define XSIZE 640

void fillbox(
    volatile uint16 *vram,
    uint10 xpos,
    uint10 ypos,
    uint10 width,
    uint10 height,
    uint16 color )
{
    int    i;
    uint16 linebuf[XSIZE];
    uint16 *dstaddr;

    /* “h‚è‚Â‚Ô‚µF‚ğ1ƒ‰ƒCƒ“•ª—pˆÓ */
    for( i=0; i<width; i++ ) {
        linebuf[i] = color;
    }
    
    /* memcpyŠÖ”‚ğŒJ‚è•Ô‚µ‚Ä‹éŒ`—Ìˆæ‚ğ“h‚è‚Â‚Ô‚· */
    for ( i=0; i<height; i++ ) {
        dstaddr = (uint16 *)(vram + (ypos+i)*XSIZE + xpos);
        memcpy(dstaddr, linebuf, width*sizeof(uint16));
    }
}
