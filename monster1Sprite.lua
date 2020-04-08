--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:759fc6195a63bc838712482a3f104230:24092357b56927480a89a8e4be178441:4498a22a12e77edd2819f3c3ece84104$
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
            -- Monster 1-1
            x=2,
            y=2,
            width=806,
            height=868,

        },
        {
            -- Monster 1-2
            x=2,
            y=872,
            width=806,
            height=868,

        },
        {
            -- Monster 1-3
            x=810,
            y=2,
            width=806,
            height=868,

        },
        {
            -- Monster 1-4
            x=2,
            y=872,
            width=806,
            height=868,

        },
        {
            -- Monster 1-5
            x=2,
            y=2,
            width=806,
            height=868,

        },
    },

    sheetContentWidth = 1618,
    sheetContentHeight = 1742
}

SheetInfo.frameIndex =
{

    ["Monster 1-1"] = 1,
    ["Monster 1-2"] = 2,
    ["Monster 1-3"] = 3,
    ["Monster 1-4"] = 4,
    ["Monster 1-5"] = 5,
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
