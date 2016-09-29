-----------------------------------------------------------------------------------------
--
-- Pokemon8.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- This file was generated using the TexturePacker software when creating the sprite sheet 
-----------------------------------------------------------------------------------------
--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:2a5fafb7becf22bd81f568ec1fb0955c:b808daca1572f5f1799def64737fcc98:050cbb8625e69aa966fb6759b52f0a7c$
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
            -- [200 (45)] (imported)-Background (100ms)
            x=0,
            y=1415,
            width=502,
            height=200,

        },
        {
            -- [200 (45)] (imported)-Frame 2 (100ms) (replace)
            x=0,
            y=296,
            width=102,
            height=171,

        },
        {
            -- [200 (45)] (imported)-Frame 3 (100ms) (replace)
            x=312,
            y=139,
            width=107,
            height=157,

        },
        {
            -- [200 (45)] (imported)-Frame 4 (100ms) (replace)
            x=0,
            y=0,
            width=118,
            height=115,

        },
        {
            -- [200 (45)] (imported)-Frame 5 (100ms) (replace)
            x=350,
            y=0,
            width=130,
            height=110,

        },
        {
            -- [200 (45)] (imported)-Frame 6 (100ms) (replace)
            x=118,
            y=0,
            width=130,
            height=109,

        },
        {
            -- [200 (45)] (imported)-Frame 7 (100ms) (replace)
            x=336,
            y=467,
            width=127,
            height=146,

        },
        {
            -- [200 (45)] (imported)-Frame 8 (100ms) (replace)
            x=0,
            y=823,
            width=156,
            height=165,

        },
        {
            -- [200 (45)] (imported)-Frame 9 (100ms) (replace)
            x=0,
            y=1015,
            width=161,
            height=177,

        },
        {
            -- [200 (45)] (imported)-Frame 10 (100ms) (replace)
            x=0,
            y=1215,
            width=163,
            height=191,

        },
        {
            -- [200 (45)] (imported)-Frame 11 (100ms) (replace)
            x=163,
            y=1215,
            width=165,
            height=200,

        },
        {
            -- [200 (45)] (imported)-Frame 12 (100ms) (replace)
            x=328,
            y=1215,
            width=170,
            height=200,

        },
        {
            -- [200 (45)] (imported)-Frame 13 (100ms) (replace)
            x=161,
            y=1015,
            width=144,
            height=200,

        },
        {
            -- [200 (45)] (imported)-Frame 14 (100ms) (replace)
            x=305,
            y=1015,
            width=152,
            height=197,

        },
        {
            -- [200 (45)] (imported)-Frame 15 (100ms) (replace)
            x=300,
            y=823,
            width=138,
            height=192,

        },
        {
            -- [200 (45)] (imported)-Frame 16 (100ms) (replace)
            x=245,
            y=639,
            width=117,
            height=184,

        },
        {
            -- [200 (45)] (imported)-Frame 17 (100ms) (replace)
            x=113,
            y=639,
            width=132,
            height=162,

        },
        {
            -- [200 (45)] (imported)-Frame 18 (100ms) (replace)
            x=156,
            y=823,
            width=144,
            height=179,

        },
        {
            -- [200 (45)] (imported)-Frame 19 (100ms) (replace)
            x=362,
            y=639,
            width=133,
            height=179,

        },
        {
            -- [200 (45)] (imported)-Frame 20 (100ms) (replace)
            x=216,
            y=467,
            width=120,
            height=154,

        },
        {
            -- [200 (45)] (imported)-Frame 21 (100ms) (replace)
            x=204,
            y=139,
            width=108,
            height=144,

        },
        {
            -- [200 (45)] (imported)-Frame 22 (100ms) (replace)
            x=0,
            y=139,
            width=103,
            height=139,

        },
        {
            -- [200 (45)] (imported)-Frame 23 (100ms) (replace)
            x=248,
            y=0,
            width=102,
            height=139,

        },
        {
            -- [200 (45)] (imported)-Frame 24 (100ms) (replace)
            x=103,
            y=139,
            width=101,
            height=152,

        },
        {
            -- [200 (45)] (imported)-Frame 25 (100ms) (replace)
            x=0,
            y=639,
            width=113,
            height=166,

        },
        {
            -- [200 (45)] (imported)-Frame 26 (100ms) (replace)
            x=105,
            y=467,
            width=111,
            height=164,

        },
        {
            -- [200 (45)] (imported)-Frame 27 (100ms) (replace)
            x=207,
            y=296,
            width=108,
            height=166,

        },
        {
            -- [200 (45)] (imported)-Frame 28 (100ms) (replace)
            x=102,
            y=296,
            width=105,
            height=169,

        },
        {
            -- [200 (45)] (imported)-Frame 29 (100ms) (replace)
            x=0,
            y=467,
            width=105,
            height=172,

        },
        {
            -- [200 (45)] (imported)-Frame 30 (100ms) (replace)
            x=315,
            y=296,
            width=105,
            height=171,

        },
    },
    
    sheetContentWidth = 502,
    sheetContentHeight = 1615
}

SheetInfo.sequenceData = {
                name = "Flareon", 
                start = 2, 
                count = 29, 
                time = 4000
        }

function SheetInfo:getSequence()
    return self.sequenceData;
end

function SheetInfo:getSheet()
    return self.sheet;
end

return SheetInfo
