--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:64ce7eb6bbf0577ad0f2eb360e522658:b16ab7051641fe0b98ce30cfbb1ec877:a0ef4f58acc0838cb1086a5acf4261e3$
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
            -- Monster 5-1
            x=2,
            y=2,
            width=182,
            height=182,

        },
        {
            -- Monster 5-2
            x=370,
            y=2,
            width=195,
            height=174,

        },
        {
            -- Monster 5-3
            x=186,
            y=2,
            width=182,
            height=182,

        },
        {
            -- Monster 5-4
            x=370,
            y=2,
            width=195,
            height=174,

        },
        {
            -- Monster 5-5
            x=2,
            y=2,
            width=182,
            height=182,

        },
    },

    sheetContentWidth = 567,
    sheetContentHeight = 186
}

SheetInfo.frameIndex =
{

    ["Monster 5-1"] = 1,
    ["Monster 5-2"] = 2,
    ["Monster 5-3"] = 3,
    ["Monster 5-4"] = 4,
    ["Monster 5-5"] = 5,
}

SheetInfo.sequences = {

    {name = "walking", start = 1, count = 5, time = 500},

}

function SheetInfo:getSequences()
    return self.sequences
end

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
