-----------------------------------------------------------------------------------------
--
-- Pokemon13.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c72c03852cfc85241a4f46747e9d21ef:70f6a7c1a28d548de96b2f1f5fe30a44:d5ed8193a5b04804877c6577410ee57e$
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
            -- [200 (56)] (imported)-Background (70ms)
            x=0,
            y=1141,
            width=502,
            height=200,

        },
        {
            -- [200 (56)] (imported)-Frame 2 (70ms) (replace)
            x=0,
            y=0,
            width=205,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 3 (70ms) (replace)
            x=412,
            y=185,
            width=205,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 4 (70ms) (replace)
            x=617,
            y=185,
            width=204,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 5 (70ms) (replace)
            x=0,
            y=370,
            width=204,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 6 (70ms) (replace)
            x=208,
            y=185,
            width=204,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 7 (70ms) (replace)
            x=205,
            y=0,
            width=208,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 8 (70ms) (replace)
            x=0,
            y=185,
            width=208,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 9 (70ms) (replace)
            x=205,
            y=559,
            width=208,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 10 (70ms) (replace)
            x=413,
            y=559,
            width=204,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 11 (70ms) (replace)
            x=606,
            y=748,
            width=204,
            height=193,

        },
        {
            -- [200 (56)] (imported)-Frame 12 (70ms) (replace)
            x=617,
            y=559,
            width=204,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 13 (70ms) (replace)
            x=809,
            y=370,
            width=205,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 14 (70ms) (replace)
            x=200,
            y=748,
            width=205,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 15 (70ms) (replace)
            x=405,
            y=748,
            width=201,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 16 (70ms) (replace)
            x=413,
            y=0,
            width=201,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 17 (70ms) (replace)
            x=814,
            y=0,
            width=200,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 18 (70ms) (replace)
            x=614,
            y=0,
            width=200,
            height=185,

        },
        {
            -- [200 (56)] (imported)-Frame 19 (70ms) (replace)
            x=0,
            y=748,
            width=200,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 20 (70ms) (replace)
            x=609,
            y=370,
            width=200,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 21 (70ms) (replace)
            x=204,
            y=370,
            width=204,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 22 (70ms) (replace)
            x=0,
            y=941,
            width=204,
            height=193,

        },
        {
            -- [200 (56)] (imported)-Frame 23 (70ms) (replace)
            x=204,
            y=941,
            width=204,
            height=197,

        },
        {
            -- [200 (56)] (imported)-Frame 24 (70ms) (replace)
            x=502,
            y=1141,
            width=200,
            height=200,

        },
        {
            -- [200 (56)] (imported)-Frame 25 (70ms) (replace)
            x=812,
            y=941,
            width=200,
            height=200,

        },
        {
            -- [200 (56)] (imported)-Frame 26 (70ms) (replace)
            x=612,
            y=941,
            width=200,
            height=197,

        },
        {
            -- [200 (56)] (imported)-Frame 27 (70ms) (replace)
            x=408,
            y=941,
            width=204,
            height=197,

        },
        {
            -- [200 (56)] (imported)-Frame 28 (70ms) (replace)
            x=810,
            y=748,
            width=204,
            height=193,

        },
        {
            -- [200 (56)] (imported)-Frame 29 (70ms) (replace)
            x=408,
            y=370,
            width=201,
            height=189,

        },
        {
            -- [200 (56)] (imported)-Frame 30 (70ms) (replace)
            x=0,
            y=559,
            width=205,
            height=189,

        },
    },
    
    sheetContentWidth = 1014,
    sheetContentHeight = 1341
}

SheetInfo.sequenceData = {
                name = "Tangela", 
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
