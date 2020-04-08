--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:5dcceda1839a0e31330062aa50f03a32:149f7fed22a558cd7e7c5ee61a6ed378:c387cf20f1a7664df7fc5f8b10a859ed$
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
            width=806,
            height=744,

        },
        {
            -- Monster 4-2
            x=2,
            y=2240,
            width=744,
            height=806,

        },
        {
            -- Monster 4-3
            x=2,
            y=748,
            width=806,
            height=744,

        },
        {
            -- Monster 4-4
            x=2,
            y=3048,
            width=744,
            height=806,

        },
        {
            -- Monster 4-5
            x=2,
            y=1494,
            width=806,
            height=744,

        },
    },

    sheetContentWidth = 810,
    sheetContentHeight = 3856
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
