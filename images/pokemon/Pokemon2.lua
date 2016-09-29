-----------------------------------------------------------------------------------------
--
-- Pokemon2.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:9924bae69606b9e0d372d390fc0be9c8:c258d66d4b0aac015daf235c8b5812ce:86033f0218860231ad4aa6c7aa9e7aba$
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
            -- [200 (31)] (imported)-Background (80ms)
            x=0,
            y=0,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 2 (80ms) (replace)
            x=502,
            y=0,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 3 (80ms) (replace)
            x=1004,
            y=0,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 4 (80ms) (replace)
            x=1506,
            y=0,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 5 (80ms) (replace)
            x=0,
            y=200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 6 (80ms) (replace)
            x=502,
            y=200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 7 (80ms) (replace)
            x=1004,
            y=200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 8 (80ms) (replace)
            x=1506,
            y=200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 9 (80ms) (replace)
            x=0,
            y=400,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 10 (80ms) (replace)
            x=502,
            y=400,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 11 (80ms) (replace)
            x=1004,
            y=400,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 12 (80ms) (replace)
            x=1506,
            y=400,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 13 (80ms) (replace)
            x=0,
            y=600,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 14 (80ms) (replace)
            x=502,
            y=600,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 15 (80ms) (replace)
            x=1004,
            y=600,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 16 (80ms) (replace)
            x=1506,
            y=600,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 17 (80ms) (replace)
            x=0,
            y=800,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 18 (80ms) (replace)
            x=502,
            y=800,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 19 (80ms) (replace)
            x=1004,
            y=800,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 20 (80ms) (replace)
            x=1506,
            y=800,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 21 (80ms) (replace)
            x=0,
            y=1000,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 22 (80ms) (replace)
            x=502,
            y=1000,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 23 (80ms) (replace)
            x=1004,
            y=1000,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 24 (80ms) (replace)
            x=1506,
            y=1000,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 25 (80ms) (replace)
            x=0,
            y=1200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 26 (80ms) (replace)
            x=502,
            y=1200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 27 (80ms) (replace)
            x=1004,
            y=1200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 28 (80ms) (replace)
            x=1506,
            y=1200,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 29 (80ms) (replace)
            x=0,
            y=1400,
            width=502,
            height=200,

        },
        {
            -- [200 (31)] (imported)-Frame 30 (80ms) (replace)
            x=502,
            y=1400,
            width=502,
            height=200,

        },
    },
    
    sheetContentWidth = 2008,
    sheetContentHeight = 1600
}

SheetInfo.sequenceData = {
                name = "charmeleon", 
                start = 1, 
                count = 30, 
                time = 1500
        }

function SheetInfo:getSequence()
    return self.sequenceData;
end

function SheetInfo:getSheet()
    return self.sheet;
end

return SheetInfo
