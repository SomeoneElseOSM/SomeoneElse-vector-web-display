-- ----------------------------------------------------------------------------
-- svwd_process_style.lua
--
-- Copyright (C) 2026  Andy Townsend
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.
-- ----------------------------------------------------------------------------
-- It uses the "dkjson" library.  See https://dkolf.de/dkjson-lua/
-- Copy that to e.g. /usr/local/share/lua/5.3/dkjson.lua .
-- ----------------------------------------------------------------------------

local open = io.open
local json = require ("dkjson")

-- ----------------------------------------------------------------------------
-- File handling is basic - we read in the entire ("*a") input file 
-- ("rb" == read as a binary file) and return it.
-- ----------------------------------------------------------------------------
local function read_file( path )
    local file = open( path, "rb" )
    if not file then return nil end
    local content = file:read "*a"
    file:close()
    return content
end

-- ----------------------------------------------------------------------------
-- Similarly we write out the entire file from a passed variable.
-- ----------------------------------------------------------------------------
local function write_file( path, content )
    local file = open( path,  "w" ) 
    file:write( content )
    file:close()
end


-- ----------------------------------------------------------------------------
-- The three parameters are read from the command line below.
-- The contents of the input file are then decoded as json and assigned to a
-- local lua table "obj", which we then process.
-- Error handling is minimal.
-- ----------------------------------------------------------------------------
local function process_style( input_filename, output_filename, target_style, debug )
    local fileContent = read_file( input_filename );

    local obj, pos, err = json.decode ( fileContent, 1, nil )

    if ( err ) then
        print ( "Error:", err )
    else
-- ----------------------------------------------------------------------------
-- Inside the "obj" table is a repeating element "layers", corresponding to the
-- MapLibre layers in the style.
--
-- How many layers are in our input file initially?
-- ----------------------------------------------------------------------------
        print ( #obj.layers, "layers in", input_filename )

-- ----------------------------------------------------------------------------
-- We iterate backwards through the array otherwise when we do a table-remove
-- and then also increment i we'll skip some layers.  Going backwards avoids 
-- this (the layers below that have already been dealt with are moved up).
-- Using table.remove may not be the fastest approach (see 
-- https://stackoverflow.com/questions/12394841/safely-remove-items-from-an-array-table-while-iterating#12435347 )
-- but it's fast enough for a MapLibre style with < 1000 layers.
-- ----------------------------------------------------------------------------
        for i = #obj.layers,1,-1 do
-- ----------------------------------------------------------------------------
-- There is a "nil" check here because if we remove any layers from the table
-- layers below will be moved up, and our iteration is for however many layers
-- were initially in the table, not are in it now.
-- ----------------------------------------------------------------------------
            if ( obj.layers[i] ~= nil ) then
-- ----------------------------------------------------------------------------
-- Enable for more debug:
--              print (i, obj.layers[i].id)
-- ----------------------------------------------------------------------------
-- MapLibre layers have content with keys such as "id" and "type".
-- The key "target" isn't a standard MapLibre one; it's added to the input file
-- to allow us to generate multiple styles from one original, where each style
-- is a subset of the original.
--
-- If a layer does NOT have the "target" key, it is written to the output.
-- This saves us having to add "target" to every layer of a large input style;
-- only to the ones that are specific to certain output styles.
--
-- If a layer DOES have the "target" key, and it matches our target_style, 
-- it is written to the output.
--
-- If a layer DOES have the "target" key, and it DOES NOT match our 
-- target_style, then it is not written to the output (we remove it from the
-- table).
-- ----------------------------------------------------------------------------
                if ( obj.layers[i].target ~= nil ) then
-- ----------------------------------------------------------------------------
-- Enable for more debug:
--                      print ( "Comparing", obj.layers[i].target, target_style )
-- ----------------------------------------------------------------------------
                    if ( string.match( obj.layers[i].target, target_style ) == nil ) then
-- ----------------------------------------------------------------------------
-- Enable for more debug:
--                      print ( string.match( obj.layers[i].target, target_style ))
-- ----------------------------------------------------------------------------
                        if ( debug == true ) then
                            print ( "Removing (another target specifed)", i, obj.layers[i].id)
                        end
                        table.remove( obj.layers, i )
                    else
                        if ( debug == true ) then
                            print ( "Leaving (this target specified)", i, obj.layers[i].id)
                        end
                    end
                else
                    if ( debug == true ) then
                        print ( "Leaving (no target specified)", i, obj.layers[i].id)
                    end
                end
            end
        end

-- ----------------------------------------------------------------------------
-- After the manipulation of the layers within our lua table, how many do we
-- have now?
-- ----------------------------------------------------------------------------
        print ( #obj.layers, "layers in", output_filename, "style", target_style )

-- ----------------------------------------------------------------------------
-- Encode our lua table into a string and write out the output filename based 
-- on that.
-- Note that while "indent = true" will give us some indentation, it won't 
-- match the input filename as text.  The order of layers and other arrays will
-- be preserved, but the order of individual keys won't be.  This doesn't
-- matter as far as the meaning of the file is concerned.
-- ----------------------------------------------------------------------------
        local str = json.encode (obj, { indent = true })
        write_file( output_filename, str )
    end
end


-- ----------------------------------------------------------------------------
-- Main processing
--
-- We expect 3 or 4 arguments.  The first 3 are required
-- 1) Input file
-- 2) Output file
-- 3) Style name
-- 4) Debug - if passed as anything non-nil, debug is turned on
-- ----------------------------------------------------------------------------
    if ( arg[1] ~= nil ) then
        print( "Input file: ", arg[1] )

        if ( arg[2] ~= nil ) then
            print( "Output file: ", arg[2] )

            if ( arg[3] ~= nil ) then
                print( "Style: ", arg[3] )

                print( "Debug: ", arg[4] )
                if ( arg[4] ~= nil ) then
                    process_style( arg[1], arg[2], arg[3], true )
                else
                    process_style( arg[1], arg[2], arg[3], false )
                end
            else
                print( "arg3 is nil\n" )
            end
        else
            print( "arg2 is nil\n" )
        end
    else
        print( "arg1 is nil\n" )
    end


