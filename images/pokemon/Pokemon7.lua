-----------------------------------------------------------------------------------------
--
-- Pokemon7.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f95a3372efbc071d0029f62075ba4dee:a1e2cb3162dac7b4c1e25e5618c7a168:bac284d6670a46f58a34d0a74f85a20e$
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
            -- [200 (42)] (imported)-Background (80ms)
            x=410,
            y=1154,
            width=502,
            height=200,

        },
        {
            -- [200 (42)] (imported)-Frame 2 (80ms) (replace)
            x=203,
            y=1154,
            width=207,
            height=197,

        },
        {
            -- [200 (42)] (imported)-Frame 3 (80ms) (replace)
            x=0,
            y=754,
            width=208,
            height=192,

        },
        {
            -- [200 (42)] (imported)-Frame 4 (80ms) (replace)
            x=209,
            y=178,
            width=207,
            height=186,

        },
        {
            -- [200 (42)] (imported)-Frame 5 (80ms) (replace)
            x=635,
            y=0,
            width=208,
            height=178,

        },
        {
            -- [200 (42)] (imported)-Frame 6 (80ms) (replace)
            x=0,
            y=0,
            width=211,
            height=170,

        },
        {
            -- [200 (42)] (imported)-Frame 7 (80ms) (replace)
            x=211,
            y=0,
            width=212,
            height=170,

        },
        {
            -- [200 (42)] (imported)-Frame 8 (80ms) (replace)
            x=423,
            y=0,
            width=212,
            height=173,

        },
        {
            -- [200 (42)] (imported)-Frame 9 (80ms) (replace)
            x=0,
            y=178,
            width=209,
            height=182,

        },
        {
            -- [200 (42)] (imported)-Frame 10 (80ms) (replace)
            x=413,
            y=754,
            width=206,
            height=195,

        },
        {
            -- [200 (42)] (imported)-Frame 11 (80ms) (replace)
            x=208,
            y=554,
            width=201,
            height=198,

        },
        {
            -- [200 (42)] (imported)-Frame 12 (80ms) (replace)
            x=619,
            y=754,
            width=201,
            height=200,

        },
        {
            -- [200 (42)] (imported)-Frame 13 (80ms) (replace)
            x=820,
            y=754,
            width=201,
            height=200,

        },
        {
            -- [200 (42)] (imported)-Frame 14 (80ms) (replace)
            x=811,
            y=554,
            width=199,
            height=200,

        },
        {
            -- [200 (42)] (imported)-Frame 15 (80ms) (replace)
            x=0,
            y=1154,
            width=203,
            height=200,

        },
        {
            -- [200 (42)] (imported)-Frame 16 (80ms) (replace)
            x=818,
            y=954,
            width=203,
            height=200,

        },
        {
            -- [200 (42)] (imported)-Frame 17 (80ms) (replace)
            x=610,
            y=554,
            width=201,
            height=198,

        },
        {
            -- [200 (42)] (imported)-Frame 18 (80ms) (replace)
            x=409,
            y=554,
            width=201,
            height=198,

        },
        {
            -- [200 (42)] (imported)-Frame 19 (80ms) (replace)
            x=0,
            y=954,
            width=204,
            height=198,

        },
        {
            -- [200 (42)] (imported)-Frame 20 (80ms) (replace)
            x=408,
            y=954,
            width=204,
            height=198,

        },
        {
            -- [200 (42)] (imported)-Frame 21 (80ms) (replace)
            x=204,
            y=954,
            width=204,
            height=198,

        },
        {
            -- [200 (42)] (imported)-Frame 22 (80ms) (replace)
            x=612,
            y=954,
            width=206,
            height=197,

        },
        {
            -- [200 (42)] (imported)-Frame 23 (80ms) (replace)
            x=208,
            y=754,
            width=205,
            height=195,

        },
        {
            -- [200 (42)] (imported)-Frame 24 (80ms) (replace)
            x=418,
            y=364,
            width=207,
            height=190,

        },
        {
            -- [200 (42)] (imported)-Frame 25 (80ms) (replace)
            x=209,
            y=364,
            width=209,
            height=188,

        },
        {
            -- [200 (42)] (imported)-Frame 26 (80ms) (replace)
            x=623,
            y=178,
            width=209,
            height=186,

        },
        {
            -- [200 (42)] (imported)-Frame 27 (80ms) (replace)
            x=416,
            y=178,
            width=207,
            height=186,

        },
        {
            -- [200 (42)] (imported)-Frame 28 (80ms) (replace)
            x=0,
            y=364,
            width=209,
            height=188,

        },
        {
            -- [200 (42)] (imported)-Frame 29 (80ms) (replace)
            x=625,
            y=364,
            width=208,
            height=190,

        },
        {
            -- [200 (42)] (imported)-Frame 30 (80ms) (replace)
            x=0,
            y=554,
            width=208,
            height=190,

        },
    },
    
    sheetContentWidth = 1021,
    sheetContentHeight = 1354
}

SheetInfo.sequenceData = {
                name = "Blastoise", 
                start = 1, 
                count = 30, 
                time = 2500
        }

function SheetInfo:getSequence()
    return self.sequenceData;
end

function SheetInfo:getSheet()
    return self.sheet;
end

return SheetInfo
