//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//      Zone Memory Allocation, perhaps NeXT ObjectiveC inspired.
//	Remark: this was the only stuff that, according
//	 to John Carmack, might have been useful for
//	 Quake.
//



#ifndef __Z_ZONE__
#define __Z_ZONE__

#include <stdio.h>

//
// ZONE MEMORY
// PU - purge tags.


   #define PU_STATIC  1                  // static entire execution time
   #define PU_SOUND  2                       // static while playing
   #define PU_MUSIC  3                       // static while playing
   #define  PU_FREE  4                        // a free block
   #define PU_LEVEL 5                       // static until level exited
   #define PU_LEVSPEC 6                     // a special thinker in a level
    
    // Tags >= PU_PURGELEVEL are purgable whenever needed.

    #define PU_PURGELEVEL 7
    #define PU_CACHE 8

    // Total number of different tag types

    #define PU_NUM_TAGS 9
        

void	Z_Init (void);
void*	Z_Malloc (int size, int tag, void *ptr);
void    Z_Free (void *ptr);
void    Z_FreeTags (int lowtag, int hightag);
void    Z_DumpHeap (int lowtag, int hightag);
void    Z_FileDumpHeap (FILE *f);
void    Z_CheckHeap (void);
void    Z_ChangeTag2 (void *ptr, int tag, const char *file, int line);
void    Z_ChangeUser(void *ptr, void **user);
int     Z_FreeMemory (void);
unsigned int Z_ZoneSize(void);

//
// This is used to get the local FILE:LINE info from CPP
// prior to really call the function in question.
//
#define Z_ChangeTag(p,t)                                       \
    Z_ChangeTag2((p), (t), __FILE__, __LINE__)


#endif
