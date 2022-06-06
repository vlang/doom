//
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
//
// Parses "Thing" sections in dehacked files
//

#include <stdio.h>
#include <stdlib.h>

#include "doomtype.h"

#include "deh_defs.h"
#include "deh_main.h"
#include "deh_mapping.h"

#include "info.h"

DEH_BEGIN_MAPPING(deh_thing, thing_mapping, mobjinfo_t)
  DEH_MAPPING(deh_thing, "ID #",                doomednum)
  DEH_MAPPING(deh_thing, "Initial frame",       spawnstate)
  DEH_MAPPING(deh_thing, "Hit points",          spawnhealth)
  DEH_MAPPING(deh_thing, "First moving frame",  seestate)
  DEH_MAPPING(deh_thing, "Alert sound",         seesound)
  DEH_MAPPING(deh_thing, "Reaction time",       reactiontime)
  DEH_MAPPING(deh_thing, "Attack sound",        attacksound)
  DEH_MAPPING(deh_thing, "Injury frame",        painstate)
  DEH_MAPPING(deh_thing, "Pain chance",         painchance)
  DEH_MAPPING(deh_thing, "Pain sound",          painsound)
  DEH_MAPPING(deh_thing, "Close attack frame",  meleestate)
  DEH_MAPPING(deh_thing, "Far attack frame",    missilestate)
  DEH_MAPPING(deh_thing, "Death frame",         deathstate)
  DEH_MAPPING(deh_thing, "Exploding frame",     xdeathstate)
  DEH_MAPPING(deh_thing, "Death sound",         deathsound)
  DEH_MAPPING(deh_thing, "Speed",               speed)
  DEH_MAPPING(deh_thing, "Width",               radius)
  DEH_MAPPING(deh_thing, "Height",              height)
  DEH_MAPPING(deh_thing, "Mass",                mass)
  DEH_MAPPING(deh_thing, "Missile damage",      damage)
  DEH_MAPPING(deh_thing, "Action sound",        activesound)
  DEH_MAPPING(deh_thing, "Bits",                flags)
  DEH_MAPPING(deh_thing, "Respawn frame",       raisestate)
DEH_END_MAPPING

static void *DEH_ThingStart(deh_context_t *context, char *line)
{
    int thing_number = 0;
    mobjinfo_t *mobj;
    
    if (sscanf(line, "Thing %i", &thing_number) != 1)
    {
        DEH_Warning(context, "Parse error on section start");
        return NULL;
    }

    // dehacked files are indexed from 1
    --thing_number;

    if (thing_number < 0 || thing_number >= NUMMOBJTYPES)
    {
        DEH_Warning(context, "Invalid thing number: %i", thing_number);
        return NULL;
    }
    
    mobj = &mobjinfo[thing_number];
    
    return mobj;
}

static void DEH_ThingParseLine(deh_context_t *context, char *line, void *tag)
{
    mobjinfo_t *mobj;
    char *variable_name, *value;
    int ivalue;
    
    if (tag == NULL)
       return;

    mobj = (mobjinfo_t *) tag;

    // Parse the assignment

    if (!DEH_ParseAssignment(line, &variable_name, &value))
    {
        // Failed to parse

        DEH_Warning(context, "Failed to parse assignment");
        return;
    }
    
//    printf("Set %s to %s for mobj\n", variable_name, value);

    // all values are integers

    ivalue = atoi(value);
    
    // Set the field value

    DEH_SetMapping(context, &thing_mapping, mobj, variable_name, ivalue);
}

static void DEH_ThingSHA1Sum(sha1_context_t *context)
{
    int i;

    for (i=0; i<NUMMOBJTYPES; ++i)
    {
        DEH_StructSHA1Sum(context, &thing_mapping, &mobjinfo[i]);
    }
}

deh_section_t deh_section_thing =
{
    "Thing",
    NULL,
    DEH_ThingStart,
    DEH_ThingParseLine,
    NULL,
    DEH_ThingSHA1Sum,
};

