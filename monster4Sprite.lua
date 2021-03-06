--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:efd83314be10154de3fdca346b3bbf5d:36f916e4c027ef8a251ed971a5324ef2:c387cf20f1a7664df7fc5f8b10a859ed$
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
            width=182,
            height=168,

        },
        {
            -- Monster 4-2
            x=2,
            y=512,
            width=167,
            height=181,

        },
        {
            -- Monster 4-3
            x=2,
            y=172,
            width=182,
            height=168,

        },
        {
            -- Monster 4-4
            x=2,
            y=695,
            width=167,
            height=181,

        },
        {
            -- Monster 4-5
            x=2,
            y=342,
            width=182,
            height=168,

        },
    },

    sheetContentWidth = 186,
    sheetContentHeight = 878
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

    {name = "explode", start = 1, count = 4, time = 500},

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
