--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:66f909530d86d3043aa874f27fa131c1:6db24f12da7de82b2b09ee03c5497cc7:967a72b4ec5a6c0b10aae2bfe9217f7f$
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
            -- [200 (27)] (imported)-Background (80ms)
            x=1,
            y=1,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 2 (80ms) (replace)
            x=494,
            y=1,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 3 (80ms) (replace)
            x=987,
            y=1,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 4 (80ms) (replace)
            x=1480,
            y=1,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 5 (80ms) (replace)
            x=1,
            y=203,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 6 (80ms) (replace)
            x=494,
            y=203,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 7 (80ms) (replace)
            x=987,
            y=203,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 8 (80ms) (replace)
            x=1480,
            y=203,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 9 (80ms) (replace)
            x=1,
            y=405,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 10 (80ms) (replace)
            x=494,
            y=405,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 11 (80ms) (replace)
            x=987,
            y=405,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 12 (80ms) (replace)
            x=1480,
            y=405,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 13 (80ms) (replace)
            x=1,
            y=607,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 14 (80ms) (replace)
            x=494,
            y=607,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 15 (80ms) (replace)
            x=987,
            y=607,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 16 (80ms) (replace)
            x=1480,
            y=607,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 17 (80ms) (replace)
            x=1,
            y=809,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 18 (80ms) (replace)
            x=494,
            y=809,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 19 (80ms) (replace)
            x=987,
            y=809,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 20 (80ms) (replace)
            x=1480,
            y=809,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 21 (80ms) (replace)
            x=1,
            y=1011,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 22 (80ms) (replace)
            x=494,
            y=1011,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 23 (80ms) (replace)
            x=987,
            y=1011,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 24 (80ms) (replace)
            x=1480,
            y=1011,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 25 (80ms) (replace)
            x=1,
            y=1213,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 26 (80ms) (replace)
            x=494,
            y=1213,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 27 (80ms) (replace)
            x=987,
            y=1213,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 28 (80ms) (replace)
            x=1480,
            y=1213,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 29 (80ms) (replace)
            x=1,
            y=1415,
            width=491,
            height=200,

        },
        {
            -- [200 (27)] (imported)-Frame 30 (80ms) (replace)
            x=494,
            y=1415,
            width=491,
            height=200,

        },
    },
    
    sheetContentWidth = 1972,
    sheetContentHeight = 1616
}

SheetInfo.sequenceData = {
                name = "pikachu", 
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
