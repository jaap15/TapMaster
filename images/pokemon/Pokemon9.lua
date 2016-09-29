-----------------------------------------------------------------------------------------
--
-- Pokemon9.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:d4683625aeb8b0c0088b5076251270c2:4f1ab3fbeadb82852fcae6a990b272a0:cd7309e7760aaf55bdf556ace9c45ae4$
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
            -- [200 (57)] (imported)-Background (70ms)
            x=0,
            y=1378,
            width=502,
            height=200,

        },
        {
            -- [200 (57)] (imported)-Frame 2 (70ms) (replace)
            x=146,
            y=520,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 3 (70ms) (replace)
            x=292,
            y=312,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 4 (70ms) (replace)
            x=146,
            y=312,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 5 (70ms) (replace)
            x=0,
            y=416,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 6 (70ms) (replace)
            x=0,
            y=312,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 7 (70ms) (replace)
            x=146,
            y=208,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 8 (70ms) (replace)
            x=0,
            y=208,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 9 (70ms) (replace)
            x=0,
            y=520,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 10 (70ms) (replace)
            x=292,
            y=520,
            width=174,
            height=129,

        },
        {
            -- [200 (57)] (imported)-Frame 11 (70ms) (replace)
            x=182,
            y=784,
            width=185,
            height=137,

        },
        {
            -- [200 (57)] (imported)-Frame 12 (70ms) (replace)
            x=0,
            y=784,
            width=182,
            height=135,

        },
        {
            -- [200 (57)] (imported)-Frame 13 (70ms) (replace)
            x=0,
            y=1068,
            width=197,
            height=147,

        },
        {
            -- [200 (57)] (imported)-Frame 14 (70ms) (replace)
            x=197,
            y=1068,
            width=202,
            height=149,

        },
        {
            -- [200 (57)] (imported)-Frame 15 (130ms) (replace)
            x=202,
            y=1217,
            width=206,
            height=161,

        },
        {
            -- [200 (57)] (imported)-Frame 16 (70ms) (replace)
            x=0,
            y=1217,
            width=202,
            height=149,

        },
        {
            -- [200 (57)] (imported)-Frame 17 (70ms) (replace)
            x=185,
            y=921,
            width=197,
            height=147,

        },
        {
            -- [200 (57)] (imported)-Frame 18 (70ms) (replace)
            x=174,
            y=649,
            width=182,
            height=135,

        },
        {
            -- [200 (57)] (imported)-Frame 19 (70ms) (replace)
            x=0,
            y=921,
            width=185,
            height=137,

        },
        {
            -- [200 (57)] (imported)-Frame 20 (70ms) (replace)
            x=0,
            y=649,
            width=174,
            height=129,

        },
        {
            -- [200 (57)] (imported)-Frame 21 (70ms) (replace)
            x=292,
            y=416,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 22 (70ms) (replace)
            x=146,
            y=416,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 23 (70ms) (replace)
            x=292,
            y=208,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 24 (70ms) (replace)
            x=146,
            y=104,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 25 (70ms) (replace)
            x=292,
            y=104,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 26 (70ms) (replace)
            x=0,
            y=104,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 27 (70ms) (replace)
            x=145,
            y=0,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 28 (70ms) (replace)
            x=291,
            y=0,
            width=146,
            height=104,

        },
        {
            -- [200 (57)] (imported)-Frame 29 (70ms) (replace)
            x=0,
            y=0,
            width=145,
            height=104,

        },
    },
    
    sheetContentWidth = 502,
    sheetContentHeight = 1578
}

SheetInfo.sequenceData = {
                name = "Weezing", 
                start = 2, 
                count = 28, 
                time = 2000
        }

function SheetInfo:getSequence()
    return self.sequenceData;
end

function SheetInfo:getSheet()
    return self.sheet;
end

return SheetInfo
