-----------------------------------------------------------------------------------------
--
-- Pokemon12.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1fa20a9af1b5dfb4bc999d3209f63c6b:d2585541c64e145888668c9b4a917651:7ecb12160658fd5e9bbcd9c05a0497a7$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- [200 (55)] (imported)-Background (70ms)
            x=203,
            y=1192,
            width=502,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 2 (70ms) (replace)
            x=636,
            y=992,
            width=233,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 3 (70ms) (replace)
            x=0,
            y=792,
            width=234,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 4 (70ms) (replace)
            x=234,
            y=792,
            width=234,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 5 (70ms) (replace)
            x=232,
            y=198,
            width=234,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 6 (70ms) (replace)
            x=0,
            y=198,
            width=232,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 7 (70ms) (replace)
            x=466,
            y=198,
            width=229,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 8 (70ms) (replace)
            x=197,
            y=0,
            width=229,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 9 (70ms) (replace)
            x=436,
            y=396,
            width=224,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 10 (70ms) (replace)
            x=0,
            y=594,
            width=221,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 11 (70ms) (replace)
            x=217,
            y=396,
            width=219,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 12 (70ms) (replace)
            x=0,
            y=396,
            width=217,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 13 (70ms) (replace)
            x=630,
            y=594,
            width=212,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 14 (70ms) (replace)
            x=221,
            y=594,
            width=207,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 15 (70ms) (replace)
            x=428,
            y=594,
            width=202,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 16 (70ms) (replace)
            x=660,
            y=396,
            width=200,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 17 (70ms) (replace)
            x=426,
            y=0,
            width=197,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 18 (70ms) (replace)
            x=0,
            y=0,
            width=197,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 19 (70ms) (replace)
            x=695,
            y=198,
            width=197,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 20 (70ms) (replace)
            x=623,
            y=0,
            width=201,
            height=198,

        },
        {
            -- [200 (55)] (imported)-Frame 21 (70ms) (replace)
            x=0,
            y=1192,
            width=203,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 22 (70ms) (replace)
            x=433,
            y=992,
            width=203,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 23 (70ms) (replace)
            x=0,
            y=992,
            width=208,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 24 (70ms) (replace)
            x=705,
            y=1192,
            width=210,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 25 (70ms) (replace)
            x=222,
            y=1392,
            width=215,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 26 (70ms) (replace)
            x=437,
            y=1392,
            width=218,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 27 (70ms) (replace)
            x=0,
            y=1392,
            width=222,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 28 (70ms) (replace)
            x=208,
            y=992,
            width=225,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 29 (70ms) (replace)
            x=468,
            y=792,
            width=225,
            height=200,

        },
        {
            -- [200 (55)] (imported)-Frame 30 (70ms) (replace)
            x=693,
            y=792,
            width=230,
            height=200,

        },
    },
    
    sheetContentWidth = 923,
    sheetContentHeight = 1592
}

SheetInfo.sequenceData = {
                name = "Rhydon", 
                start = 1, 
                count = 30, 
                time = 2000
        }

function SheetInfo:getSequence()
    return self.sequenceData;
end

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
