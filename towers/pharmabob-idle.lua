--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:ba88f5b095614d21472ea80295621488:6ad0d23be2a084aaba80236533ef0729:1eb7344eacf61fabc98b475a3ec70682$
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
            -- 1
            x=2,
            y=1187,
            width=467,
            height=561,

        },
        {
            -- 2
            x=459,
            y=604,
            width=467,
            height=540,

        },
        {
            -- 3
            x=461,
            y=2,
            width=463,
            height=563,

        },
        {
            -- 4
            x=471,
            y=1146,
            width=455,
            height=578,

        },
        {
            -- 5
            x=2,
            y=2,
            width=457,
            height=600,

        },
        {
            -- 6
            x=2,
            y=604,
            width=455,
            height=581,

        },
    },

    sheetContentWidth = 928,
    sheetContentHeight = 1750
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
