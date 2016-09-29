-----------------------------------------------------------------------------------------
--
-- Pokemon6.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:4c54c28ecb7a08355a41edfd597fccf0:bf3a9bce1d23decb1a89348f1c70f28f:e2a8b17c959ffb89fcfc69741ffff86c$
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
            -- [200 (43)] (imported)-Background (80ms)
            x=295,
            y=928,
            width=502,
            height=200,

        },
        {
            -- [200 (43)] (imported)-Frame 2 (80ms) (replace)
            x=179,
            y=171,
            width=175,
            height=175,

        },
        {
            -- [200 (43)] (imported)-Frame 3 (80ms) (replace)
            x=289,
            y=349,
            width=165,
            height=184,

        },
        {
            -- [200 (43)] (imported)-Frame 4 (80ms) (replace)
            x=529,
            y=171,
            width=133,
            height=175,

        },
        {
            -- [200 (43)] (imported)-Frame 5 (80ms) (replace)
            x=194,
            y=0,
            width=120,
            height=165,

        },
        {
            -- [200 (43)] (imported)-Frame 6 (80ms) (replace)
            x=688,
            y=0,
            width=120,
            height=171,

        },
        {
            -- [200 (43)] (imported)-Frame 7 (80ms) (replace)
            x=0,
            y=349,
            width=120,
            height=178,

        },
        {
            -- [200 (43)] (imported)-Frame 8 (80ms) (replace)
            x=158,
            y=537,
            width=126,
            height=191,

        },
        {
            -- [200 (43)] (imported)-Frame 9 (80ms) (replace)
            x=0,
            y=728,
            width=126,
            height=194,

        },
        {
            -- [200 (43)] (imported)-Frame 10 (80ms) (replace)
            x=584,
            y=728,
            width=143,
            height=200,

        },
        {
            -- [200 (43)] (imported)-Frame 11 (80ms) (replace)
            x=431,
            y=728,
            width=153,
            height=200,

        },
        {
            -- [200 (43)] (imported)-Frame 12 (80ms) (replace)
            x=760,
            y=537,
            width=165,
            height=191,

        },
        {
            -- [200 (43)] (imported)-Frame 13 (80ms) (replace)
            x=454,
            y=349,
            width=165,
            height=187,

        },
        {
            -- [200 (43)] (imported)-Frame 14 (80ms) (replace)
            x=727,
            y=728,
            width=152,
            height=200,

        },
        {
            -- [200 (43)] (imported)-Frame 15 (80ms) (replace)
            x=595,
            y=537,
            width=165,
            height=191,

        },
        {
            -- [200 (43)] (imported)-Frame 16 (80ms) (replace)
            x=0,
            y=928,
            width=152,
            height=200,

        },
        {
            -- [200 (43)] (imported)-Frame 17 (80ms) (replace)
            x=619,
            y=349,
            width=165,
            height=188,

        },
        {
            -- [200 (43)] (imported)-Frame 18 (80ms) (replace)
            x=0,
            y=537,
            width=158,
            height=188,

        },
        {
            -- [200 (43)] (imported)-Frame 19 (80ms) (replace)
            x=275,
            y=728,
            width=156,
            height=197,

        },
        {
            -- [200 (43)] (imported)-Frame 20 (80ms) (replace)
            x=284,
            y=537,
            width=155,
            height=191,

        },
        {
            -- [200 (43)] (imported)-Frame 21 (80ms) (replace)
            x=152,
            y=928,
            width=143,
            height=200,

        },
        {
            -- [200 (43)] (imported)-Frame 22 (80ms) (replace)
            x=126,
            y=728,
            width=149,
            height=194,

        },
        {
            -- [200 (43)] (imported)-Frame 23 (80ms) (replace)
            x=439,
            y=537,
            width=156,
            height=191,

        },
        {
            -- [200 (43)] (imported)-Frame 24 (80ms) (replace)
            x=120,
            y=349,
            width=169,
            height=181,

        },
        {
            -- [200 (43)] (imported)-Frame 25 (80ms) (replace)
            x=0,
            y=171,
            width=179,
            height=175,

        },
        {
            -- [200 (43)] (imported)-Frame 26 (80ms) (replace)
            x=503,
            y=0,
            width=185,
            height=168,

        },
        {
            -- [200 (43)] (imported)-Frame 27 (80ms) (replace)
            x=0,
            y=0,
            width=194,
            height=155,

        },
        {
            -- [200 (43)] (imported)-Frame 28 (80ms) (replace)
            x=314,
            y=0,
            width=189,
            height=165,

        },
        {
            -- [200 (43)] (imported)-Frame 29 (80ms) (replace)
            x=354,
            y=171,
            width=175,
            height=175,

        },
        {
            -- [200 (43)] (imported)-Frame 30 (80ms) (replace)
            x=662,
            y=171,
            width=169,
            height=178,

        },
    },
    
    sheetContentWidth = 925,
    sheetContentHeight = 1128
}

SheetInfo.sequenceData = {
                name = "pichu", 
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
