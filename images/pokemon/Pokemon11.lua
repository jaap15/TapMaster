-----------------------------------------------------------------------------------------
--
-- Pokemon11.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:dc7423414e66415419116144d11df6b1:9c18ebae892ae89fca3c66c911a40d99:72b940d3fd6633d5a8cd1a10ce28aa65$
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
            -- [200 (48)] (imported)-Background (70ms)
            x=368,
            y=984,
            width=502,
            height=200,

        },
        {
            -- [200 (48)] (imported)-Frame 2 (70ms) (replace)
            x=0,
            y=984,
            width=184,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 3 (70ms) (replace)
            x=184,
            y=984,
            width=184,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 4 (70ms) (replace)
            x=730,
            y=786,
            width=182,
            height=198,

        },
        {
            -- [200 (48)] (imported)-Frame 5 (70ms) (replace)
            x=550,
            y=786,
            width=180,
            height=198,

        },
        {
            -- [200 (48)] (imported)-Frame 6 (70ms) (replace)
            x=716,
            y=590,
            width=177,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 7 (70ms) (replace)
            x=187,
            y=786,
            width=179,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 8 (70ms) (replace)
            x=539,
            y=590,
            width=177,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 9 (70ms) (replace)
            x=689,
            y=396,
            width=174,
            height=194,

        },
        {
            -- [200 (48)] (imported)-Frame 10 (70ms) (replace)
            x=168,
            y=396,
            width=171,
            height=194,

        },
        {
            -- [200 (48)] (imported)-Frame 11 (70ms) (replace)
            x=0,
            y=590,
            width=177,
            height=191,

        },
        {
            -- [200 (48)] (imported)-Frame 12 (70ms) (replace)
            x=786,
            y=198,
            width=169,
            height=188,

        },
        {
            -- [200 (48)] (imported)-Frame 13 (70ms) (replace)
            x=462,
            y=198,
            width=165,
            height=186,

        },
        {
            -- [200 (48)] (imported)-Frame 14 (70ms) (replace)
            x=149,
            y=0,
            width=155,
            height=181,

        },
        {
            -- [200 (48)] (imported)-Frame 15 (70ms) (replace)
            x=0,
            y=0,
            width=149,
            height=186,

        },
        {
            -- [200 (48)] (imported)-Frame 16 (70ms) (replace)
            x=304,
            y=0,
            width=149,
            height=191,

        },
        {
            -- [200 (48)] (imported)-Frame 17 (70ms) (replace)
            x=453,
            y=0,
            width=149,
            height=194,

        },
        {
            -- [200 (48)] (imported)-Frame 18 (70ms) (replace)
            x=602,
            y=0,
            width=149,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 19 (70ms) (replace)
            x=751,
            y=0,
            width=152,
            height=198,

        },
        {
            -- [200 (48)] (imported)-Frame 20 (70ms) (replace)
            x=0,
            y=198,
            width=152,
            height=198,

        },
        {
            -- [200 (48)] (imported)-Frame 21 (70ms) (replace)
            x=152,
            y=198,
            width=154,
            height=198,

        },
        {
            -- [200 (48)] (imported)-Frame 22 (70ms) (replace)
            x=306,
            y=198,
            width=156,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 23 (70ms) (replace)
            x=627,
            y=198,
            width=159,
            height=196,

        },
        {
            -- [200 (48)] (imported)-Frame 24 (70ms) (replace)
            x=0,
            y=396,
            width=168,
            height=194,

        },
        {
            -- [200 (48)] (imported)-Frame 25 (70ms) (replace)
            x=339,
            y=396,
            width=171,
            height=194,

        },
        {
            -- [200 (48)] (imported)-Frame 26 (70ms) (replace)
            x=177,
            y=590,
            width=177,
            height=194,

        },
        {
            -- [200 (48)] (imported)-Frame 27 (70ms) (replace)
            x=510,
            y=396,
            width=179,
            height=188,

        },
        {
            -- [200 (48)] (imported)-Frame 28 (70ms) (replace)
            x=0,
            y=786,
            width=187,
            height=186,

        },
        {
            -- [200 (48)] (imported)-Frame 29 (70ms) (replace)
            x=354,
            y=590,
            width=185,
            height=186,

        },
        {
            -- [200 (48)] (imported)-Frame 30 (70ms) (replace)
            x=366,
            y=786,
            width=184,
            height=191,

        },
    },
    
    sheetContentWidth = 955,
    sheetContentHeight = 1184
}

SheetInfo.sequenceData = {
                name = "Magmar", 
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
