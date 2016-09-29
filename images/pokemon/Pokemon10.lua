--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:7b61c73786fe03dc3aa9ada54ba50a80:9ceeca9c3013a402ff0d116099e79e7e:0fef3c506b01fefe06ea263a5dde063e$
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
            -- [200 (53)] (imported)-Background (100ms)
            x=0,
            y=0,
            width=502,
            height=200,

        },
        {
            -- [200 (53)] (imported)-Frame 2 (100ms) (replace)
            x=502,
            y=0,
            width=197,
            height=185,

        },
        {
            -- [200 (53)] (imported)-Frame 3 (100ms) (replace)
            x=699,
            y=0,
            width=204,
            height=185,

        },
        {
            -- [200 (53)] (imported)-Frame 4 (100ms) (replace)
            x=0,
            y=200,
            width=196,
            height=185,

        },
        {
            -- [200 (53)] (imported)-Frame 5 (100ms) (replace)
            x=196,
            y=200,
            width=189,
            height=185,

        },
        {
            -- [200 (53)] (imported)-Frame 6 (100ms) (replace)
            x=385,
            y=200,
            width=178,
            height=182,

        },
        {
            -- [200 (53)] (imported)-Frame 7 (100ms) (replace)
            x=563,
            y=200,
            width=185,
            height=187,

        },
        {
            -- [200 (53)] (imported)-Frame 8 (100ms) (replace)
            x=0,
            y=387,
            width=197,
            height=192,

        },
        {
            -- [200 (53)] (imported)-Frame 9 (100ms) (replace)
            x=197,
            y=387,
            width=210,
            height=194,

        },
        {
            -- [200 (53)] (imported)-Frame 10 (100ms) (replace)
            x=407,
            y=387,
            width=201,
            height=196,

        },
        {
            -- [200 (53)] (imported)-Frame 11 (100ms) (replace)
            x=608,
            y=387,
            width=234,
            height=196,

        },
        {
            -- [200 (53)] (imported)-Frame 12 (100ms) (replace)
            x=0,
            y=583,
            width=206,
            height=192,

        },
        {
            -- [200 (53)] (imported)-Frame 13 (100ms) (replace)
            x=206,
            y=583,
            width=209,
            height=182,

        },
        {
            -- [200 (53)] (imported)-Frame 14 (100ms) (replace)
            x=415,
            y=583,
            width=233,
            height=182,

        },
        {
            -- [200 (53)] (imported)-Frame 15 (100ms) (replace)
            x=648,
            y=583,
            width=249,
            height=187,

        },
        {
            -- [200 (53)] (imported)-Frame 16 (100ms) (replace)
            x=0,
            y=775,
            width=250,
            height=189,

        },
        {
            -- [200 (53)] (imported)-Frame 17 (100ms) (replace)
            x=250,
            y=775,
            width=247,
            height=192,

        },
        {
            -- [200 (53)] (imported)-Frame 18 (100ms) (replace)
            x=497,
            y=775,
            width=237,
            height=192,

        },
        {
            -- [200 (53)] (imported)-Frame 19 (100ms) (replace)
            x=0,
            y=967,
            width=228,
            height=192,

        },
        {
            -- [200 (53)] (imported)-Frame 20 (100ms) (replace)
            x=228,
            y=967,
            width=224,
            height=192,

        },
        {
            -- [200 (53)] (imported)-Frame 21 (100ms) (replace)
            x=452,
            y=967,
            width=224,
            height=196,

        },
        {
            -- [200 (53)] (imported)-Frame 22 (100ms) (replace)
            x=676,
            y=967,
            width=224,
            height=194,

        },
        {
            -- [200 (53)] (imported)-Frame 23 (100ms) (replace)
            x=0,
            y=1163,
            width=220,
            height=194,

        },
        {
            -- [200 (53)] (imported)-Frame 24 (100ms) (replace)
            x=220,
            y=1163,
            width=230,
            height=194,

        },
        {
            -- [200 (53)] (imported)-Frame 25 (100ms) (replace)
            x=450,
            y=1163,
            width=230,
            height=192,

        },
        {
            -- [200 (53)] (imported)-Frame 26 (100ms) (replace)
            x=680,
            y=1163,
            width=226,
            height=187,

        },
        {
            -- [200 (53)] (imported)-Frame 27 (100ms) (replace)
            x=0,
            y=1357,
            width=207,
            height=185,

        },
        {
            -- [200 (53)] (imported)-Frame 28 (100ms) (replace)
            x=207,
            y=1357,
            width=190,
            height=185,

        },
        {
            -- [200 (53)] (imported)-Frame 29 (100ms) (replace)
            x=397,
            y=1357,
            width=183,
            height=185,

        },
        {
            -- [200 (53)] (imported)-Frame 30 (100ms) (replace)
            x=580,
            y=1357,
            width=182,
            height=185,

        },
    },
    
    sheetContentWidth = 906,
    sheetContentHeight = 1542
}

SheetInfo.sequenceData = {
                name = "Kadabra", 
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
