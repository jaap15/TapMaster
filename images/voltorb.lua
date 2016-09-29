--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:26576a9813bf4175e59a4bb0fff4b6ee:3df4d3d42ffbf1f53010651fb0c8f62c:af7f495fc4ce9a254c14676776daea41$
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
            -- [200 (51)] (imported)-Background (70ms)
            x=410,
            y=1070,
            width=502,
            height=200,

        },
        {
            -- [200 (51)] (imported)-Frame 2 (70ms) (replace)
            x=0,
            y=1070,
            width=205,
            height=200,

        },
        {
            -- [200 (51)] (imported)-Frame 3 (70ms) (replace)
            x=205,
            y=1070,
            width=205,
            height=200,

        },
        {
            -- [200 (51)] (imported)-Frame 4 (70ms) (replace)
            x=607,
            y=870,
            width=205,
            height=200,

        },
        {
            -- [200 (51)] (imported)-Frame 5 (70ms) (combine)
            x=578,
            y=0,
            width=196,
            height=150,

        },
        {
            -- [200 (51)] (imported)-Frame 6 (70ms) (combine)
            x=382,
            y=0,
            width=196,
            height=149,

        },
        {
            -- [200 (51)] (imported)-Frame 7 (70ms) (replace)
            x=774,
            y=0,
            width=196,
            height=150,

        },
        {
            -- [200 (51)] (imported)-Frame 8 (70ms) (combine)
            x=0,
            y=0,
            width=191,
            height=145,

        },
        {
            -- [200 (51)] (imported)-Frame 9 (70ms) (replace)
            x=0,
            y=150,
            width=191,
            height=158,

        },
        {
            -- [200 (51)] (imported)-Frame 10 (70ms) (replace)
            x=191,
            y=150,
            width=196,
            height=158,

        },
        {
            -- [200 (51)] (imported)-Frame 11 (70ms) (replace)
            x=387,
            y=150,
            width=196,
            height=158,

        },
        {
            -- [200 (51)] (imported)-Frame 12 (70ms) (replace)
            x=603,
            y=678,
            width=192,
            height=192,

        },
        {
            -- [200 (51)] (imported)-Frame 13 (70ms) (combine)
            x=196,
            y=487,
            width=201,
            height=187,

        },
        {
            -- [200 (51)] (imported)-Frame 14 (70ms) (replace)
            x=397,
            y=487,
            width=201,
            height=187,

        },
        {
            -- [200 (51)] (imported)-Frame 15 (70ms) (replace)
            x=402,
            y=678,
            width=201,
            height=192,

        },
        {
            -- [200 (51)] (imported)-Frame 16 (70ms) (replace)
            x=0,
            y=678,
            width=201,
            height=192,

        },
        {
            -- [200 (51)] (imported)-Frame 17 (70ms) (replace)
            x=201,
            y=678,
            width=201,
            height=192,

        },
        {
            -- [200 (51)] (imported)-Frame 18 (70ms) (combine)
            x=410,
            y=309,
            width=205,
            height=173,

        },
        {
            -- [200 (51)] (imported)-Frame 19 (70ms) (replace)
            x=205,
            y=309,
            width=205,
            height=173,

        },
        {
            -- [200 (51)] (imported)-Frame 20 (70ms) (combine)
            x=583,
            y=150,
            width=196,
            height=159,

        },
        {
            -- [200 (51)] (imported)-Frame 21 (70ms) (replace)
            x=790,
            y=487,
            width=196,
            height=191,

        },
        {
            -- [200 (51)] (imported)-Frame 22 (70ms) (combine)
            x=191,
            y=0,
            width=191,
            height=148,

        },
        {
            -- [200 (51)] (imported)-Frame 23 (70ms) (combine)
            x=598,
            y=487,
            width=192,
            height=191,

        },
        {
            -- [200 (51)] (imported)-Frame 24 (70ms) (combine)
            x=779,
            y=150,
            width=196,
            height=159,

        },
        {
            -- [200 (51)] (imported)-Frame 25 (70ms) (replace)
            x=0,
            y=309,
            width=205,
            height=173,

        },
        {
            -- [200 (51)] (imported)-Frame 26 (70ms) (replace)
            x=201,
            y=870,
            width=205,
            height=192,

        },
        {
            -- [200 (51)] (imported)-Frame 27 (70ms) (replace)
            x=0,
            y=870,
            width=201,
            height=192,

        },
        {
            -- [200 (51)] (imported)-Frame 28 (70ms) (replace)
            x=406,
            y=870,
            width=201,
            height=192,

        },
        {
            -- [200 (51)] (imported)-Frame 29 (70ms) (combine)
            x=615,
            y=309,
            width=192,
            height=178,

        },
        {
            -- [200 (51)] (imported)-Frame 30 (70ms) (replace)
            x=0,
            y=487,
            width=196,
            height=178,

        },
    },
    
    sheetContentWidth = 986,
    sheetContentHeight = 1270
}

SheetInfo.sequenceData = {
                name = "Voltorb", 
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
