--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:f30eb905f57dab7ab2a1e1b5a56bb675:d1e0b8bf062662d02ff663a3fe1024c6:a0ef4f58acc0838cb1086a5acf4261e3$
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
            width=202,
            height=202,

        },
        {
            -- Monster 5-2
            x=410,
            y=2,
            width=217,
            height=194,

        },
        {
            -- Monster 5-3
            x=206,
            y=2,
            width=202,
            height=202,

        },
        {
            -- Monster 5-4
            x=410,
            y=2,
            width=217,
            height=194,

        },
        {
            -- Monster 5-5
            x=2,
            y=2,
            width=202,
            height=202,

        },
    },

    sheetContentWidth = 629,
    sheetContentHeight = 206
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
