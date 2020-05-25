--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:91be563533cfed5d53a126865657bb9f:f2c1670828c0a78bde34ca617b2e6543:c387cf20f1a7664df7fc5f8b10a859ed$
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
            -- Monster 4-1
            x=2,
            y=2,
            width=202,
            height=186,

        },
        {
            -- Monster 4-2
            x=2,
            y=566,
            width=186,
            height=202,

        },
        {
            -- Monster 4-3
            x=2,
            y=190,
            width=202,
            height=186,

        },
        {
            -- Monster 4-4
            x=2,
            y=770,
            width=186,
            height=202,

        },
        {
            -- Monster 4-5
            x=2,
            y=378,
            width=202,
            height=186,

        },
    },

    sheetContentWidth = 206,
    sheetContentHeight = 974
}

SheetInfo.frameIndex =
{

    ["Monster 4-1"] = 1,
    ["Monster 4-2"] = 2,
    ["Monster 4-3"] = 3,
    ["Monster 4-4"] = 4,
    ["Monster 4-5"] = 5,
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
