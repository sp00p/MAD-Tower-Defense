--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:c9a7ab07de4cc79f5df1a91c5c48ed13:d895497b11909dc7b5a02cb747a62347:4498a22a12e77edd2819f3c3ece84104$
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
            width=202,
            height=218,

        },
        {
            -- Monster 1-2
            x=206,
            y=2,
            width=202,
            height=218,

        },
        {
            -- Monster 1-3
            x=410,
            y=2,
            width=202,
            height=218,

        },
        {
            -- Monster 1-4
            x=206,
            y=2,
            width=202,
            height=218,

        },
        {
            -- Monster 1-5
            x=2,
            y=2,
            width=202,
            height=218,

        },
    },

    sheetContentWidth = 614,
    sheetContentHeight = 222
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
