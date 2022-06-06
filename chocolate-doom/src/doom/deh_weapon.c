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
// Parses "Weapon" sections in dehacked files
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "doomtype.h"

#include "d_items.h"

#include "deh_defs.h"
#include "deh_main.h"
#include "deh_mapping.h"

DEH_BEGIN_MAPPING(deh_weapon, weapon_mapping, weaponinfo_t)
  DEH_MAPPING(deh_weapon, "Ammo type",        ammo)
  DEH_MAPPING(deh_weapon, "Deselect frame",   upstate)
  DEH_MAPPING(deh_weapon, "Select frame",     downstate)
  DEH_MAPPING(deh_weapon, "Bobbing frame",    readystate)
  DEH_MAPPING(deh_weapon, "Shooting frame",   atkstate)
  DEH_MAPPING(deh_weapon, "Firing frame",     flashstate)
DEH_END_MAPPING

static void *DEH_WeaponStart(deh_context_t *context, char *line)
{
    int weapon_number = 0;

    if (sscanf(line, "Weapon %i", &weapon_number) != 1)
    {
        DEH_Warning(context, "Parse error on section start");
        return NULL;
    }

    if (weapon_number < 0 || weapon_number >= NUMWEAPONS)
    {
        DEH_Warning(context, "Invalid weapon number: %i", weapon_number);
        return NULL;
    }
    
    return &weaponinfo[weapon_number];
}

static void DEH_WeaponParseLine(deh_context_t *context, char *line, void *tag)
{
    char *variable_name, *value;
    weaponinfo_t *weapon;
    int ivalue;
    
    if (tag == NULL)
        return;

    weapon = (weaponinfo_t *) tag;

    if (!DEH_ParseAssignment(line, &variable_name, &value))
    {
        // Failed to parse

        DEH_Warning(context, "Failed to parse assignment");
        return;
    }

    ivalue = atoi(value);

    DEH_SetMapping(context, &weapon_mapping, weapon, variable_name, ivalue);
}

static void DEH_WeaponSHA1Sum(sha1_context_t *context)
{
    int i;

    for (i=0; i<NUMWEAPONS ;++i)
    {
        DEH_StructSHA1Sum(context, &weapon_mapping, &weaponinfo[i]);
    }
}

deh_section_t deh_section_weapon =
{
    "Weapon",
    NULL,
    DEH_WeaponStart,
    DEH_WeaponParseLine,
    NULL,
    DEH_WeaponSHA1Sum,
};

