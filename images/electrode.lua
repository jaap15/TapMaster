-----------------------------------------------------------------------------------------
--
-- electrode.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:a811120e90a88db93dbab4c35e616b32:5fc952839a8aef872ff96c3ab86c7efe:e1e0f9c5acc9a8ec25d46c34eb071ba9$
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
            -- [200 (50)] (imported)-Background (70ms)
            x=0,
            y=0,
            width=502,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 2 (70ms) (replace)
            x=502,
            y=0,
            width=197,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 3 (70ms) (replace)
            x=699,
            y=0,
            width=198,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 4 (70ms) (replace)
            x=0,
            y=200,
            width=198,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 5 (70ms) (replace)
            x=198,
            y=200,
            width=198,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 6 (70ms) (replace)
            x=396,
            y=200,
            width=195,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 7 (70ms) (replace)
            x=591,
            y=200,
            width=194,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 8 (70ms) (replace)
            x=785,
            y=200,
            width=195,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 9 (70ms) (replace)
            x=0,
            y=394,
            width=190,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 10 (70ms) (replace)
            x=190,
            y=394,
            width=192,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 11 (70ms) (replace)
            x=382,
            y=394,
            width=190,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 12 (70ms) (replace)
            x=572,
            y=394,
            width=191,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 13 (70ms) (replace)
            x=763,
            y=394,
            width=194,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 14 (70ms) (replace)
            x=0,
            y=588,
            width=194,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 15 (70ms) (replace)
            x=194,
            y=588,
            width=194,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 16 (70ms) (replace)
            x=388,
            y=588,
            width=194,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 17 (70ms) (replace)
            x=582,
            y=588,
            width=195,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 18 (70ms) (replace)
            x=777,
            y=588,
            width=198,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 19 (70ms) (replace)
            x=0,
            y=782,
            width=198,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 20 (70ms) (replace)
            x=198,
            y=782,
            width=198,
            height=194,

        },
        {
            -- [200 (50)] (imported)-Frame 21 (70ms) (replace)
            x=396,
            y=782,
            width=197,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 22 (70ms) (replace)
            x=593,
            y=782,
            width=197,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 23 (70ms) (replace)
            x=0,
            y=982,
            width=201,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 24 (70ms) (replace)
            x=201,
            y=982,
            width=198,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 25 (70ms) (replace)
            x=399,
            y=982,
            width=197,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 26 (70ms) (replace)
            x=596,
            y=982,
            width=198,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 27 (70ms) (replace)
            x=0,
            y=1182,
            width=198,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 28 (70ms) (replace)
            x=198,
            y=1182,
            width=197,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 29 (70ms) (replace)
            x=395,
            y=1182,
            width=202,
            height=200,

        },
        {
            -- [200 (50)] (imported)-Frame 30 (70ms) (replace)
            x=597,
            y=1182,
            width=201,
            height=200,

        },
    },
    
    sheetContentWidth = 980,
    sheetContentHeight = 1382
}

SheetInfo.sequenceData = {
                name = "Electrode", 
                start = 1, 
                count = 30, 
                time = 1000
        }

function SheetInfo:getSequence()
    return self.sequenceData;
end

function SheetInfo:getSheet()
    return self.sheet;
end

return SheetInfo
