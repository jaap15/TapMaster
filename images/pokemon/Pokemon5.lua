-----------------------------------------------------------------------------------------
--
-- Pokemon5.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:9515572700080d0d9c11960826ae3bf8:2d858b92c9580b135e92ba9ebba970ea:d9dd1d2cd7152e5412eb2b8a5238a26c$
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
            -- [200 (44)] (imported)-Background (80ms)
            x=495,
            y=887,
            width=502,
            height=200,

        },
        {
            -- [200 (44)] (imported)-Frame 2 (80ms) (replace)
            x=250,
            y=525,
            width=250,
            height=157,

        },
        {
            -- [200 (44)] (imported)-Frame 3 (80ms) (replace)
            x=500,
            y=525,
            width=238,
            height=166,

        },
        {
            -- [200 (44)] (imported)-Frame 4 (80ms) (replace)
            x=218,
            y=691,
            width=227,
            height=175,

        },
        {
            -- [200 (44)] (imported)-Frame 5 (80ms) (replace)
            x=0,
            y=887,
            width=171,
            height=196,

        },
        {
            -- [200 (44)] (imported)-Frame 6 (80ms) (replace)
            x=171,
            y=887,
            width=162,
            height=198,

        },
        {
            -- [200 (44)] (imported)-Frame 7 (80ms) (replace)
            x=643,
            y=691,
            width=178,
            height=194,

        },
        {
            -- [200 (44)] (imported)-Frame 8 (80ms) (replace)
            x=0,
            y=387,
            width=254,
            height=138,

        },
        {
            -- [200 (44)] (imported)-Frame 9 (80ms) (replace)
            x=0,
            y=0,
            width=262,
            height=119,

        },
        {
            -- [200 (44)] (imported)-Frame 10 (80ms) (replace)
            x=500,
            y=0,
            width=238,
            height=122,

        },
        {
            -- [200 (44)] (imported)-Frame 11 (80ms) (replace)
            x=0,
            y=123,
            width=215,
            height=123,

        },
        {
            -- [200 (44)] (imported)-Frame 12 (80ms) (replace)
            x=653,
            y=253,
            width=175,
            height=132,

        },
        {
            -- [200 (44)] (imported)-Frame 13 (80ms) (replace)
            x=828,
            y=253,
            width=166,
            height=134,

        },
        {
            -- [200 (44)] (imported)-Frame 14 (80ms) (replace)
            x=798,
            y=123,
            width=208,
            height=130,

        },
        {
            -- [200 (44)] (imported)-Frame 15 (80ms) (replace)
            x=0,
            y=253,
            width=239,
            height=130,

        },
        {
            -- [200 (44)] (imported)-Frame 16 (80ms) (replace)
            x=508,
            y=387,
            width=257,
            height=138,

        },
        {
            -- [200 (44)] (imported)-Frame 17 (80ms) (replace)
            x=0,
            y=525,
            width=250,
            height=157,

        },
        {
            -- [200 (44)] (imported)-Frame 18 (80ms) (replace)
            x=738,
            y=525,
            width=238,
            height=166,

        },
        {
            -- [200 (44)] (imported)-Frame 19 (80ms) (replace)
            x=445,
            y=691,
            width=198,
            height=185,

        },
        {
            -- [200 (44)] (imported)-Frame 20 (80ms) (replace)
            x=821,
            y=691,
            width=171,
            height=196,

        },
        {
            -- [200 (44)] (imported)-Frame 21 (80ms) (replace)
            x=333,
            y=887,
            width=162,
            height=198,

        },
        {
            -- [200 (44)] (imported)-Frame 22 (80ms) (replace)
            x=0,
            y=691,
            width=218,
            height=172,

        },
        {
            -- [200 (44)] (imported)-Frame 23 (80ms) (replace)
            x=254,
            y=387,
            width=254,
            height=138,

        },
        {
            -- [200 (44)] (imported)-Frame 24 (80ms) (replace)
            x=262,
            y=0,
            width=238,
            height=122,

        },
        {
            -- [200 (44)] (imported)-Frame 25 (80ms) (replace)
            x=738,
            y=0,
            width=215,
            height=123,

        },
        {
            -- [200 (44)] (imported)-Frame 26 (80ms) (replace)
            x=215,
            y=123,
            width=197,
            height=124,

        },
        {
            -- [200 (44)] (imported)-Frame 27 (80ms) (replace)
            x=478,
            y=253,
            width=175,
            height=132,

        },
        {
            -- [200 (44)] (imported)-Frame 28 (80ms) (replace)
            x=412,
            y=123,
            width=178,
            height=129,

        },
        {
            -- [200 (44)] (imported)-Frame 29 (80ms) (replace)
            x=590,
            y=123,
            width=208,
            height=130,

        },
        {
            -- [200 (44)] (imported)-Frame 30 (80ms) (replace)
            x=239,
            y=253,
            width=239,
            height=130,

        },
    },
    
    sheetContentWidth = 1006,
    sheetContentHeight = 1087
}

SheetInfo.sequenceData = {
                name = "Pidgeotto", 
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
