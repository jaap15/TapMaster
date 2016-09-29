--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:e1a93425284ca2e1ab580e2f62040f63:5de126cdfeda474339690c0e602acd25:60bcd2a008adbfb4a8b41ea7f3af9aa6$
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
            -- [200 (35)] (imported)-Background (80ms)
            x=0,
            y=0,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 2 (80ms) (replace)
            x=500,
            y=0,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 3 (80ms) (replace)
            x=1000,
            y=0,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 4 (80ms) (replace)
            x=1500,
            y=0,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 5 (80ms) (replace)
            x=0,
            y=200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 6 (80ms) (replace)
            x=500,
            y=200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 7 (80ms) (replace)
            x=1000,
            y=200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 8 (80ms) (replace)
            x=1500,
            y=200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 9 (80ms) (replace)
            x=0,
            y=400,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 10 (80ms) (replace)
            x=500,
            y=400,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 11 (80ms) (replace)
            x=1000,
            y=400,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 12 (80ms) (replace)
            x=1500,
            y=400,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 13 (80ms) (replace)
            x=0,
            y=600,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 14 (80ms) (replace)
            x=500,
            y=600,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 15 (80ms) (replace)
            x=1000,
            y=600,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 16 (80ms) (replace)
            x=1500,
            y=600,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 17 (80ms) (replace)
            x=0,
            y=800,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 18 (80ms) (replace)
            x=500,
            y=800,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 19 (80ms) (replace)
            x=1000,
            y=800,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 20 (80ms) (replace)
            x=1500,
            y=800,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 21 (80ms) (replace)
            x=0,
            y=1000,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 22 (80ms) (replace)
            x=500,
            y=1000,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 23 (80ms) (replace)
            x=1000,
            y=1000,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 24 (80ms) (replace)
            x=1500,
            y=1000,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 25 (80ms) (replace)
            x=0,
            y=1200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 26 (80ms) (replace)
            x=500,
            y=1200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 27 (80ms) (replace)
            x=1000,
            y=1200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 28 (80ms) (replace)
            x=1500,
            y=1200,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 29 (80ms) (replace)
            x=0,
            y=1400,
            width=500,
            height=200,

        },
        {
            -- [200 (35)] (imported)-Frame 30 (80ms) (replace)
            x=500,
            y=1400,
            width=500,
            height=200,

        },
    },
    
    sheetContentWidth = 2000,
    sheetContentHeight = 1600
}

SheetInfo.sequenceData = {
                name = "scizor", 
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
