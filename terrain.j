// Terrain API

native GetTerrainCliffLevel         takes real x, real y returns integer

native SetWaterBaseColor            takes integer red, integer green, integer blue, integer alpha returns nothing

native SetWaterDeforms              takes boolean val returns nothing

native GetTerrainType               takes real x, real y returns integer

native GetTerrainVariance           takes real x, real y returns integer

native SetTerrainType               takes real x, real y, integer terrainType, integer variation, integer area, integer shape returns nothing

/**
@note Some units will z position will not take into account your terrain deformation(Demolsher, Kodo Beast, etc.). 
To resolve this issue, set [Art - Elevation - Sample Points] = 0 inside the object editor for the unit. 
@param depth Positive values create craters. Negative values create hills.
*/
native TerrainDeformCrater          takes real x, real y, real radius, real depth, real duration, boolean permanent returns terraindeformation

/**
Returns if a specific pathingtype is set at the location.
@note Returns true if the pathingtype is *not* set, false if it *is* set.
*/
native IsTerrainPathable            takes real x, real y, pathingtype t returns boolean

native SetTerrainPathable           takes real x, real y, pathingtype t, boolean flag returns nothing




